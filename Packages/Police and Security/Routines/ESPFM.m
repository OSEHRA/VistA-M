ESPFM ;DALISC/RWW - FILE MANAGER PRINT/INQUIRY POLICE FILES; 7/93
 ;;1.0;POLICE & SECURITY;;Mar 31, 1994
PRNT ; FILE MANAGER PRINT
 D DICRW Q:Y<1  S L=1 G EN1^DIP
INQ ; FILE MANAGER INQUIRY
 D DICRW Q:Y<1  S DI=DIC,DPP(1)=+Y_"^^^@",DK=+Y
 G B^DII
DICRW ; SELECT FILE
 K %,DTOUT,BY,DA,DHD,DI,DIC,DPP,DK,DIQ,DIS,DUOUT,FR,L,TO
 D NOW^%DTC S DT=%\1 K %,%H,%I
 S DIC="^DIC(",DIC("S")="I +Y>909.99,+Y<920",DIC(0)="AEQM",DIC("A")="OUTPUT FROM WHAT VA POLICE FILE: "
 W ! D ^DIC K DIC I $D(DTOUT)!(Y<1) Q
 I $D(^DIC(+Y,0,"GL")) K DIC S DIC=^("GL") Q
 K DIC S Y=-1 Q
