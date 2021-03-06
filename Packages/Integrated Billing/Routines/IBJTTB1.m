IBJTTB1 ;ALB/ARH - TPI AR TRANSACTION PROFILE BUILD ;07-APR-1995
 ;;2.0;INTEGRATED BILLING;**39,530,609**; 21-MAR-94;Build 26
 ;;Per VA Directive 6402, this routine should not be modified.
 ;
BLD ; build array for list manager AR TRANSACTION
 ; input:  DFN, IBIFN - ptr to bill (399), IBTRNS - ptr to transaction (433)
 N IBI,IBJ,IBX,IBRCT0,IBRCT1,IBRCT2,IBRCT3,IBRCT5,IBRCT8,IBLN,IBSTR,IBD,IBT,IBT1,IBT2,IBT3,IBLL,IBRL,IBLC,IBRC,IBLW,IBRW,IBTRTY,IBBC,IBADDM,STRG,IB12,IB32,IB20,IBEDAT,IBERR,IBERA,IBXRC
 Q:'$G(IBTRNS)
 S IBLL=16,IBRL=16,IBLC=2,IBRC=35,IBLW=12+IBLL,IBRW=25+IBRL,IB12=12,IB20=20,IB32=32
 ;
 S IBRCT0=$$N0^RCJIBFN1(IBTRNS),IBRCT1=$$N1^RCJIBFN1(IBTRNS),IBRCT2=$$N2^RCJIBFN1(IBTRNS)
 S IBRCT3=$$N3^RCJIBFN1(IBTRNS),IBRCT5=$$N5^RCJIBFN1(IBTRNS),IBRCT8=$$N8^RCJIBFN1(IBTRNS)
 S IBTRTY=$P($$STNO^RCJIBFN2(+$P(IBRCT1,U,2)),U,3)
 ;
 ; IB*2.0*530 - Get ERA#, Trace# and 835 Payer/Tin from Receipt
 D:$P(IBRCT1,U,3)]""
 . S IBXRC=$$FIND1^DIC(344,"","",$P(IBRCT1,U,3),"B","","IBERR"),IBERA=$$GET1^DIQ(344,IBXRC_",",".18","I")
 . D GETS^DIQ(344.4,IBERA_",",".01;.02;.03;.06","E","IBEDAT")
 I $P(IBRCT1,U,3)="" S IBERA=0,IBEDAT(344.4,IBERA_",",.01,"E")="NO ERA#",IBEDAT(344.4,IBERA_",",.02,"E")="NO TRACE#",IBEDAT(344.4,IBERA_",",.03,"E")="NO TIN",IBEDAT(344.4,IBERA_",",.06,"E")="NO PAYER"
 ;
 S IBLN=1,IBSTR=""
 S IBD="TRANS. NO: ",IBD=$J(IBD,IBLL)_$P(IBRCT0,U,1) S IBSTR=$$SETLN(IBD,IBSTR,IBLC,IBLW)
 S IBD="TRANS. TYPE: ",IBD=$J(IBD,IBLL)_$P($$STNO^RCJIBFN2(+$P(IBRCT1,U,2)),U,1) S IBSTR=$$SETLN(IBD,IBSTR,IBRC,IBRW)
 S IBLN=$$SET(IBSTR,IBLN),IBSTR=""
 ;
 S IBD="TRANS. DATE: ",IBD=$J(IBD,IBLL)_$$DATE^IBJU1(+IBRCT1) S IBSTR=$$SETLN(IBD,IBSTR,IBLC,IBLW)
 S IBD="DATE POSTED: ",IBD=$J(IBD,IBLL)_$$DATE^IBJU1(+$P(IBRCT1,U,7))
 S IBD=IBD_"  ("_$P($G(^VA(200,+$P(IBRCT0,U,3),0)),U,2)_")" S IBSTR=$$SETLN(IBD,IBSTR,IBRC,IBRW)
 S IBLN=$$SET(IBSTR,IBLN),IBSTR=""
 ;
 ; IB*2.0*530 - Add ERA#, Trace # and 835 Payer/TIN to screen
 S IBD="TRANS. AMOUNT: ",IBD=$J(IBD,IBLL)_$FN($P(IBRCT1,U,5),",",2) S IBSTR=$$SETLN(IBD,IBSTR,IBLC,IBLW)
 I IBTRTY=2!(IBTRTY=20) S IBD="ERA#: ",IBD=$J(IBD,8)_$G(IBEDAT(344.4,IBERA_",",.01,"E")) S IBSTR=$$SETLN(IBD,IBSTR,IB32,IB20)
 I IBTRTY=2!(IBTRTY=20) S IBD="RECEIPT #: ",IBD=$J(IBD,IB12)_$P(IBRCT1,U,3) S IBSTR=$$SETLN(IBD,IBSTR,54,26)
 S IBLN=$$SET(IBSTR,IBLN),IBSTR=""
 I IBTRTY=2!(IBTRTY=20) S IBD="PAYER NAME/TIN: ",IBD=$J(IBD,IBLL)_$G(IBEDAT(344.4,IBERA_",",.06,"E"))_"/"_$G(IBEDAT(344.4,IBERA_",",.03,"E")) S IBSTR=$$SETLN(IBD,IBSTR,IBLC,66)
 S IBLN=$$SET(IBSTR,IBLN),IBSTR=""
 I IBTRTY=2!(IBTRTY=20) S IBD="TRACE#: ",IBD=$J(IBD,IBLL)_$G(IBEDAT(344.4,IBERA_",",.02,"E")) S IBSTR=$$SETLN(IBD,IBSTR,IBLC,66)
 S IBLN=$$SET(IBSTR,IBLN),IBSTR=""
 ; Display FMS Status IB*2.0*609 - Next 7 lines
 I IBTRTY=2!(IBTRTY=20),$G(IBXRC) D
 . N FMSDOC
 . S FMSDOC=$$FMSSTAT^RCDPUREC(IBXRC)
 . S IBD="FMS DOCUMENT: "_$TR($P(FMSDOC,"^")," ")_"   FMS DOC STATUS: "_$P(FMSDOC,"^",2)
 . S IBSTR=$$SETLN(IBD,IBSTR,IBLC,76)
 . S IBLN=$$SET(IBSTR,IBLN),IBSTR=""
 ;
 I IBTRTY=21!(IBTRTY=1) S IBD="ADJUSTMENT #: ",IBD=$J(IBD,IBLL)_$P(IBRCT1,U,4) S IBSTR=$$SETLN(IBD,IBSTR,IBLC,IBLW)
 I $P(IBRCT0,U,2)'="" I IBTRTY=1!((IBTRTY>7)&(IBTRTY<12))!(IBTRTY=21)!(IBTRTY=29)!(IBTRTY=30) D
 . S IBD="DATE CALM DONE: ",IBD=$J(IBD,IBLL)_$$DATE^IBJU1($P(IBRCT0,U,2)) S IBSTR=$$SETLN(IBD,IBSTR,IBRC,IBRW)
 I IBSTR'="" S IBLN=$$SET(IBSTR,IBLN),IBSTR=""
 ;
 I IBTRTY=17!($P(IBRCT5,U,2)'="") S IBD="FOLLOW-UP DATE: ",IBD=$J(IBD,IBLL)_$$DATE^IBJU1($P(IBRCT5,U,2)) S IBSTR=$$SETLN(IBD,IBSTR,IBLC,IBLW)
 I IBSTR'="" S IBLN=$$SET(IBSTR,IBLN),IBSTR=""
 ;
 I $P(IBRCT0,U,4)["INCOMPLETE" S IBLN=$$SET(" ",IBLN) D
 . S IBD="NOTE: ",IBD=$J(IBD,IBLL)_$P(IBRCT0,U,4) S IBSTR=$$SETLN(IBD,"",IBLC,79),IBLN=$$SET(IBSTR,IBLN) S IBSTR=""
 ;
 I IBTRTY=8!(IBTRTY=9) S IBLN=$$SET(" ",IBLN) D  S IBLN=$$SET(IBSTR,IBLN) S IBSTR=""
 . S IBT=22,IBSTR="TERMINATION REASON: ",IBD=$P(IBRCT1,U,6) S IBSTR=$$SETLN(IBD,IBSTR,IBT,50)
 ;
 ; balance and collection amounts
 D BCSCR^IBJTTB2
 ;
 ; administrative charges
 I IBRCT2'="",IBTRTY=12 S IBLN=$$SET(" ",IBLN) S IBSTR="" D
 . S IBT=2,IBD="ADMINISTRATIVE COST CHARGE: " S IBSTR=$$SETLN(IBD,IBSTR,IBT,29)
 . D ADDM^IBJTTB2 S IBI=0 F  S IBI=$O(IBADDM(IBI)) Q:'IBI  D  S IBLN=$$SET(IBSTR,IBLN) S IBSTR=""
 .. S IBT=32,IBD=$P(IBADDM(IBI),U,1) S IBSTR=$$SETLN(IBD,IBSTR,IBT,17)
 .. S IBT=50,IBD=$J($P(IBADDM(IBI),U,2),11,2) S IBSTR=$$SETLN(IBD,IBSTR,IBT,11)
 ;
 K STRG D N4^RCJIBFN1(IBTRNS) S (IBI,IBJ)=0 F  S IBI=$O(STRG(IBI)) Q:'IBI  D  S IBLN=$$SET(IBSTR,IBLN) S IBSTR=""
 . S IBX=STRG(IBI) Q:IBX=""  S IBJ=IBJ+1
 . I IBJ=1 S IBLN=$$SET(" ",IBLN)
 . S IBT=7,IBD=$S(IBJ=1:"FY: ",1:"    ")_$P(IBX,U,1) S IBSTR=$$SETLN(IBD,IBSTR,IBT,8)
 . S IBT=28,IBD=$S(IBJ=1:"PR AMT: ",1:"        ")_$FN(+$P(IBX,U,2),",",2) S IBSTR=$$SETLN(IBD,IBSTR,IBT,21)
 . S IBT=57,IBD=$S(IBJ=1:"FY TR AMT: ",1:"           ")_$FN(+$P(IBX,U,4),",",2) S IBSTR=$$SETLN(IBD,IBSTR,IBT,22)
 K STRG
 ;
 S IBLN=$$SET(" ",IBLN),IBSTR="COMMENTS: "
 S IBT=11,IBD=$P(IBRCT5,U,1) I IBD'="" S IBSTR=$$SETLN(IBD,IBSTR,IBT,45),IBLN=$$SET(IBSTR,IBLN) S IBSTR=""
 D TRCOMM^IBJTTB2,COMM^IBJTTB2
 ;
 S VALMCNT=IBLN-1
 ;
 Q
 ;
SETLN(STR,IBX,COL,WD) ;
 S IBX=$$SETSTR^VALM1(STR,IBX,COL,WD)
 Q IBX
 ;
SET(STR,LN) ; set up TMP array with screen data
 N IBX,IBI
 D SET^VALM10(LN,STR)
 S LN=LN+1
SETQ Q LN
