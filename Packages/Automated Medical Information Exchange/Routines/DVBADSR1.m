DVBADSR1 ;ALB/GTS-557/THM-REPRINT AMIE NOTICE OF DISCHARGE ;21 JUL 89
 ;;2.7;AMIE;**17**;Apr 10, 1995
 D HOME^%ZIS
 D DUZ2^DVBAUTIL I $D(DVBAQUIT) K DVBAQUIT G EXIT
 ;
SETUP S HD="SINGLE NOTICE OF DISCHARGE REPRINTING"
 D NOPARM^DVBAUTL2 G:$D(DVBAQUIT) KILL^DVBAUTIL S DTAR=^DVB(396.1,1,0),FDT(0)=$$FMTE^XLFDT(DT,"5DZ")
 S HEAD="NOTICE OF DISCHARGE",HEAD1="FOR "_$P(DTAR,U,1)_" ON "_FDT(0)
 ;
EN W @IOF,!?(IOM-$L(HD)\2),HD,!!
 S DIC="^DVB(396.2,",DIC(0)="AEQM",DIC("A")="Enter NAME to reprint: "
 S DIC("W")="S DFN=$P(^DVB(396.2,+Y,0),U,1),ADM=$P(^(0),U,3) I $D(^DGPM(+ADM,0)),$P(^(0),U,17)]"""" S DCHPTR=$P(^(0),U,17),DISCH=$S($P(^DGPM(DCHPTR,0),U,1)]"""":$P(^(0),U,1),1:"""") X DVBA(""W"")"
 S DVBA("W")="W:$X>50 ! W ?($X+5),""Discharge date: "",$$FMTE^XLFDT(DISCH,""5DZ"")"
 D ^DIC I X=""!(X=U) K DVBA G EXIT
 I +Y<0 W *7,"   ??" H 1 G EN
 I $P(^DVB(396.2,+Y,0),U,7)'=DVBAD2 W *7,!!,"This does not belong to your RO.",!! H 3 G EN
 I +Y>0 S XDA=+Y,DA=$P(^DVB(396.2,+Y,0),U,1),ADMDT=$P(^(0),U,2),MB=$P(^(0),U,3)
 S %ZIS("B")="0;P-OTHER",%ZIS="AEQ",%ZIS("A")="Output device: " D ^%ZIS K %ZIS
 I $D(IO("Q")) S ZTIO=ION,ZTRTN="REPRINT^DVBADSNT",ZTDESC="Reprint notice of discharge" F I="H*","D*","FDT*","A*","XDA","MB" S ZTSAVE(I)=""
 I  D ^%ZTLOAD W:$D(ZTSK) !!,"Request queued",!! H 2 G KILL^DVBAUTIL
 I POP G KILL^DVBAUTIL
 D REPRINT^DVBADSNT K ^TMP($J) G SETUP
 ;
EXIT G KILL^DVBAUTIL