LRARWKD ;DALISC/CKA - ARCHIVE WKLD DATA (64.1);2/1/95
 ;;5.2;LAB SERVICE;**59**;July 31, 1995
 S LRART=64.1,LRARFL="" D CHECK^LRARU G:LRARFL=1 EXIT
 S LRAR=1 D NEW^LRARU
DATE ;Called from LR ARCHIVE 64.1 option
 ;Message
 W !!,"First enter a date range selection to archive the"
 W !,"WKLD DATA file (64.1)."
 ;Prompt for a range of dates
 D DT^DICRW
BEGDT W !!,"**** Date Range Selection ****",! S %DT="AE",%DT(0)="-T",%DT("A")="Beginning DATE: " D ^%DT
 I Y<0 D DELETE G:LRARFL BEGDT G EXIT
 S LRPBD=Y,LRBD=LRPBD-.0001
ENDDT W ! S %DT="AE",%DT("A")="Ending DATE: " D ^%DT
 I Y<0 D DELETE G:LRARFL ENDDT G EXIT
 G:Y<LRBD HELP W ! S LRPED=Y,LRED=LRPED+.99
 ;SAVE SELECTION CRITERIA IN LAB ARCHIVAL ACTIVITY FILE
 D SAVESEL^LRARU1
 ;OPTIONAL PRINT SELECTED ENTRIES
ASKPRT S DIR(0)="Y",DIR("A")="WOULD YOU LIKE TO PRINT SELECTED ENTRIES",DIR("B")="YES" D ^DIR
 I $D(DIRUT)!('Y) G COMP
PRT ;EN1^DIP CALL
 S L=0,DIC="^LRO(64.1,",BY=".01,.03,.01",FR=","_LRPBD,TO=","_LRPED
 D EN1^DIP
COMP ;ARCHIVING ACTION COMPLETED
 D COMP^LRARU1
EXIT K BY,DA,DIC,DIR,DIRUT,DTOUT,DUOUT,FR,L,LRAR,LRARC,LRARFL,LRARI,LRART,LRARX,LRBD,LRED,LRPBD,LRPED,TO,Y
 D CLN^LRARU1
 Q
HELP W "??",!?5,"Ending date must not be on or before beginning date" G DATE
CLEAR ;REMOVE DATA FROM ARCHIVED WKLD DATA FILE
 ;CHECK LAB ARCHIVAL ACTIVITY FILE
 W !!,"This will clear the data from the Archived Wkld Data file."
ASKCLR K DIR S DIR(0)="Y",DIR("A")="ARE YOU SURE YOU WANT TO DO THIS",DIR("B")="YES" D ^DIR K DIR
 I $D(DIRUT)!('Y) G EXIT
 S LRAR=3,LRART=64.1,LRARC=0 S LRARC=$O(^LAB(95.11,"O",2,LRART,LRARC)) G:LRARC="" ERROR D FILE^LRARU G:'$D(LRARC) EXIT
 ;CLEARING IN PROGRESS
 D MRK^LRARU1
 W !!,"I will now CLEAR out the global."
 S LRARX="" F LRARI=0:0 S LRARX=$O(^LAR(64.19999,LRARX)) Q:LRARX=""  K ^LAR(64.19999,LRARX)
 S ^LAR(64.19999,0)="ARCHIVED WKLD DATA^64.19999"
 W !!,">>> DONE <<<"
 ;UPDATE ENTRY IN LAB ARCHIVAL ACTIVITY FILE
 S LRAR=3 D UPDATE^LRARU1
 D COMP^LRARU1
 D CLN^LRARU1
 Q
DELETE K DIR S LRARFL="",DIR(0)="Y",DIR("A")="Do you want to delete this archival activity and forget this for now",DIR("B")="YES"
 D ^DIR
 I $D(DIRUT)!('Y) W !,"You must enter a beginning and ending date." S LRARFL=1 Q
 W !!,"Now deleting this archival activity..."
 S DIK="^LAB(95.11,",DA=LRARC D ^DIK W !!,">>> DONE <<<"
 Q
ERROR W !!,$C(7),"I cannot find an archival activity for file 64.1 with the correct archival status."
 G EXIT
 Q
 ;LRARC=LAB ARCHIVAL ACTIVITY INTERNAL FILE #
 ;LRARFL= OUTSTANDING ARCHIVAL ACTIVITY FLAG
 Q
