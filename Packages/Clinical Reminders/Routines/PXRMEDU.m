PXRMEDU ;SLC/PKR - Handle education findings. ;08/25/2017
 ;;2.0;CLINICAL REMINDERS;**42**;Feb 04, 2005;Build 80
 ;
 ;=========================================================
EVALFI(DFN,DEFARR,ENODE,FIEVAL) ;Evaluate education findings.
 D EVALFI^PXRMINDX(DFN,.DEFARR,ENODE,.FIEVAL)
 Q
 ;
 ;=========================================================
EVALPL(FINDPA,ENODE,TERMARR,PLIST) ;Evaluate education term findings
 ;for patient lists.
 D EVALPL^PXRMINDL(.FINDPA,ENODE,.TERMARR,PLIST)
 Q
 ;
 ;=========================================================
EVALTERM(DFN,FINDPA,ENODE,TERMARR,TFIEVAL) ;Evaluate education terms.
 D EVALTERM^PXRMINDX(DFN,.FINDPA,ENODE,.TERMARR,.TFIEVAL)
 Q
 ;
 ;=========================================================
GETDATA(DAS,FIEVT) ;Return data, for a specified V Patient ED entry.
 ;DBIA #4250
 D VPEDU^PXPXRM(DAS,.FIEVT)
 Q
 ;
 ;=========================================================
MHVOUT(INDENT,IFIEVAL,NLINES,TEXT) ;Produce the MHV output.
 N EM,FIEN,IND,JND,NAME,NOUT,PNAME,LOU,TEMP,TEXTOUT,VDATE
 S FIEN=$P(IFIEVAL("FINDING"),";",1)
 S TEMP=^AUTTEDT(FIEN,0)
 S PNAME=$P(TEMP,U,4)
 I PNAME="" S PNAME=$P(TEMP,U,1)
 S NAME="Education Topic: "_PNAME_" = "
 S IND=0
 F  S IND=+$O(IFIEVAL(IND)) Q:IND=0  D
 . S LOU=$G(IFIEVAL(IND,"VALUE"))
 . I LOU'="" S LOU=$$EXTERNAL^DILFD(9000010.16,.06,"",LOU,.EM)
 . S VDATE=IFIEVAL(IND,"DATE")
 . S TEMP=NAME_LOU_" ("_$$EDATE^PXRMDATE(VDATE)_")"
 . D FORMATS^PXRMTEXT(INDENT+2,PXRMRM,TEMP,.NOUT,.TEXTOUT)
 . F JND=1:1:NOUT S NLINES=NLINES+1,TEXT(NLINES)=TEXTOUT(JND)
 . I IFIEVAL(IND,"MEASUREMENT")'="" D
 .. S TEMP=IFIEVAL(IND,"MEASUREMENT")
 .. S NLINES=NLINES+1
 .. S TEXT(NLINES)=$$INSCHR^PXRMEXLC(INDENT+1," ")_"Measurement: "_$P(TEMP,U,1)
 ..;DBIA #6225
 .. I $P(TEMP,U,2)'="" S TEXT(NLINES)=TEXT(NLINES)_" "_$$UCUMCODE^LEXMUCUM($P(TEMP,U,2))
 S NLINES=NLINES+1,TEXT(NLINES)=""
 Q
 ;
 ;=========================================================
OUTPUT(INDENT,IFIEVAL,NLINES,TEXT) ;Produce the clinical
 ;maintenance output.
 N EM,FIEN,IND,JND,NOUT,PNAME,LOU,TEMP,TEXTOUT,VDATE
 S FIEN=$P(IFIEVAL("FINDING"),";",1)
 S TEMP=^AUTTEDT(FIEN,0)
 S PNAME=$P(TEMP,U,4)
 I PNAME="" S PNAME=$P(TEMP,U,1)
 I INDENT+17+$L(PNAME)<81 D
 . S NLINES=NLINES+1
 . S TEXT(NLINES)=$$INSCHR^PXRMEXLC(INDENT," ")_"Education Topic: "_PNAME
 E  D
 . N COL1W,COL2W,FMTSTR
 . S TEMP="Education Topic:^"_PNAME
 . S COL1W=INDENT+16,COL2W=80-COL1W
 . S FMTSTR=COL1W_"R1^"_COL2W_"L"
 . D COLFMT^PXRMTEXT(FMTSTR,TEMP," ",.NOUT,.TEXTOUT)
 . F JND=1:1:NOUT S NLINES=NLINES+1,TEXT(NLINES)=TEXTOUT(JND)
 S IND=0
 F  S IND=+$O(IFIEVAL(IND)) Q:IND=0  D
 . S VDATE=IFIEVAL(IND,"DATE")
 . S TEMP=$$EDATE^PXRMDATE(VDATE)
 . S LOU=$G(IFIEVAL(IND,"VALUE"))
 . I LOU'="" D
 .. S TEMP=TEMP_" level of understanding - "
 .. S TEMP=TEMP_$$EXTERNAL^DILFD(9000010.16,.06,"",LOU,.EM)
 . D FORMATS^PXRMTEXT(INDENT+2,PXRMRM,TEMP,.NOUT,.TEXTOUT)
 . F JND=1:1:NOUT S NLINES=NLINES+1,TEXT(NLINES)=TEXTOUT(JND)
 . I IFIEVAL(IND,"MEASUREMENT")'="" D
 .. S TEMP=IFIEVAL(IND,"MEASUREMENT")
 .. S NLINES=NLINES+1
 .. S TEXT(NLINES)=$$INSCHR^PXRMEXLC(INDENT+1," ")_"Measurement: "_$P(TEMP,U,1)
 ..;DBIA #6225
 .. I $P(TEMP,U,2)'="" S TEXT(NLINES)=TEXT(NLINES)_" "_$$UCUMCODE^LEXMUCUM($P(TEMP,U,2))
 . I IFIEVAL(IND,"COMMENTS")'="" D
 .. S TEMP="Comments: "_IFIEVAL(IND,"COMMENTS")
 .. D FORMATS^PXRMTEXT(INDENT+3,PXRMRM,TEMP,.NOUT,.TEXTOUT)
 .. F JND=1:1:NOUT S NLINES=NLINES+1,TEXT(NLINES)=TEXTOUT(JND)
 S NLINES=NLINES+1,TEXT(NLINES)=""
 Q
 ;
