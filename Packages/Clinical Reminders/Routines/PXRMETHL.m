PXRMETHL ; SLC/PKR/PJH - Reminder Extract Transmissions; 12/09/2003
 ;;2.0;CLINICAL REMINDERS;**4**;Feb 04, 2005;Build 21
 ;
 ;Main entry point for PXRM EXTRACT TRANSMISSIONS
START(IEN) N VALMBCK,VALMCNT,VALMSG,X,XMZ,XQORM,XQORNOD
 ;Details of last run
 N DATA,NPERIOD,NSDATE,NTASK
 S DATA=$G(^PXRM(810.2,IEN,0))
 ;S NPERIOD=$P(DATA,U,6),NSDATE=$P(DATA,U,7),NTASK=$P(DATA,U,8)
 S NPERIOD=$P(DATA,U,6),NSDATE=$P(DATA,U,7)
 S VALMCNT=0
 D EN^VALM("PXRM EXTRACT TRANSMISSIONS")
 Q
 ;
BLDLIST ;Build workfile
 K ^TMP("PXRMETHL",$J)
 ;List of HL7 transmissions in reverse date order
 N ID,SUB,XDATE,XSTATUS
 S ID=""
 F  S ID=$O(^PXRMXT(810.3,IEN,5,"B",ID),-1) Q:ID=""  D
 .S SUB=$O(^PXRMXT(810.3,IEN,5,"B",ID,"")) Q:'SUB
 .S XDATE=$P($G(^PXRMXT(810.3,IEN,5,SUB,0)),U,2)
 .S XSTATUS=$$STATUS^PXRM7API(ID)
 .I 'XDATE S XDATE="Not Transmitted",XSTATUS=""
 .S VALMCNT=VALMCNT+1
 .S ^TMP("PXRMETHL",$J,VALMCNT,0)=$$FRE(ID,XDATE,XSTATUS)
 Q
 ;
FRE(ID,DATE,STATUS) ;Format  entry number, name, date created
 N TDATE,TEMP,TID,TSTATUS
 S TID=$E(ID,1,13)
 S TEMP=" "_$$LJ^XLFSTR(TID,16," ")
 S TDATE=$$FMTE^XLFDT(DATE,"5Z")
 S TEMP=TEMP_"  "_$$LJ^XLFSTR(TDATE,20," ")
 S TSTATUS=$E(STATUS,1,38)
 S TEMP=TEMP_"  "_$$LJ^XLFSTR(TSTATUS,38," ")
 Q TEMP
 ;
ENTRY ;Entry code
 D BLDLIST
 Q
 ;
EXIT ;Exit code
 K ^TMP("PXRMETHL",$J)
 D CLEAN^VALM10
 D FULL^VALM1
 S VALMBCK="Q"
 Q
 ;
HDR ; Header code
 S VALMHDR(2)="  Extract Summary Name: "_$P($G(^PXRMXT(810.3,IEN,0)),U)
 S VALMHDR(3)="          Date Created: "_$$FMTE^XLFDT($P($G(^PXRMXT(810.3,IEN,0)),U,6),"5Z")
 S VALMSG="+ Next Screen   - Prev Screen   ?? More Actions"
 Q
 ;
INIT ;Initialization code
 S VALMCNT=0
 Q
