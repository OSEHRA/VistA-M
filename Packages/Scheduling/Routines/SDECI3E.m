SDECI3E ;ALB/SAT - VISTA SCHEDULING RELEASE 2 PRE/POST INSTALL ;FEB 04, 2016
 ;;5.3;Scheduling;**643**;Aug 13, 1993;Build 14
 ;
ENV ;
 D PQ
 Q
 ;
PQ  ;
 N SDI,SDNM,SDNOD,SDY
 ;K:$D(^XTMP("SDECI3E")) ^XTMP("SDECI3E")
 Q:$D(^XTMP("SDECI3E","PARAM"))
 S ^XTMP("SDECI3E",0)=$$FMADD^XLFDT($$NOW^XLFDT,,1)_"^"_$$NOW^XLFDT
 S SDI=0 F  S SDI=$O(^SD(403.53,SDI)) Q:SDI'>0  D
 .S SDNOD=$G(^SD(403.53,SDI,0))
 .S SDNM=$P(SDNOD,U,1)
 .S SDY=$P(SDNOD,U,5)
 .D ASK
 .S ^XTMP("SDECI3E","PARAM",SDI)=SDY
 Q
ASK  ;
 N DIR
 S DIR(0)="NA^0:45:0"
 S DIR("A")="ENTER the number of days for the CLEAN UP DAY SETTING field for DIVISION "_SDNM_": "
 S DIR("B")=$S('+SDY:45,+SDY>45:45,1:SDY)
 S DIR("?")="ENTER a number between 0 and 45."
 S DIR("??")="This is the number of days to enter into the CLEAN UP DAY SETTING field of the RECALL REMINDERS PARAMETERS file 403.53."
 D ^DIR
 S SDY=Y
 Q
 ;
PRE ;
 Q
 ;
POST ;
 D RPC
 D PAR
 D RECALL
 Q
 ;
RECALL  ;
 N SDFDA,SDMENU,SDNEW,SDSYN
 S SDMENU=$O(^DIC(19,"B","SDRR MANAGER MENU",0))
 I SDMENU="" W !!,"SDRR MANAGER MENU option not found.",! Q
 S SDNEW=$O(^DIC(19,"B","SDRR CLINIC LETTER REPORT",0))
 I SDNEW="" W !!,"SDRR CLINIC LETTER REPORT option not found.",! Q
 Q:$D(^DIC(19,SDMENU,10,"B",SDNEW))  ;already added
 S SDSYN=$O(^DIC(19,SDMENU,10,"C",999999999),-1)
 S SDSYN=$S(+SDSYN:SDSYN+1,1:9999)
 S SDFDA(19.01,"+1,"_SDMENU_",",.01)=SDNEW
 S SDFDA(19.01,"+1,"_SDMENU_",",2)=SDSYN
 S SDFDA(19.01,"+1,"_SDMENU_",",3)=SDSYN
 D UPDATE^DIE("","SDFDA")
 Q
 ;
PAR   ;
 N SDC,SDFDA,SDI
 S SDI=0 F  S SDI=$O(^XTMP("SDECI3E","PARAM",SDI)) Q:SDI=""  D
 .S SDC=^XTMP("SDECI3E","PARAM",SDI)
 .I ('+SDC)!(SDC>45) S SDC=45
 .S SDFDA(403.53,SDI_",",4)=SDC
 .D UPDATE^DIE("","SDFDA")
 K ^XTMP("SDECI3E")
 Q
 ;
RPC ;register SDEC rpcs
 Q
 N Y
 S Y=$$NOW^XLFDT,Y=$$FMTE^XLFDT(Y)
 W !!,"Registering new RPCs..."
 W !,Y
 D REGNMSP^SDECRPC("SDEC APPSLOTS","SDECRPC")
 D REGNMSP^SDECRPC("SDEC GETSITES","SDECRPC")
 D REGNMSP^SDECRPC("XUS SET VISITOR","SDECRPC")
 D REGNMSP^SDECRPC("XUS GET VISITOR","SDECRPC")
 Q
