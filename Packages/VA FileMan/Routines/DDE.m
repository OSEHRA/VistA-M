DDE ;SPFO/RAM,MKB - Entity Main Driver ;AUG 1,2018  12:37
 ;;22.2;VA FileMan;**9**;Jan 05, 2016;Build 73
 ;;Per VA Directive 6402, this routine should not be modified.
 ;
 Q
 ;
GET1(RESOURCE,ID,QUERY,MTYPE,ERROR) ; -- GET an item
 ;
 N RESULT,RESULT1,I,C
 S RESOURCE=$G(RESOURCE),ID=$G(ID),MTYPE=$G(MTYPE)
 ;
 D EN^DDEGET(RESOURCE,ID,.QUERY,,MTYPE,.RESULT,.ERROR)
 ; ID can return multiple items, if a set or panel
 ;
 S (C,RESULT1)=""
 I $D(RESULT) S I=0 F  S I=$O(@RESULT@(I)) Q:'I  D
 . S RESULT1=RESULT1_C_$G(@RESULT@(I))
 . S:'MTYPE C=", " ;JSON
 ;
 Q RESULT1
 ;
GET(RESOURCE,ID,QUERY,MTYPE,MAX,RESULT,ERROR) ; -- GET an item/collection
 ;
 S RESOURCE=$G(RESOURCE),ID=$G(ID),MTYPE=$G(MTYPE)
 D EN^DDEGET(RESOURCE,ID,.QUERY,.MAX,MTYPE,.RESULT,.ERROR)
 ; return array of items in @RESULT@(#), and/or ERROR(#)
 ;
 Q
 ;
PUT(RESOURCE,ID,BODY,MTYPE) ; -- PUT an item [not in use]
 ;
 N RESULT,RESULT1,C
 S RESOURCE=$G(RESOURCE),BODY=$G(BODY),ID=$G(ID),MTYPE=$G(MTYPE)
 ;
 ;D:MTYPE MAIN^DDEPXML(.RESULT,RESOURCE,BODY,ID,,"PUT")
 ;D:'MTYPE MAIN^DDEPJSON(.RESULT,RESOURCE,BODY,ID,,"PUT")
 ;
 S (RESULT1,C)=""
 I $D(RESULT) S I=0 F  S I=$O(@RESULT@(I)) Q:'I  D
 . S RESULT1=RESULT1_C_$G(@RESULT@(I))
 . S:'MTYPE C=", " ;JSON
 ;
 Q RESULT1
 ;
POST(RESOURCE,ID,BODY,MTYPE) ; -- POST an item [not in use]
 ;
 N RESULT,RESULT1,C
 S RESOURCE=$G(RESOURCE),BODY=$G(BODY),ID=$G(ID),MTYPE=$G(MTYPE)
 ;
 ;D:MTYPE MAIN^DDEPXML(.RESULT,RESOURCE,BODY,ID,,"POST")
 ;D:'MTYPE MAIN^DDEPJSON(.RESULT,RESOURCE,BODY,ID,,"POST")
 ;
 S (RESULT1,C)=""
 I $D(RESULT) S I=0 F  S I=$O(@RESULT@(I)) Q:'I  D
 . S RESULT1=RESULT1_C_$G(@RESULT@(I))
 . S:'MTYPE C=", " ;JSON
 ;
 Q RESULT1
 ;
DEL(RESOURCE,ID,MTYPE) ; -- DELETE an item [not in use]
 ;
 N RESULT,RESULT1,C
 S RESOURCE=$G(RESOURCE),ID=$G(ID),MTYPE=$G(MTYPE)
 ;
 ;D:MTYPE XML^DDEDEL(.RESULT,RESOURCE,ID)
 ;D:'MTYPE JSON^DDEDEL(.RESULT,RESOURCE,ID)
 ;
 S (RESULT1,C)=""
 I $D(RESULT) S I=0 F  S I=$O(@RESULT@(I)) Q:'I  D
 . S RESULT1=RESULT1_C_$G(@RESULT@(I))
 . S:'MTYPE C=", " ;JSON
 ;
 Q RESULT1
