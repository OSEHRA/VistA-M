FHDPA ; HISC/REL - Patient Look-Up ;2/1/95  09:46 ;
 ;;5.5;DIETETICS;;Jan 28, 2005;
 ; ALL=0 - only inpatients
F1 R !!,"Select Patient (Name or SSN): ",X:DTIME G NOP:'$T!(U[X)!(X="*")
 K DIC S DIC="^DPT(",DIC(0)="EQZM" S:'ALL DIC("S")="I $D(^DPT(Y,.1))" D ^DIC K DIC G NOP:U[X,F1:X["?" I Y<1 W !,$S('ALL:"Inp",1:"P"),"atient Not Selected" G F1
ENOM ;OUTPATIENT MEALS (^FHOMDPA) ENTRY POINT
 S (DA,DFN)=+Y,FHWF=$S($D(^ORD(101)):1,1:0),FHPV=DUZ
 S FHZ115="P"_DFN D ADD^FHOMDPA I FHDFN="" Q
F2 S WARD=$G(^DPT(DFN,.1)) D PID
 I WARD="" Q:ALL  W *7,!!,"NOT CURRENTLY AN INPATIENT!",! G NOP
 S ADM=$G(^DPT("CN",WARD,DFN)) G:ADM<1 NOP
 Q:$D(^FHPT(FHDFN,"A",ADM,0))  G:'$D(^DGPM(ADM,0)) NOP
 D ^FHWADM S FHPV=DUZ Q
NOP S (DFN,DFNF2,FHDFN)=0,Y=-1 Q
PID ; Get patient variables
 D PID^VADPT6 S PID=$G(VA("PID")),BID=$G(VA("BID")) K VA Q
DID ; Get dietetic ward
 S (FHWRD,FHRMB)="" S WARD=$G(^DPT(DFN,.1)) Q:WARD=""  S FHRMB=$G(^DPT(DFN,.108))
 I FHRMB S FHWRD=$O(^FH(119.6,"AR",+FHRMB,0)) Q:FHWRD
 N W1 S W1=$O(^DIC(42,"B",WARD,0)) Q:W1=""  S FHWRD=$O(^FH(119.6,"AW",W1,0)) Q
