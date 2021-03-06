MCARPACE ;WISC/RMP,TJK-COMBINED GENERATOR,LEAD ENTER/EDIT ;5/2/96  13:02
 ;;2.3;Medicine;**16,31**;09/13/1996
 W @IOF,!!!,"COMBINED IMPLANT/LEADS PROCEDURES",!!!
 S DIC="^MCAR(698,",DIC(0)="AELQM",(DLAYGO,DIDEL)=698
 S DIC("A")="Enter Patient name or Date of Generator Implant: "
 S DIC("DR")=".01;1//"_$G(MCPATNM)
 D ^DIC G:Y<1 EXIT
 S DFN=$P(^MCAR(698,+Y,0),U,2),DFNUM=$P(^MCAR(690,DFN,0),U,1),MCPATNM=$P(^DPT(DFNUM,0),"^",1)
 W !,"Generator Information...."
 S DIE=DIC,(DA,MCARGDA,MCARGDA1)=+Y,DR="2;4;6;S:$P(^(0),U,6)'=12 Y=7;6.1;7;12;14;19:601",MCFILE=698 S MCARGNUM=$$NUM(MCFILE) D IN^MCEO
 G EXIT:$D(DTOUT)!$D(DUOUT) D ^DIE,OUT^MCEO,QTASK^MCPARAM G EXIT:$D(DUOUT),EXIT:$D(DTOUT) K DIC,DIE,DR,DA S MCSEL=$P(^MCAR(698,MCARGDA,0),U,7)
 G @($S(MCSEL["A":"ALEAD",MCSEL["V":"VLEAD",1:"EXIT"))
ALEAD W !,"Atrial Lead Data...." S (DLAYGO,MCFILE,DIDEL)=698.2 D LAST
 S DIC="^MCAR(698.2,",DIC(0)="AELQM",DIC("DR")="1////^S X=DFN",DIC("S")="I $P(^(0),U,2)=DFN",DIC("B")=$P(^MCAR(698,MCARGDA,0),U)
 D ^DIC K DIC("B"),DIC("S") G EXIT:$D(DUOUT)!($D(DTOUT)) G:Y<0 @$S(MCSEL["V":"VLEAD",1:"EXIT")
 S DIE=DIC,(MCARGDA,DA)=+Y,DR="2;4:601",MCFILE=698.2 S MCARGNUM=$$NUM(MCFILE) D IN^MCEO G EXIT:$D(DTOUT)!$D(DUOUT) D ^DIE,OUT^MCEO,QTASK^MCPARAM K DIC,DIE,DR,DA
 G @($S(MCSEL["V":"VLEAD",1:"EXIT"))
VLEAD W !,"Ventricular Lead Data..." S (DLAYGO,MCFILE,DIDEL)=698.1 D LAST
 S DIC="^MCAR(698.1,",DIC(0)="AEQLM",DIC("DR")="1////^S X=DFN",DIC("S")="I $P(^(0),U,2)=DFN",DIC("B")=$P(^MCAR(698,MCARGDA,0),U)
 D ^DIC K DIC("B"),DIC("S") G EXIT:$D(DUOUT)!($D(DTOUT)),EXIT:Y<0
 S DIE=DIC,(MCARGDA,DA)=+Y,DR="2;4:601",MCFILE=698.1 S MCARGNUM=$$NUM(MCFILE) D IN^MCEO G EXIT:$D(DTOUT)!$D(DUOUT) D ^DIE,OUT^MCEO,QTASK^MCPARAM K DIC,DIE,DR,DA
 G EXIT
GEN2 W !,"GENERATOR DATA..."
 I $D(MCOEON) K MCORSV
 S MCFILE=698,DIE="^MCAR(698,",(DA,MCARGDA)=MCARGDA1,DR="19:601" D ^DIE K DIC,DIE,DR,DA,MCARGDA1 D ORDER1,QTASK^MCPARAM
EXIT K MCSEL,DFN,MCARGDA,DLAYGO,DIDEL,DFNUM Q
NUM(MCFILE) ;
 Q $O(^MCAR(697.2,"C","MCAR("_MCFILE,0))
LAST S (Y,I)=0 F  S I=$O(^MCAR(MCFILE,"C",DFN,I)) Q:I=""  S X=+$G(^MCAR(MCFILE,I,0)) I X,X>Y S Y=X
 I 'Y W !!,"No ",$S(MCFILE=698.1:"Ventricular",1:"Atrial")," Lead data entered for this patient",!! K I,Y,X Q
 X ^DD("DD") W !!,"Last ",$S(MCFILE=698.1:"Ventricular",1:"Atrial")," Lead implanted on ",Y,!! K X,Y,I Q
 ;
DEM ;    EDIT DEMOGRAPHIC INFORMATION ONLY
 W @IOF,!!!,"DEMOGRAPHIC INFORMATION",!!!
 ;S (DIC,DIE)="^MCAR(690,",DIC(0)="AEMQZ",DIC("B")=$G(MCPATNM)
 S (DIC,DIE)="^MCAR(690,",DIC(0)="AELMQZ",DIC("B")=$G(MCPATNM),DLAYGO=690
 D ^DIC
 K DIC
 IF Y'<0 D
 .  S MCPATNM=Y(0,0) ;    new default name
 .  S DA=+Y,DR="[MCARPACEDIT]"
 .  D ^DIE
 .  Q
 ;END IF
 ;
 QUIT
 ;
ORDER1 ;
 Q:'$D(MCOEON)  Q:'$D(^MCAR(MCFILE,MCARGDA))  Q:$D(DTOUT)
 Q
