PRCG238Q ;WISC/BGJ-IFCAP 410 FILE CLEANUP (QUEUE) ;11/8/99
V ;;5.1;IFCAP;**193**;Oct 20, 2000;Build 9
 ;Per VA Directive 6402, this routine should not be modified.
 ;This routine is installed by patch PRC*5*238.
 ;This routine creates entries in file 443.1 for background processing
 ;by PurgeMaster.  Entries are created for files 410, 410.1 and 443.
 ;Routine PRCG238P will be utilized by PurgeMaster to actually purge the
 ;entries in these files.
 ;
 ;PRC*5.1*193 Added universal date control query to process
 ;
 W @IOF,!
 D MSG
 S %A="Are you ready to continue",%A(0)="!",%=1
 D ^PRCFYN Q:%'=1
 S PRCF("X")="AS" D ^PRCFSITE G OUT:'%
 D NOW^%DTC K %H,%,%I
 S CFY=$E(X,1,3)+1700,CFY=$S(+$E(X,4,5)>9:CFY+1,1:CFY)
 S PFY=CFY-1700-1_"0930"
 ;
DT ;Ask processing date     PRC*5.1*193
 S PRCGOUT=$$PURGEDT^PRCGPUTL("",7)
 I PRCGPGDT'>0!PRCGOUT G OUT
 W !! S %A="The archiving processing will go through date "_PRCGDOUT_" is this OK?" S %=1 D ^PRCFYN G OUT:%'=1
 W !! S %A="ARE YOU SURE" D ^PRCFYN I %'=1 W ?35,"I am confused, let's start over..." G DT
 S Y=PRCGPGDT,PRC("PERMDATE")=Y,PRC("TEMPDATE")=Y
 ;
DQ ;
 I $D(ZTQUEUED) S ZTREQ="@"
 F I=1:1 S X=$T(LOAD+I) Q:$P(X,";",3)=""  D
 . S FILE(I)=$P(X,";",3),GLO(I)=$P(X,";",4),REF(I)=$P(X,";",5),ADDVAR(I)=$P(X,";",6)
 S N=0,TREC=0
 F  S N=$O(GLO(N)) Q:'N  D
 . S X="S REC(N)=$P("_GLO(N)_"0),U,4)" X X S TREC=TREC+REC(N)
 S OGET=TREC\1000+1
 S MESSAGE="CREATING PURGEMASTER ENTRIES FOR FILE CLEANUP"
 D BEGIN^PRCGU
 S LEVEL=0
 F  S LEVEL=$O(GLO(LEVEL)) Q:LEVEL=""  D
 . S GLO=GLO(LEVEL),REF=REF(LEVEL),ADDVAR=""
 . S:ADDVAR(LEVEL)]"" @("ADDVAR="_ADDVAR(LEVEL))
 . S NEXT=0
 . F  D  S XCOUNT=XCOUNT+COUNT D PERCENT^PRCGU Q:'NEXT
 . . S COUNT=0
 . . F  D  Q:'NEXT!(COUNT>LREC)
 . . . S GET=($S((LREC-COUNT)>OGET:OGET,1:(LREC-COUNT)+2))-1
 . . . I GET<1 S GET=1
 . . . D GET
 . . . Q:'NEXT
 . . . S COUNT=COUNT+ICOUNT
 . . . S Z="",ROUTINE=REF_"^PRCG238P",VARIABLE=BEGDA_"-"_ENDA_";"_PRC("SITE")
 . . . I ADDVAR]"" S VARIABLE=VARIABLE_";"_ADDVAR
 . . . D ADD^PRCGPM1(ROUTINE,VARIABLE,.Z)
 D END^PRCGU
 ;
OUT ;
 K A,ADDVAR,ATERM,BEGDA,BTIME,CFY,COUNT,CURSOR,DX,DY,ENDA,FILE,GET,GLO
 K HOURS,ICOUNT,LEVEL,LINE,LREC,MIN,NEXT,OGET,OUT,PERCENT,PFY,REC,REF
 K ROUTINE,RTIME,SEC,TIME,TREC,TTIME,VARIABLE,X,XCOUNT,XPOS,Y,Z,PRC
 K PRCGOUT,PRCGDOUT,PRCGPGDT
 D KILL^%ZISS
 Q
GET ;
 S (BEGDA,ENDA)=NEXT+1,ICOUNT=1
 S @("NEXT=$O("_GLO_"NEXT))")
 I 'NEXT S NEXT="" Q
 S BEGDA=NEXT,(NEXT,ENDA)=NEXT+GET,ICOUNT=ENDA-BEGDA+1
 Q
MSG ;
 S X="This will schedule records in files 410, 410.1 and 443 for review "
 S X=X_"in the background by PurgeMaster (file 443.1 will be populated).  "
 S X=X_"Entries in file 410 will be purged first by PurgeMaster based "
 S X=X_"on dates that you will enter.  As data in file 410 is purged, "
 S X=X_"related entries in file 410.1 are also purged.  Entries in file "
 S X=X_"443 will be purged next if there is no corresponding entry in "
 S X=X_"file 410.  Finally, additional clean-up will be performed on file 410.1."
 D MSG^PRCFQ
 W ! S X="The dates you are about to enter MUST be confirmed with A&MM "
 S X=X_"or Fiscal staff.  FAILURE TO DO SO MAY RESULT IN DATA "
 S X=X_"CORRUPTION." D MSG^PRCFQ W $C(7),$C(7),$C(7)
 Q
LOAD ;
 ;;410;^PRCS(410,;410;PRC("TEMPDATE")_"-"_PRC("PERMDATE")
 ;;443;^PRC(443,;443
 ;;410.1;^PRCS(410.1,;4101;"-"_PRC("PERMDATE")
 ;;;
