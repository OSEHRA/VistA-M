QAOSPWT0 ;HISC/DAD-PATIENTS AWAITING CLINICAL REVIEW ;4/30/93  09:41
 ;;3.0;Occurrence Screen;;09/14/1993
 K DIR S DIR(0)="SOM^C:Current Ward/Clinic;O:Occurrence Ward/Clinic"
 S DIR("A")="Sort report by",DIR("B")="Current Ward/Clinic"
 S DIR("?",1)="",DIR("?")="     Enter the desired sorting method."
 W ! D ^DIR G:$D(DIRUT) EXIT S QAOSSORT=Y
 D ^QAQDATE G:QAQQUIT EXIT
DEV ;
 K ^TMP($J,"QAOSPWT"),IOP,%ZIS S %ZIS="QM" D ^%ZIS G:POP EXIT
 I $D(IO("Q")) D  G EXIT
 . S ZTRTN="ENTSK^QAOSPWT0",ZTDESC="Patients awaiting clinical review"
 . S ZTSAVE("QAQ*")="",ZTSAVE("QAOSSORT")="" D ^%ZTLOAD
 . Q
ENTSK ;
 S QAOSCLIN=$O(^QA(741.2,"C",1,0))
 F QAOSD0=0:0 S QAOSD0=$O(^QA(741,"AD",0,QAOSD0)) Q:QAOSD0'>0  I '$D(^QA(741,QAOSD0,"REVR","B",QAOSCLIN)) D
 . S LOC=$G(^QA(741,QAOSD0,0)),SCRN=$G(^("SCRN")) Q:LOC=""!(SCRN="")
 . S NAME=+LOC,SSN=""
 . S:$D(^DPT(NAME,0))#2 NAME=$P(^(0),"^"),SSN=$P(^(0),"^",9)
 . S DATE=$P(LOC,"^",3)
 . S CURWARD=$S($D(^DPT(+LOC,.1))#2:^(.1),1:"~UNKNOWN")
 . S OCCWARD=+$P(LOC,"^",5),OCCWARD=$P($G(^SC(OCCWARD,0)),"^")
 . S:OCCWARD="" OCCWARD="~UNKNOWN"
 . S SCRNTXT=""
 . Q:(DATE<QAQNBEG)!(DATE>QAQNEND)
 . S:$D(^QA(741.1,SCRN,0))#2 SCRN=+^(0),SCRNTXT=$P(^(0),"^",2)
 . I QAOSSORT="C" S WRD=CURWARD,X=SCRNTXT_"^"_SSN_"^"_OCCWARD
 . E  S WRD=OCCWARD,X=SCRNTXT_"^"_SSN_"^"_CURWARD
 . S ^TMP($J,"QAOSPWT",WRD,SCRN,DATE,NAME)=X
 . Q
 S QAOSQUIT=0,PAGE=1,Y=DT X ^DD("DD") S TODAY=Y
 K UNDL S $P(UNDL,"-",80)="-"
 U IO D HEAD
 I '$D(^TMP($J,"QAOSPWT")) W !!,"NO PATIENTS FOUND AWAITING CLINICAL REVIEW" G EXIT
 S WARD="" F  S WARD=$O(^TMP($J,"QAOSPWT",WARD)) Q:WARD=""!QAOSQUIT  F SCRN=0:0 S SCRN=$O(^TMP($J,"QAOSPWT",WARD,SCRN)) Q:SCRN'>0!QAOSQUIT  F DATE=0:0 S DATE=$O(^TMP($J,"QAOSPWT",WARD,SCRN,DATE)) Q:DATE'>0!QAOSQUIT  D
 . S NAME=""
 . F NAM=0:0 S NAME=$O(^TMP($J,"QAOSPWT",WARD,SCRN,DATE,NAME)) Q:NAME=""!QAOSQUIT  D
 .. S LOC=^TMP($J,"QAOSPWT",WARD,SCRN,DATE,NAME)
 .. S SCRNTXT=$P(LOC,"^"),SSN=$P(LOC,"^",2),Y=DATE X ^DD("DD") S Y=$P(Y,"@")
 .. S X=$P(LOC,"^",3),WARD(0)=$S(X["~":$P(X,"~",2),1:X)
 .. W !!,NAME,?33,SSN,?45,Y,?59,$S(WARD["~":$P(WARD,"~",2),1:WARD)
 .. W !?1,SCRN,?8,$E(SCRNTXT,1,50),?59,WARD(0)
 .. I $Y>(IOSL-4) D:$E(IOST)="C" PAUSE D:'QAOSQUIT HEAD
 .. Q
 . Q
EXIT ;
 W ! D ^%ZISC K %ZIS,DATE,LOC,NAM,NAME,PAGE,POP,QAOSCLIN,QAOSD0,QAOSQUIT
 K SCRN,SCRNTXT,SSN,TODAY,UNDL,WARD,WRD,X,Y,ZTDESC,ZTRTN,ZTSAVE,QAOSSORT
 K D,I,Y,Z,OCCWARD,CURWARD,DIR,DIRUT,DTOUT,DUOUT,^TMP($J,"QAOSPWT")
 D K^QAQDATE S:$D(ZTQUEUED) ZTREQ="@"
 Q
HEAD ;
 W:(PAGE>1)!($E(IOST)="C") @IOF
 W !!?23,"PATIENTS AWAITING CLINICAL REVIEW",?68,TODAY
 W !?QAQTART,QAQ2HED,?68,"PAGE: ",PAGE S PAGE=PAGE+1
 D EN6^QAQAUTL
 W !,"PATIENT / SCREEN",?33,"SSN",?45,"DATE"
 W ?59,$S(QAOSSORT="C":"CURR/OCCUR",1:"OCCUR/CURR")," WARD/CLIN"
 W !,UNDL
 Q
PAUSE ;
 K DIR S DIR(0)="E" D ^DIR K DIR S QAOSQUIT=$S(Y'>0:1,1:0)
 Q
