MAGDHOWP ;WOIFO/PMK - Generate VistA Imaging HL7 message for Clinical Procedures Check-in ;04 Sep 2018 10:41 AM
 ;;3.0;IMAGING;**208**;Mar 19, 2002;Build 6;Sep 03, 2013
 ;; Per VHA Directive 2004-038, this routine should not be modified.
 ;; +---------------------------------------------------------------+
 ;; | Property of the US Government.                                |
 ;; | No permission to copy or redistribute this software is given. |
 ;; | Use of unreleased versions of this software requires the user |
 ;; | to execute a written test agreement with the VistA Imaging    |
 ;; | Development Office of the Department of Veterans Affairs,     |
 ;; | telephone (301) 734-0100.                                     |
 ;; | The Food and Drug Administration classifies this software as  |
 ;; | a medical device.  As such, it may not be changed in any way. |
 ;; | Modifications to this software may result in an adulterated   |
 ;; | medical device under 21CFR820, the use of which is considered |
 ;; | to be a violation of US Federal Statutes.                     |
 ;; +---------------------------------------------------------------+
 ;;
 ;;
 ;
 ; Supported IA #10000 reference NOW^%DTC subroutine call
 ; Supported IA #2056 reference $$GET1^DIQ function call
 ; Supported IA #2056 reference GETS^DIQ subroutine call
 ; Controlled IA #4110 to read REQUEST/CONSULTATION file (#123)
 ; Private IA #6928 to read CP INSTRUMENT file (#702.09)
 ; Private IA #6929 to read CP TRANSACTION file (#702) 
 ; Private IA #6929 to $Order thru "ACON" xfef in ^MDD(702)
 ; Private IA #6930 to read CP DEFINITION file (#702.01)
 ;
 ; CLINPROC is called by MDHL7BH to generate VistA Imaging HL7
 ; for a check-in or cancellation of a Clinical Procedure.
 ; 
CLINPROC(FILE702P,ORDERFLAG) ; entry point from MDHL7BH
 ; FILE702P ---- pointer to the clinical procedure in ^MDD(702,FILE702P,...)
 ; ORDERFLAG --- 0=cancel, 1=new order
 N APTSCHED,CPINVOCATION,DFN,FILE70201P,FILLER2,GMRCIEN,ORC1,ORC5,SDATE,SERVICE
 S DFN=$$GET1^DIQ(702,FILE702P,.01,"I")
 S GMRCIEN=$$GET1^DIQ(702,FILE702P,.05,"I")
 S SERVICE=$$GET1^DIQ(123,GMRCIEN,1,"I")
 S SDATE=$$GET1^DIQ(702,FILE702P,.07,"I")
 I SDATE[";" S SDATE=$P(SDATE,";",2)
 I SDATE="" D NOW^%DTC S SDATE=%
 I SDATE<DT D NOW^%DTC S SDATE=%
 S APTSCHED("FM DATETIME")=SDATE
 S FILE70201P=$$GET1^DIQ(702,FILE702P,.04,"I")
 S APTSCHED("CLINIC IEN")=$$GET1^DIQ(702.01,FILE70201P,.05,"I")
 S APTSCHED("CLINIC NAME")=$$GET1^DIQ(702.01,FILE70201P,.05,"E")
 S FILLER2="GMRC-SCHEDULED" ; over-ride GMRC's status
 I ORDERFLAG D   ; new CP order check-in
 . S (ORC1,ORC5)="OK"
 . Q
 E  D  ; cancel CP order
 . S (ORC1,ORC5)="CA"
 . Q
 ;
 D TELEREAD(ORC1) ; put CP study on TeleReader Read/Unread list
 ;
 S CPINVOCATION=1 ; Clinical Procedures HL7 flag
 D MSGSETUP^MAGDHOW1(GMRCIEN,SERVICE,ORC1,ORC5,.APTSCHED)
 Q
 ;
TELEREAD(ORC1) ; add the CP order to the TeleReader Read/Unread list
 N DEL,DEL2,HL7ORC
 S DEL="|",DEL2="^"
 S $P(HL7ORC,DEL)=ORC1
 D ^MAGDTR01
 Q
 ;
OUTPUT(N) ; called by OUTPUT^MAGDHOW2 if CPINVOCATION=1
 N FILE70209P,CPDICOM
 S FILE70209P=$$GET1^DIQ(702,FILE702P,.11,"I") ; get instrument
 S CPDICOM=$$GET1^DIQ(702.09,FILE70209P,.19,"I") ; get CP - DICOM Interoperability
 I CPDICOM=2 D  ; replace CP's HL7 message with VistA's
 . ; Replace the CP HL7 message body in HLA with the VI HL7 message body
 . K HLA
 . F I=2:1:N S HLA("HLS",I-1)=HL7(I)
 . Q
 Q
 ;
 ;
 ; CPORDER is called by MAGDHOW4, MAGDHOWC and MAGDHOWS to determine
 ; if this a Clinical Procedures order.
 ; 
 ; In addition, MAGDHOW4 is concerned if this is a Clinical Procedures
 ; order and get the HL7 Universal Service ID.
 ; 
 ; MAGDHOWC and MAGDHOWS need to know if this is a new/active CP order
 ; for one or more bidirectional instruments.  If so, MAGDHOWC(which
 ; handles GMRC CPRS Consult Request Tracking) and MAGDHOWS(which handles
 ; SDAM Appointment Management) will not prematurely generate an HL7
 ; message at order release time or when the appointment is scheduled.
 ; 
 ; Instead, the HL7 message will be generated by the CLINPROC subroutine
 ; (above) when it is invoked by MDHL7BH for CP check-in.
 ; 
CPORDER(GMRCIEN,HL7USID) ; entry point from OBR^MAGDHOW4, ENTRY^MAGDHOWC, MAGDHOWS
 ; Return Code
 ; -1,ERROR -------- error return
 ;  0,NOT A CP ----- not a clinical procedure
 ;  1,UNIDIRECT ---- clinical procedure with no bidirectional instruments
 ;  2,UNFINISHED --- unfinished clinical procedure with bidirectional instruments
 ;  3,FINISHED ----- finished clinical procedure with bidirectional instruments
 ; 
 ; MAGHOWC and MAGDHOWS ignore consult & appointment transactions for
 ; unfinished CP's ("2,UNFINISHED") and process them for cancelled, completed,
 ; and discontinued CP's, CP's with no bidirectional instruments, and non-CP
 ; CPRS Consult Request Tracking consults & procedures.
 ; 
 ; MAGDHOW4 needs to get CP's HL7 Universal Service Identifier (HL7USID) and
 ; store it in OBR-4 for clinical procedures.
 ;
 N BIDIRECT,E,I,FILE702P,FILE70201P,FILE70209P,MCODE,STATUS,TAG
 ;
 S HL7USID="" ; initialize CP's HL7 Universal Service Identifier
 ;
 ; is this a consult/procedure in Clinical Procedures?
 S FILE70201P=$$GET1^DIQ(123,GMRCIEN,1.01,"I") ; get Clinical Procedures definition
 ;
 I 'FILE70201P Q "0,NOT A CP" ; not a CP
 ;
 ; look for a bidirectional instrument associated with this CP definition
 S BIDIRECT=0 ; initialize bidirectional switch
 S I=0 F  S I=$O(^MDS(702.01,FILE70201P,.1,I)) Q:'I  D  Q:BIDIRECT
 . S FILE70209P=$$GET1^DIQ(702.011,I_","_FILE70201P,.01,"I") Q:'FILE70209P
 . S HL7USID=$$GET1^DIQ(702.09,FILE70209P,.17,"E")
 . S BIDIRECT=$$GET1^DIQ(702.09,FILE70209P,.13,"I")
 . Q
 ;
 I 'BIDIRECT Q "1,UNIDIRECT" ; no bidirectional instrument
 ;
 ; get CP's HL7 Universal Service Identifier from the transaction
 ; the transaction is created at check-in; there is none for order release
 S FILE702P=$O(^MDD(702,"ACON",GMRCIEN,""),-1) ; get last transaction
 I FILE702P D  ; CP transaction exists
 . S FILE70209P=$$GET1^DIQ(702,FILE702P,.11,"I") Q:'FILE70209P
 . S HL7USID=$$GET1^DIQ(702.09,FILE70209P,.17,"E")
 . Q
 ; 
 S STATUS=$$GET1^DIQ(123,GMRCIEN,8,"I")
 S TAG="IEN"_$TR($J(STATUS,2)," ",0)
 S MCODE=$T(@TAG)
 Q $S($P(MCODE,";",3)="U":"2,UNFINISHED",1:"3,FINISHED")
 ;
 ; Table of Order Status (from file #100.01)
 ; IEN ;;F=finished, U=unfinished;name
IEN01 ;;F;DISCONTINUED
IEN02 ;;F;COMPLETE
IEN03 ;;U;HOLD
IEN04 ;;U;FLAGGED
IEN05 ;;U;PENDING
IEN06 ;;U;ACTIVE
IEN07 ;;F;EXPIRED
IEN08 ;;U;SCHEDULED
IEN09 ;;U;PARTIAL RESULTS
IEN10 ;;U;DELAYED
IEN11 ;;U;UNRELEASED
IEN12 ;;F;DISCONTINUED/EDIT
IEN13 ;;F;CANCELLED
IEN14 ;;U;LAPSED
IEN15 ;;U;RENEWED
IEN99 ;;F;NO STATUS
