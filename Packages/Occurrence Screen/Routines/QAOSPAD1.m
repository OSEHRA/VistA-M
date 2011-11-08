QAOSPAD1 ;HISC/DAD-ADVERSE FINDINGS REPORT ;2/12/93  15:13
 ;;3.0;Occurrence Screen;;09/14/1993
 S QAOSQUIT=0,PAGE=1,Y=DT X ^DD("DD") S TODAY=$P(Y,"@") K UNDL S $P(UNDL,"-",80)="-"
 D HEAD I '$D(^TMP($J,"A")) W !!,"NO DATA FOUND FOR THIS REPORT" G EXIT
 S SERV="" F SRV=0:0 S SERV=$O(^TMP($J,"A",SERV)) Q:SERV=""!QAOSQUIT  D SUBHEAD S PAT="" F PT=0:0 S PAT=$O(^TMP($J,"A",SERV,PAT)) Q:PAT=""!QAOSQUIT  F SCRN=0:0 S SCRN=$O(^TMP($J,"A",SERV,PAT,SCRN)) Q:SCRN'>0!QAOSQUIT  D LOOP1
EXIT ;
 Q
LOOP1 ;
 F DATE=0:0 S DATE=$O(^TMP($J,"A",SERV,PAT,SCRN,DATE)) Q:DATE'>0!QAOSQUIT  D LOOP2
 Q
LOOP2 ;
 S LOC=^TMP($J,"A",SERV,PAT,SCRN,DATE),SSN=$P(LOC,"^"),FIND=$P(LOC,"^",2),STATUS=$P(LOC,"^",3),ATTEND=$P(LOC,"^",4),PROV=$P(LOC,"^",5),TEAM=$P(LOC,"^",6),QAOSD0=$P(LOC,"^",7),Y=DATE\1 X ^DD("DD")
 W:QAOSCHOS'="X" ! W !!,PAT,?32,SSN,?43,Y,?56,SCRN,?63,STATUS,?71,FIND
 W !,$E(ATTEND,1,25),?27,$E(TEAM,1,25),?54,$E(PROV,1,25)
 I $Y>(IOSL-6) D:$E(IOST)="C" PAUSE Q:QAOSQUIT  D HEAD
 Q:QAOSCHOS="X"  S (DI,DM,DH)=.001
 I $O(^QA(741,QAOSD0,"ATRI",0))!$O(^QA(741,QAOSD0,"ATRT",0))!$O(^QA(741,QAOSD0,"ATRL",0)) W !,"-ATTRIBUTION(INDIVIDUAL)-",?27,"-ATTRIBUTION(MEDICAL TEAM)-",?56,"-ATTRIBUTION(HOSP LOC)-"
 E  Q
LOOP3 ;
 W ! D INDIV:DI,TEAM:DM,HOSPL:DH
 I $Y>(IOSL-6) D:$E(IOST)="C" PAUSE Q:QAOSQUIT  D HEAD W:$O(^QA(741,QAOSD0,"ATRI",DI))!$O(^QA(741,QAOSD0,"ATRT",DM))!$O(^QA(741,QAOSD0,"ATRL",DH)) !,"-ATTRIBUTION(INDIVIDUAL)-",?27,"-ATTRIBUTION(MEDICAL TEAM)-",?56,"-ATTRIBUTION(HOSP LOC)-"
 G:DI!DM!DH LOOP3
 Q
INDIV ;
 S DI=$O(^QA(741,QAOSD0,"ATRI",DI)) Q:DI'>0  S X=$S($D(^QA(741,QAOSD0,"ATRI",DI,0))#2:+^(0),1:""),X=$S(X'>0:X,($D(^VA(200,X,0))#2)&(QAOSCHOS="N"):$P(^(0),"^"),1:X) W $E(X,1,25)
 Q
TEAM ;
 S DM=$O(^QA(741,QAOSD0,"ATRT",DM)) Q:DM'>0  S X=$S($D(^QA(741,QAOSD0,"ATRT",DM,0))#2:+^(0),1:""),X=$S(X'>0:X,($D(^QA(741.93,X,0))#2)&(QAOSCHOS="N"):$P(^(0),"^"),1:X) W ?27,$E(X,1,25)
 Q
HOSPL ;
 S DH=$O(^QA(741,QAOSD0,"ATRL",DH)) Q:DH'>0  S X=$S($D(^QA(741,QAOSD0,"ATRL",DH,0))#2:+^(0),1:""),X=$S(X'>0:X,($D(^SC(X,0))#2)&(QAOSCHOS="N"):$P(^(0),"^"),1:X) W ?56,$E(X,1,25)
 Q
HEAD ;
 W:(PAGE>1)!($E(IOST)="C") @IOF
 W !!?32,"ADVERSE FINDINGS",?68,TODAY,!?QAQTART,QAQ2HED,?68,"PAGE: ",PAGE S PAGE=PAGE+1
 D EN6^QAQAUTL
 W !,"PATIENT",?32,"SSN",?43,"OCCURRENCE",?56,"SCREEN",?63,"STATUS",?71,"LEVEL" W:QAOSCHOS'="X" !,"ATTENDING PHYSICIAN",?27,"MEDICAL TEAM",?54,"RESIDENT/PROVIDER" W !,UNDL
 Q
SUBHEAD ;
 W !!?3,"SERVICE: ",$S(SERV["~":$P(SERV,"~",2),1:SERV)
 Q
PAUSE ;
 K DIR S DIR(0)="E" D ^DIR K DIR S QAOSQUIT=$S(Y'>0:1,1:0)
 Q