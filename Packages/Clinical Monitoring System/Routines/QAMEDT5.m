QAMEDT5 ;HISC/DAD-EDIT MANUALLY ENROLL A FALL OUT ;2/10/92  07:33
 ;;1.0;Clinical Monitoring System;;09/13/1993
MONITOR ;
 K DIC S DIC="^QA(743,",DIC(0)="AEMNQ",DIC("A")="Select MONITOR: " W ! D ^DIC K DIC G:Y'>0 EXIT S QAMD0=+Y
 S QAMZERO=$S($D(^QA(743,QAMD0,0))#2:^(0),1:""),QAMONE=$S($D(^QA(743,QAMD0,1))#2:^(1),1:"")
 I $P(QAMZERO,"^",5)'>0 W !!?5,"*** THIS MONITOR IS STILL UNDER CONSTRUCTION, CANNOT CONTINUE ***",*7 G MONITOR
 I $P(QAMONE,"^",5)'>0 W !!?5,"*** THIS MONITOR'S ON/OFF SWITCH IS TURNED OFF, CANNOT CONTINUE ***",*7 G MONITOR
PATIENT ;
 K DIC S DIC="^DPT(",DIC(0)="AEMNQZ",DIC("A")="Select PATIENT: ",DIC("W")="D DICW^QAMEDT5" W ! D ^DIC K DIC G:Y'>0 MONITOR S QAMDFN=+Y,QAMDFN(0)=Y(0)
DATE ;
 D NOW^%DTC S QAMDT=% K %DT S %DT="ESTX",%DT(0)=-QAMDT,%DT("A")="EVENT DATE: " W !!,%DT("A") R X:DTIME S:('$T)!(X="") X="^" S QAMX1=$E(X) G:QAMX1="^" PATIENT
 I QAMX1="?" D HELP^%DTC W !!,"Searching FALL OUT file for this patient/monitor...",! S QAMDFLT=0 D LOOP0 G:QAMFOUND ASKEDIT W !,"No fall outs found for this patient/monitor." G DATE
 D ^%DT K %DT G:Y'>0 DATE S QAMEVENT=Y X ^DD("DD") S QAMEVENT(0)=Y
 I (QAMEVENT<$S($P(QAMONE,"^",6):$P(QAMONE,"^",6),1:9999999))!(QAMEVENT>$S($P(QAMONE,"^",7):$P(QAMONE,"^",7),1:9999999)) W !!?5,"*** OUTSIDE START/END DATE RANGE OF MONITOR ***",*7
 I  S Y=$P(QAMONE,"^",6) X ^DD("DD") W !?5,"*** START DATE: ",$S(Y]"":Y,1:"NONE") S Y=$P(QAMONE,"^",7) X ^DD("DD") W "    END DATE: ",$S(Y]"":Y,1:"NONE")," ***" G DATE
 W !!,"Searching FALL OUT file for this patient/monitor...",! S QAMDFLT=QAMEVENT D LOOP0
 I 'QAMFOUND W !,"No fall outs found for this patient/monitor." G ASKADD
ASKEDIT W !!,"Do you want to edit ",$S(QAMFOUND>1:"one of these records",1:"this record")
 S %=1 D YN^DICN G ASKADD:(%=2)&(QAMX1'="?"),DATE:(%=2)&(QAMX1="?"),PATIENT:%=-1 I '% W !!?5,"Please answer Y(es) or N(o)" G ASKEDIT
 I QAMFOUND=1 S QAMREC=$P(QAMLIST,"^",2) G EDIT
ASKREC R !!,"Record number: ",QAMREC:DTIME S:('$T)!(QAMREC="") QAMREC="^" G PATIENT:$E(QAMREC)="^",EDIT:QAMLIST[("^"_QAMREC_"^") W:$E(QAMREC)'="?" " ??",*7
 W !!,"Enter the record number you wish to edit.",! D LOOP0 G ASKREC
ASKADD W !!,*7,"Are you adding:" S DFN=QAMDFN D PID^VADPT6
 W !?3,$P(QAMDFN(0),"^"),?38,VA("PID"),?58,QAMEVENT(0),!?3,$P(QAMZERO,"^",2),?38,$P(QAMZERO,"^"),$S($P(QAMZERO,"^",4):" (a)",1:" (m)"),!,"as a new Fall Out record"
 S %=0 D YN^DICN G PATIENT:(%=2)!(%=-1)!((%=0)&(%Y="")) I '% W !!?5,"Please answer Y(es) or N(o)" G ASKADD
 K DD,DIC,DINUM,DO S DIC="^QA(743.1,",DIC(0)="LM",DIC("DR")=".02///`"_QAMD0_";.03///"_QAMEVENT_";.04///TODAY",DLAYGO=743.1,X=QAMDFN D FILE^DICN K DIC S QAMREC=+Y,QAUDIT("ACTION")="o",QAUDIT("COMMENT")="MANUAL ENROLLED FALL OUT" D AUDIT^QAMEDT5A
EDIT ;
 D ^QAMEDT5A G PATIENT
EXIT ;
 K %,%DT,DA,DIC,DIE,DLAYGO,DR,QA,QAMD0,QAMD1,QAMDFN,QAMDT,QAMEVENT,QAMFOUND,QAMONE,QAMREC,QAMZERO,X,Y,QAMDFLT,QAMLIST,QAMX1,D0,D1,DA,DTOUT,DIRUT,QAM,QAMFLD,QAMIEN,QAMPCENT,QAMQUIT,QAMXFORM
 K %Y,DIQ,MAX,QADA,QAMDA,QAMDD,QAMDTPT,QAME1,QAMELEM,QAMFIELD,QAMLEVL,QAMDIR,DFN,VA,DGT,DI,DQ,QADIROUT,QADIRPNT,QAMID,QAMIDENT,QAMY,VAERR
 Q
LOOP0 S QAMFOUND=0,QAMLIST="^" F QAMDT=(QAMDFLT\1-.0000001):0 S QAMDT=$O(^QA(743.1,"AB",QAMD0,QAMDFN,QAMDT)) Q:QAMDT'>0  Q:(QAMDT\1'=(QAMDFLT\1))&QAMDFLT  D LOOP1
 Q
LOOP1 F QAMD1=0:0 S QAMD1=$O(^QA(743.1,"AB",QAMD0,QAMDFN,QAMDT,QAMD1)) Q:QAMD1'>0  S QAMFOUND=QAMFOUND+1,Y=QAMDT,QAMLIST=QAMLIST_QAMD1_"^" X ^DD("DD") W !?5,QAMD1,?15,Y
 Q
DICW S QAMY=+Y,QAMID="" N Y F QAMID(0)=0:0 S QAMID=$O(^DD(2,0,"ID",QAMID)) Q:QAMID=""  S Y=QAMY,QAMIDENT=^DD(2,0,"ID",QAMID),QAM=$S($D(^DPT(QAMY,0))#2:^(0),1:"") Q:QAM=""  X QAMIDENT
 Q:'$D(^QA(743.1,"B",QAMY))  N DIC S DIC="^QA(743.1," W !?7,"*** FALL OUTS ***"
 F QA=0:0 S QA=$O(^QA(743.1,"B",QAMY,QA)) Q:QA'>0  W !?5 S QAMID="" F QAMID(0)=0:0 S QAMID=$O(^DD(743.1,0,"ID",QAMID)) Q:QAMID=""  S Y=QA,QAMIDENT=^DD(743.1,0,"ID",QAMID),QAM=$S($D(^QA(743.1,QA,0))#2:^(0),1:"") Q:QAM=""  X QAMIDENT
 Q
