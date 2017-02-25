HMPDJ0 ;SLC/MKB,ASMR/JD,PB,CPC -- Serve VistA data as JSON cont ; 07/13/16 04:45pm
 ;;2.0;ENTERPRISE HEALTH MANAGEMENT PLATFORM;**2**;Sep 01, 2011;Build 28
 ;Per VA Directive 6402, this routine should not be modified.
 ;
 ; External References          DBIA#
 ; -------------------          -----
 ; ^DPT                         10035  <see HMPDJ0* for others>
 ; EN^ORQ1                      3154
 ; SDAMA301                     4433
 ;
 ; All tags expect DFN, HMPSTART, HMPSTOP, HMPMAX, HMPID, HMPTEXT
 Q
 ;
PATIENT ; -- Patient Registration
 D DPT1^HMPDJ00
 Q
 ;
PROBLEM ; -- Problem List
 I $G(HMPID) D GMPL1^HMPDJ02(HMPID) Q
 N ID,HMPSTS,HMPPROB,HMPN,X,POVLST
 S HMPSTS=$G(FILTER("status")) ;default = all problems
 D LIST^GMPLUTL2(.HMPPROB,DFN,HMPSTS)
 D DIAGLIST^HMPDJ02(.POVLST,DFN)
 S HMPN=0 F  S HMPN=$O(HMPPROB(HMPN)) Q:(HMPN<1)!(HMPI'<HMPMAX)  D
 . S X=$P(HMPPROB(HMPN),U,6) I X,(X<HMPSTART)!(X>HMPSTOP) Q  ;last updated
 . S ID=+HMPPROB(HMPN) D GMPL1^HMPDJ02(ID,.POVLST)
 Q
 ;
ALLERGY ; -- Allergies/Adverse Reactions
 N GMRAL,ID D EN1^GMRADPT
 ; This IF statement was disabled to prevent getting "deletes" in the
 ; JSON during a fetch if ALL allergies for a given patient have been marked
 ; as "entered in error". US6021
 ;I 'GMRAL Q  ;D NKA^HMPDJ02 Q
 I $G(HMPID) D GMRA1^HMPDJ02(HMPID) Q
 S ID=0 F  S ID=+$O(GMRAL(ID)) Q:ID<1  D GMRA1^HMPDJ02(ID) Q:HMPI'<HMPMAX
 Q
 ;
CONSULT ; -- Consult/Request Tracking
 N HMPN,HMPX,ID
 D OER^GMRCSLM1(DFN,"",HMPSTART,HMPSTOP,"")
 S HMPN=0 F  S HMPN=$O(^TMP("GMRCR",$J,"CS",HMPN)) Q:HMPN<1!(HMPN>HMPMAX)  S HMPX=$G(^(HMPN,0)) Q:$E(HMPX)="<"  D
 . I $G(HMPID),HMPID'=+HMPX Q
 . D GMRC1^HMPDJ03(+HMPX)
 K ^TMP("GMRCR",$J,"CS")
 Q
 ;
VITAL ; -- GMR Vital Measurements
 I $L($G(HMPID)) D GMV1^HMPDJ02(HMPID) Q
 N GMRVSTR,HMPIDT,HMPTYP,ID
 S GMRVSTR="BP;T;R;P;HT;WT;CVP;CG;PO2;PN"
 S GMRVSTR(0)=HMPSTART_U_HMPSTOP_U_HMPMAX_"^1"
 D EN1^GMRVUT0
 S HMPIDT=0 F  S HMPIDT=$O(^UTILITY($J,"GMRVD",HMPIDT)) Q:HMPIDT<1  D  Q:HMPI'<HMPMAX
 . S HMPTYP="" F  S HMPTYP=$O(^UTILITY($J,"GMRVD",HMPIDT,HMPTYP)) Q:HMPTYP=""  D
 .. S ID=$O(^UTILITY($J,"GMRVD",HMPIDT,HMPTYP,0)) D GMV1^HMPDJ02(ID)
 K ^UTILITY($J,"GMRVD")
 Q
 ;
LAB ; -- Lab Results
 N LRDFN,LRID,HMPSUB,HMPIDT,HMPN,HMPP,HMPACC,BEG,END,SUB,ORPK,ID,X
 S LRDFN=$$LRDFN^HMPXGLAB(DFN),HMPSUB=$G(FILTER("category"))  ;DE2818, (#63) LABORATORY REFERENCE
 S BEG=HMPSTART,END=HMPSTOP,LRID=$G(HMPID),ORPK=""
 I $L(LRID) D  ;reset for LR7OR1
 . I LRID S ORPK=LRID,LRID=$P(LRID,";",4,99) Q:LRID=""  ;order
 . S HMPSUB=$P(LRID,";"),HMPIDT=+$P(LRID,";",2)
 . S:HMPIDT (BEG,END)=9999999-HMPIDT
 S SUB=HMPSUB I $L(SUB),"CH^MI"'[SUB S SUB="AP"
 D RR^LR7OR1(DFN,ORPK,BEG,END,SUB,,,HMPMAX)  ; ICR 2503, DE2818
 S HMPSUB="" F  S HMPSUB=$O(^TMP("LRRR",$J,DFN,HMPSUB)) Q:HMPSUB=""  D
 . S HMPIDT=0 F  S HMPIDT=$O(^TMP("LRRR",$J,DFN,HMPSUB,HMPIDT)) Q:HMPIDT<1  I $O(^(HMPIDT,0)) D  Q:HMPI'<HMPMAX
 .. I HMPSUB="MI"  S ID=HMPSUB_";"_HMPIDT D MI^HMPDJ06 Q
 .. I HMPSUB'="CH" S ID=HMPSUB_";"_HMPIDT D AP^HMPDJ06 Q
 .. D ACC^HMPDJ06 ;get chem accession data
 .. S HMPP=0 F  S HMPP=$O(^TMP("LRRR",$J,DFN,HMPSUB,HMPIDT,HMPP)) Q:HMPP<1  S X=+$G(^(HMPP)) D
 ... S HMPN=$$LRDN^LRPXAPIU(X) I $L(LRID,";")>2,HMPN'=$P(LRID,";",3) Q
 ... S ID=HMPSUB_";"_HMPIDT_";"_HMPN D CH1^HMPDJ06
 K ^TMP("LRRR",$J),^TMP("LRX",$J)
 Q
 ;
PROCEDUR ; -- Clinical Procedures
 N HMPN,HMPX,BEG,END,ID
 S BEG=HMPSTART,END=HMPSTOP
 I $G(HMPID) D  ;reset dates for HMPID only
 . N HMPMC,IEN,FILE,X
 . S IEN=+HMPID,FILE=+$P(HMPID,"(",2)  Q:FILE=702  Q:'FILE
 . D MEDLKUP^MCARUTL3(.HMPMC,FILE,IEN)
 . S X=$P(HMPMC,U,6) S:X (BEG,END)=X
 D MDPS1^HMPDJ03(DFN,BEG,END,HMPMAX)    ;gets ^TMP("MDHSP",$J)
 S HMPN=0 F  S HMPN=$O(^TMP("MDHSP",$J,HMPN)) Q:HMPN<1  S HMPX=$G(^(HMPN)) D
 . I $G(HMPID),+HMPID'=+$P(HMPX,U,2) Q  ;update 1 procedure
 . D MC1^HMPDJ03($G(HMPID))             ;uses HMPX
 K ^TMP("MDHSP",$J)
 Q
 ;
OBS ; -- Clinical Observations (CLiO)
 N HMPCLIO,HMPN,ID,X
 I $L($G(HMPID)) D MDC1^HMPDJ03(HMPID) Q
 D QRYPT^HMPDMDC("HMPCLIO",DFN,HMPSTART,HMPSTOP) ;all [verified] observations
 S HMPN=0 F  S HMPN=$O(HMPCLIO(HMPN)) Q:(HMPN<1)!(HMPI'<HMPMAX)  D
 . S ID=$G(HMPCLIO(HMPN)) ;GUID
 . D MDC1^HMPDJ03(ID)
 Q
 ;
ORDER ; -- Order Entry
 N DAD,HMPN,HMPORDR,ID,ORLIST,X  ; DE2818, added HMPORDR, removed X3,X4
 I $G(HMPID) S ORLIST=$H D OR1^HMPDJ01(HMPID) G ORQ
 ; changed FLG to 1 to get all orders including pending.  JD - 1/20/16 - US11951
 D EN^ORQ1(DFN_";DPT(",,1,,HMPSTART,HMPSTOP,,,,1) ; DBIA 3154
 S HMPN=0 F  S HMPN=$O(^TMP("ORR",$J,ORLIST,HMPN)) Q:HMPN<1  S ID=$G(^(HMPN)),ID=+ID D  Q:HMPI'<HMPMAX
 . ;DE2818, begin logic change
 . K HMPORDR D ORDINFO(.HMPORDR,ID)  ; kill it for each iteration
 . ; (#33) PACKAGE REFERENCE
 . ; (# 5) STATUS: 13=CANCELLED, 12=DISCONTINUED/EDIT, 1=DISCONTINUED
 . Q:$G(HMPORDR(100,ID,5,"I"))=13  I $G(HMPORDR(100,ID,33,"I"))["P",($G(HMPORDR(100,ID,5,"I"))=12)!($G(HMPORDR(100,ID,5,"I"))=1) Q
 . ; Get Parent order if we don't already have it
 . ; Also, add the child order to the returned list
 . S DAD=$G(HMPORDR(100,ID,36,"I"))  ;(#36) PARENT 
 . I DAD D:'$D(^TMP("ORGOTIT",$J,DAD)) OR1^HMPDJ01(DAD)
 . ;DE2818, end logic change
 . D OR1^HMPDJ01(ID)
ORQ ; end
 K ^TMP("ORR",$J),^TMP("ORGOTIT",$J)
 Q
 ;
TREATMEN ; -- Nursing Treatments (orders)
 N HMPN,HMPORDR,ID,ORDG,ORLIST,X  ;DE2818, added HMPORDR, removed X3,X4
 I $G(HMPID) S ORLIST=$H D NTX1^HMPDJ01(HMPID) G TXQ
 ;DE2818, ***replacement for ^ORD reference needed below***
 S ORDG=+$O(^ORD(100.98,"B","NTX",0))
 D EN^ORQ1(DFN_";DPT(",ORDG,6,,HMPSTART,HMPSTOP,,,,1)
 S HMPN=0 F  S HMPN=$O(^TMP("ORR",$J,ORLIST,HMPN)) Q:HMPN<1  S ID=$G(^(HMPN)) D  Q:HMPI'<HMPMAX
 . Q:$D(^TMP("ORGOTIT",$J,+ID))  Q:$P(ID,";",2)>1  S ID=+ID  ;actions
 . ;DE2818, begin logic change
 . K HMPORDR D ORDINFO(.HMPORDR,ID)  ; kill it for each iteration
 . ;(#33) PACKAGE REFERENCE,(#5) STATUS: 13=CANCELLED, 12=DISCONTINUED/EDIT, 1=DISCONTINUED
 . Q:$G(HMPORDR(100,ID,5,"I"))=13  I $G(HMPORDR(100,ID,33,"I"))["P",($G(HMPORDR(100,ID,5,"I"))=12)!($G(HMPORDR(100,ID,5,"I"))=1) Q
 . ;DE2818, end logic change
 . D NTX1^HMPDJ01(ID)
TXQ ; end
 K ^TMP("ORR",$J),^TMP("ORGOTIT",$J)
 Q
 ;
MED ; -- Pharmacy
 ;DE2818, removed reference to ^OR(100,HMPID) below
 N ORDIALOG I $G(HMPID),$$GET1^DIQ(100,HMPID_",",.01)]"" D PS1^HMPDJ05(HMPID) Q  ;get 1 order
 N DAD,HMPN,HMPORDR,ID,ORDG,ORLIST,ORVP,TYPE  ;DE2818, added HMPORDR, removed extra ORLIST and X3,X4
 S TYPE=$G(FILTER("vaType")) S:$L(TYPE) TYPE=$S(TYPE="N":"NV",TYPE="V":"IV",1:TYPE)_" "
 ;DE2818, ***replacement for ^ORD reference needed below***
 S ORDG=$O(^ORD(100.98,"B",TYPE_"RX",0)),ORVP=DFN_";DPT(" ;CPC removed + 10/30/15 DE2434
 ;If RX group not found, and not overridden by specific type then try PHARMACY CPC 10/30/15 DE2434
 I ORDG="" S ORDG=0 I TYPE="" S ORDG=+$O(^ORD(100.98,"B","PHARMACY",0)) ;CPC 10/30/15 DE2434
 D EN^ORQ1(ORVP,ORDG,6,,HMPSTART,HMPSTOP)
 K ^TMP("HMPOR",$J) S HMPN=0
 F  S HMPN=$O(^TMP("ORR",$J,ORLIST,HMPN)) Q:HMPN<1  S ID=$G(^(HMPN)),ID=+ID D  Q:HMPI'<HMPMAX
 . ;DE2818, begin logic change
 . K HMPORDR D ORDINFO(.HMPORDR,ID)  ; kill it for each iteration
 . ;(#33) PACKAGE REFERENCE,(#5) STATUS: 13=CANCELLED, 12=DISCONTINUED/EDIT, 1=DISCONTINUED
 . Q:$G(HMPORDR(100,ID,5,"I"))=13  I $G(HMPORDR(100,ID,33,"I"))["P",($G(HMPORDR(100,ID,5,"I"))=12)!($G(HMPORDR(100,ID,5,"I"))=1) Q
 . S DAD=$G(HMPORDR(100,ID,36,"I"))  ;(#36) PARENT
 . I DAD D:'$D(^TMP("HMPOR",$J,DAD)) PS1^HMPDJ05(DAD)
 . ;DE2818, end logic change
 . D PS1^HMPDJ05(ID) ;DE5156 ensure parent added as well as children
 K ^TMP("HMPOR",$J),^TMP("ORR",$J),^TMP("ORGOTIT",$J),^TMP($J,"PSOI")
 Q
 ;
PTF ; -- Patient Treatment File
 ;Purpose - Main Patient Treatment File (PTF) RPC
 ;
 ;Called by - PTF RPC
 ;
 ;Assumptions - Expects variables DFN, HMPSTART, HMPSTOP, HMPMAX
 ;
 ;Modification History -
 ;US5630 (TW) - Namespaced variables and enhanced newing
 ;
 N HMPRDT,HMPX,HMPAPI,HMPLID
 K ^TMP("HMPPX",$J)
 ;
 I $G(HMPID),HMPID'=+HMPID D PTFA^HMPDJ04A(HMPID) Q  ; If HMPID and dx type, process and quit
 ;
 I $G(HMPID) D  Q:'$D(^TMP("HMPPX",$J))  ; If HMPID only, set one ^TMP("HMPPX") entry
 . S HMPRDT=9999999
 . D RPC^DGPTFAPI(.HMPAPI,HMPID)
 . S HMPX=$P($G(HMPAPI(1)),U,3)
 . I $L(HMPX) S ^TMP("HMPPX",$J,HMPRDT,HMPID_";70;DXLS")=HMPX_U
 . F HMPAPI=1:1:9 S HMPX=$P($G(HMPY(2)),U,HMPAPI) I $L(HMPX) S ^TMP("HMPPX",$J,HMPRDT,HMPID_";70;D SD"_HMPAPI)=HMPX_U_$G(DISDAT)
 ;
 I '$G(HMPID) D PTF^HMPDJ09  ; If no HMPID, set up ^TMP("HMPPX") for all dx
 ;
 ;Loop through ^TMP("HMPPX",$J) and do PTF1^HMPDJ04A to set PTF array, ^TMP
 S HMPRDT="" F  S HMPRDT=$O(^TMP("HMPPX",$J,HMPRDT)) Q:HMPRDT=""  D
 . S HMPLID="" F  S HMPLID=$O(^TMP("HMPPX",$J,HMPRDT,HMPLID)) Q:HMPLID=""!(HMPI'<HMPMAX)  D
 .. D PTF1^HMPDJ04A
 K ^TMP("HMPPX",$J)
 Q
 ;
FACTOR   D PX^HMPDJ09(9000010.23) Q   ; -- PCE Health Factors
IMMUNIZA D PX^HMPDJ09(9000010.11) Q   ; -- PCE Immunizations
EXAM     D PX^HMPDJ09(9000010.13) Q   ; -- PCE Exams
CPT      D PX^HMPDJ09(9000010.18) Q   ; -- PCE CPT
EDUCATIO D PX^HMPDJ09(9000010.16) Q   ; -- PCE Patient Education
POV      D PX^HMPDJ09(9000010.07) Q   ; -- PCE Purpose of Visit (POV)
SKIN     D PX^HMPDJ09(9000010.12) Q   ; -- PCE Skin Tests
 ;
IMAGE ; -- Radiology/Nuclear Medicine
 D EN1^RAO7PC1(DFN,HMPSTART,HMPSTOP,HMPMAX_"P")
 I $G(HMPID) D RA1^HMPDJ07(HMPID) G IMQ
 N ID S ID=""
 F  S ID=$O(^TMP($J,"RAE1",DFN,ID)) Q:ID=""  D RA1^HMPDJ07(ID)  Q:HMPI'<+HMPMAX
IMQ ; end
 K ^TMP($J,"RAE1")
 Q
 ;
APPOINTM ; -- Scheduling/Appointment Mgt
 N HMPX,HMPNUM,HMPDT,X,HMPA,ID
 S HMPX(1)=HMPSTART_";"_HMPSTOP,HMPX(4)=DFN,ID=$G(HMPID)
 S HMPX("FLDS")="1;2;3;6;9;10;11;13;22",HMPX("SORT")="P"  ;DE4469 - PB - Apr 26, 2016 added field 22 to the list of fields to be pulled.
 I $L(ID) G:$E(ID)="H" DGS^HMPDJ04 D  Q
 . S HMPDT=$P(ID,";",2),HMPX(1)=$P(ID,";",2)_";"_$P(ID,";",2)
 . S HMPX(2)=$P(ID,";",3)
 . S HMPNUM=$$SDAPI^SDAMA301(.HMPX)
 . D:HMPNUM>0 SDAM1^HMPDJ04
 . K ^TMP($J,"SDAMA301",DFN)
 ; appointments
 S HMPX(3)="R;I;NS;NSR;NT" ;no cancelled appt's
 S HMPNUM=$$SDAPI^SDAMA301(.HMPX),HMPDT=0
 F  S HMPDT=$O(^TMP($J,"SDAMA301",DFN,HMPDT)) Q:HMPDT<1  D  Q:HMPI'<HMPMAX
 . S X=$P($G(^TMP($J,"SDAMA301",DFN,HMPDT)),U,3)
 . ;I HMPDT<DT,$P(X,";")'["NS" Q   ;no prior kept appt's
 . D SDAM1^HMPDJ04
 K ^TMP($J,"SDAMA301",DFN)
 Q
 ;
SURGERY ; -- Surgery
 I $G(HMPID) D SR1^HMPDJ07(HMPID) Q
 Q:'$L($T(LIST^SROESTV))
 N SHOWADD S SHOWADD=1 ;to omit leading '+' with note titles
 N HMPN,HMPY,ID D LIST^SROESTV(.HMPY,DFN,HMPSTART,HMPSTOP,HMPMAX,1)
 S HMPN=0 F  S HMPN=$O(@HMPY@(HMPN)) Q:HMPN<1  D
 . S ID=+$G(@HMPY@(HMPN)) D:ID SR1^HMPDJ07(ID)
 K @HMPY
 Q
 ;
DOCUMENT ; -- Text Integration Utilities
 N HMPC,CLS,HMPS,CTXT,HMPY,HMPN,HMPX,ID
 I $L($G(HMPID)) D TIU1^HMPDJ08(HMPID) Q
 N CLASS,SUBCLASS,STATUS
 D SETUP^HMPDJ08 ;define search criteria
 F HMPC=1:1:$L(CLASS,U) S CLS=$P(CLASS,U,HMPC) D  Q:HMPI'<HMPMAX
 . I CLS="CP" D CP^HMPDJ08A(DFN,HMPSTART,HMPSTOP,HMPMAX) Q
 . I CLS="RA" D RA^HMPDJ08A(DFN,HMPSTART,HMPSTOP,HMPMAX) Q
 . I CLS="LR" D LR^HMPDJ08A(DFN,HMPSTART,HMPSTOP,HMPMAX) Q
 . ; TIU document classes, by sig status
 . F HMPS=1:1:$L(STATUS,U) S CTXT=$P(STATUS,U,HMPS) D  Q:HMPI'<HMPMAX
 .. ;I $L($G(HMPBATCH)) D GET^TIUHMP(.HMPY,DFN,CLS,HMPSTART,HMPSTOP) I 1 ; <<<< 12.3
 .. I $L($G(HMPBATCH)) D GET^TIUVPR(.HMPY,DFN,CLS,HMPSTART,HMPSTOP) I 1 ;  <<<< 12.3
 .. E  D CONTEXT^TIUSRVLO(.HMPY,CLS,CTXT,DFN,HMPSTART,HMPSTOP,,HMPMAX,,1)
 .. S HMPN=0 F  S HMPN=$O(@HMPY@(HMPN)) Q:HMPN<1  D  Q:HMPI'<HMPMAX
 ... S HMPX=$G(@HMPY@(HMPN)) ;Q:'$$MATCH^HMPDJ08(HMPX,CTXT)
 ... Q:$D(^TMP("HMPD",$J,+HMPX))  ;already included
 ... D EN1^HMPDJ08(HMPX,CLS)
 .. K @HMPY
 Q
 ;
VISIT ; -- Visits
 I $L($G(HMPID)) D VSIT1^HMPDJ04(HMPID) Q
 N BEG,END,HMPADMIT,HMPDEMOG,HMPIDT,ID  ;DE2818, added HMPDEMOG
 D TOP^HMPXGDPT("HMPDEMOG",DFN,.105,"I")  ;DE2818, (.105) CURRENT ADMISSION
 S HMPADMIT=+$G(HMPDEMOG(2,DFN,.105,"I")) ;DE2818
 S BEG=HMPSTART,END=HMPSTOP D IDT^HMPDVSIT ;invert dates
 ;DE2818 ***ICR 2028 needed for ^AUPNVSIT references below***
 S HMPIDT=BEG F  S HMPIDT=$O(^AUPNVSIT("AA",DFN,HMPIDT)) Q:HMPIDT<1!(HMPIDT>END)  D  Q:HMPI'<HMPMAX
 . S ID=0 F  S ID=$O(^AUPNVSIT("AA",DFN,HMPIDT,ID)) Q:ID<1  D VSIT1^HMPDJ04(ID)
 ; kill HMPADMIT in VSIT1 if adm is included, but add unless filtered
 I $G(HMPADMIT),HMPMAX'<9999,HMPSTART'>1410102 D VSIT1^HMPDJ04("H"_HMPADMIT)
 Q
 ;I HMPSTOP,HMPSTOP'["." S END=HMPSTOP_".24" ;assume end of day
 ;S HMPDT=END F  S HMPDT=$O(^AUPNVSIT("AET",DFN,HMPDT),-1)  Q:HMPDT<HMPSTART  D  Q:HMPI'<HMPMAX
 ;. S HMPLOC=0 F  S HMPLOC=$O(^AUPNVSIT("AET",DFN,HMPDT,HMPLOC)) Q:HMPLOC<1  D
 ;.. S ID=0 F  S ID=$O(^AUPNVSIT("AET",DFN,HMPDT,HMPLOC,"P",ID)) Q:ID<1  D VSIT1^HMPDJ04(ID)
 ;
HMP ; -- HMP Patient Objects
 D HMP^HMPDJ02($G(TYPE))
 Q
 ;
MH ; -- Mental Health
 I $L($T(MH^HMPDJ09M)) D MH^HMPDJ09M
 Q
 ;
ERRQ ; -- Quit for error handling
 Q
 ;
 ;new subroutine for DE2818
ORDINFO(ORRSLT,ORIEN) ; ORDER file (#100), ORRSLT passed by reference
 ; all data returned in internal format
 ;
 ;   fields on ^OR(100,D0,0)
 ;(#.01) ORDER #
 ;(#.02) OBJECT OF ORDER
 ;
 ;   fields on ^OR(100,D0,3)
 ;(#5) STATUS
 ;(#7) ITEM ORDERED
 ;(#8) VEILED
 ;(#8.1) TYPE
 ;(#9) REPLACED ORDER
 ;(#9.1) REPLACEMENT ORDER
 ;(#30) CURRENT ACTION
 ;(#31) DATE OF LAST ACTIVITY
 ;(#32) GRACE DAYS BEFORE PURGE
 ;(#36) PARENT
 ;(#35) ALERT ON RESULTS
 ;
 ;   field on ^OR(100,D0,4)
 ;(#33) PACKAGE REFERENCE
 ;
 Q:'($G(ORIEN)>0)  ; IEN required
 D TOP^HMPXGORD("ORRSLT",ORIEN,".01;.02;5;7;8;8.1;9;9.1;30;31;32;33;35;36","I")
 ;
 Q
 ;end DE2818
 ;
