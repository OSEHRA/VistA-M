PRSDPROC ;SC/GWB-PAID DOWNLOAD PRS GLOBAL PROCESSOR ;5/6/93  13:12
 ;;4.0;PAID;**109**;Sep 21, 1995;Build 5
 ;;Per VHA Directive 2004-038, this routine should not be modified.
 I '$D(^XTMP("PRS","TMP")) W !!,"There is no unprocessed PAID download data." R !!,"Press return to continue ",A:DTIME K A Q
TASK S ANS=""
 S %=0 W !!,"Do you want to task this job" D YN^DICN
 I %=-1 G EXIT
 I %=0 W !,?4,*7,"ANSWER 'YES' OR 'NO':" G TASK
 I %=1 S ZTRTN="PROC^PRSDPROC",ZTIO="",ZTDESC="PAID DOWNLOAD PROCESSOR" D ^%ZTLOAD Q
 S:%=2 ANS="N"
PROC S DATE="",SUB="TMP" D NOW^%DTC S TIME=%
 F L1=1:1 S DATE=$O(^XTMP("PRS",SUB,DATE)) Q:DATE=""  S TYPE="" F L2=1:1 S TYPE=$O(^XTMP("PRS",SUB,DATE,TYPE)) Q:TYPE=""  S STA="" F L3=1:1 S STA=$O(^XTMP("PRS",SUB,DATE,TYPE,STA)) Q:STA=""  S ECNT=0 D MSG,START^PRSDSERV,^PRSDSTAT
EXIT D EXIT^PRSDSERV
 I $D(ZTQUEUED) S ZTREQ="@"
 K ANS,L1,L2,L3,TIME
 Q
ERR I '$D(^XTMP("PRS","ERR")) W !!,"There are no unprocessed PAID download errors." R !!,"Press return to continue ",A:DTIME K A Q
 S DATE="",SUB="ERR"
 F L1=1:1 S DATE=$O(^XTMP("PRS",SUB,DATE)) Q:DATE=""  S TYPE="" F L2=1:1 S TYPE=$O(^XTMP("PRS",SUB,DATE,TYPE)) Q:TYPE=""  S STA="" F L3=1:1 S STA=$O(^XTMP("PRS",SUB,DATE,TYPE,STA)) Q:STA=""  S ECNT=0,ANS="" D MSG,START^PRSDSERV
 G EXIT
MSG S MTYPE=$S(TYPE="I":"Initial",TYPE="E":"Edit & Update",TYPE="P":"Payrun",TYPE="T":"Transfer",1:"")
 Q:'$D(ANS)
 W !!,"Processing ",MTYPE," data for station ",STA," for ",$E(DATE,5,6),"/",$E(DATE,7,8),"/",$E(DATE,3,4)," "
 Q
PRSD ;R !,"SSN: ",SSN:DTIME G:(SSN["^")!(SSN="") PRSDEX
 ;R !,"START WITH MSG #: ",MSGNUM:DTIME G:(MSGNUM["^")!(MSGNUM="") PRSDEX
 ;S BSKTIEN=0,BSKTIEN=$O(^XMB(3.7,.5,2,"B","S.PRSD",BSKTIEN))
 ;S XMZ=MSGNUM-1 F  S XMZ=$O(^XMB(3.7,.5,2,BSKTIEN,1,XMZ)) Q:XMZ'>0  W "." S XMPOS=0 F  D REC^XMS3 Q:XMER<0  D
 ;.I XMRG["****PDH" S TYPE=XMRG
 ;.I XMRG[SSN W !!,XMZ_"-"_XMPOS_TYPE,!!,XMRG
PRSDEX ;K SSN,MSGNUM,BSKTIEN,XMZ,TYPE,XMRG,XMER,XMPOS
 ;Q
XMB R !,"APPLICATION: ",APP:DTIME G:(APP["^")!(APP="") XMBEX
 R !,"ROUTING IND: ",RI:DTIME G:(RI["^")!(RI="") XMBEX
 R !,"DAY NUMBER: ",DN:DTIME G:(DN["^")!(DN="") XMBEX
 R !,"SSN: ",SSN:DTIME G:(SSN["^")!(SSN="") XMBEX
 S SUB=APP_"/"_RI_" #"_DN,TYPE=""
 F  S SUB=$O(^XMB(3.9,"B",SUB)) Q:SUB'[APP  W "." S XMZ=0,XMZ=$O(^XMB(3.9,"B",SUB,XMZ)) S XMPOS=0 F  D REC^XMS3 Q:XMER<0  D
 .I XMRG["****PDH" S TYPE=XMRG
 .I XMRG[SSN W !!,XMZ_"-"_XMPOS_TYPE,!!,XMRG
XMBEX K APP,RI,DN,SSN,SUB,TYPE,XMZ,XMRG,XMER,XMPOS
 Q
FIX R !,"IEN#1: ",IEN1:DTIME G:(IEN1["^")!(IEN1="") FIXEX
 R !,"IEN#2: ",IEN2:DTIME G:(IEN2["^")!(IEN2="") FIXEX
 S PPIEN=0 F  S PPIEN=$O(^PRST(459,PPIEN)) Q:PPIEN'>0  I $D(^PRST(459,PPIEN,"P",IEN1)) D
 .W !,"PAY PERIOD ",^PRST(459,PPIEN,0)
 .S %X="^PRST(459,PPIEN,""P"","_IEN1_","
 .S %Y="^PRST(459,PPIEN,""P"","_IEN2_","
 .I '$D(^PRST(459,PPIEN,"P",IEN2)) D %XY^%RCR S $P(^PRST(459,PPIEN,"P",IEN2,0),"^",1)=IEN2,^PRST(459,PPIEN,"P","B",IEN2,IEN2)=""
 .K ^PRST(459,PPIEN,"P",IEN1),^PRST(459,PPIEN,"P","B",IEN1,IEN1)
 S PPIEN=0 F  S PPIEN=$O(^PRST(455,PPIEN)) Q:PPIEN'>0  I $D(^PRST(455,PPIEN,1,IEN1)) D
 .W !,"PAY PERIOD ",$P(^PRST(455,PPIEN,0),"^",1)
 .S %X="^PRST(455,PPIEN,1,"_IEN1_","
 .S %Y="^PRST(455,PPIEN,1,"_IEN2_","
 .I '$D(^PRST(455,PPIEN,1,IEN2)) D %XY^%RCR S $P(^PRST(455,PPIEN,1,IEN2,0),"^",1)=IEN2,^PRST(455,PPIEN,1,"B",IEN2,IEN2)=""
 .K ^PRST(455,PPIEN,1,IEN1),^PRST(455,PPIEN,1,"B",IEN1,IEN1)
 D FIXEX G FIX
FIXEX K IEN1,IEN2,PPIEN,%X,%Y
 Q
