LRMISTF ;SLC/CJS/BA - MASS DATA ENTRY INTO FILE 63.05 ;6/26/18 1:38pm
 ;;5.2;LAB SERVICE;**153,476,508,513**;Sep 27, 1994;Build 2
 ;Per VHA Directive 2004-038, this routine should not be modified.
 ;from option LRMISTUF
ACCESS I '$D(^XUSEC("LRVERIFY",DUZ)) W !,"You're not cleared for this option. You must have the LRVERIFY Key." Q
 ; LR*5.2*476 - CR; added codes #1, #20.5, and #26.5 per NSR 20161009
BEGIN D ^LRPARAM Q:$G(LREND)  S LREND=0,LRVT="RE",LRSBS="1^13^11.6^11.57^11.58^17^15.51^21^19.6^20.5^26.5^27^24^37",(Z(1),Z(13),Z(11.6),Z(11.57),Z(11.58))=1,(Z(17),Z(15.51))=5,(Z(21),Z(19.6),Z(20.5))=8,(Z(27),Z(24),Z(26.5))=11,Z(37)=16
 S LRMIMASS=1
 D ASK
 I $D(LRCSQ),$O(^XTMP("LRCAP",LRCSQ,DUZ,0)) D STD^LRCAPV
END D ANN^LRMIEDZ,^LRGVK
 K %,AGE,DA,D1,DFN,DIC,DIE,DLAYGO,DOB,DQ,DR,H9,I,J,K,LRAA,LRAD,LRAN,LRCDT,LRCO,LRDFN,LRDPF,LRECODE,LREND,LRIDT,LRLLOC,LRMF,LRMODE,LROK,LRNOP,LRPF,LRSB,LRSBCNT,LRSBS,LRSCREEN,LRTEST,LRWRD,LRVT,POP,PNM,R,SEX,SSN,X,X1,X2,Y,Z
 K LRMIMASS
 Q
ASK D LRAA^LRMIUT Q:LRAA<1  S LRSS=$P(^LRO(68,LRAA,0),U,2)
 I LRSS="" W !?5,"Accession Area LR SUBSCRIPT is misssing.",! Q
 I $P(LRPARAM,U,14) D ^LRCAPV G:LREND ANN^LRMIEDZ
 S %DT="AE",%DT("A")="Micro Accession Year: ("_$E(DT,2,3)_")//" D ^%DT K %DT("A") Q:X[U  S:X="" Y=$E(DT,1,3) S LRAD=$E(Y,1,3)_"0000"
 S DIC="^LAB(60,",DIC("A")="Select MICROBIOLOGY TEST: ",DIC(0)="AEMOQ",DIC("S")="I $P(^(0),U,4)=""MI"",$L($P(^(0),U,14))" D ^DIC K DIC Q:Y<1  S LRTEST=+Y
 S LRECODE=$P(^LAB(60,LRTEST,0),U,14),LRECODE=$S($D(^LAB(62.07,LRECODE,.1)):^(.1),1:"")
 ; LR*5.2*513 load codes into array LRECDS
 N LRECDS D GETCODES
 K LRSB S LRSBCNT=0 F LRSB=1:1 S X=$P(LRSBS,U,LRSB) Q:'X  I $D(LRECDS(X)) S LRSB(X)="",LRSBCNT=LRSBCNT+1
 I 'LRSBCNT W "Test does not have an appropriate entry in the EDIT CODE" Q
 F I=0:0 R !,"Preliminary or Final: ",X:DTIME Q:'$T!(X[U)!(X="P")!(X="F")  W !,"Enter ""P"" or ""F""."
 Q:'$T!(X[U)  S LRPF=X
 I LRSBCNT=1 S H9=$O(LRSB(0)),LRSB=Z(H9),LRMF=$P(^DD(63.05,H9,0),U) W !,LRMF K DIC
 I LRSBCNT'=1 S DIC("A")="Enter the field to edit: ",DIC(0)="AE",DIC("S")="I $D(LRSB(+Y))",DIC="^DD(63.05," D ^DIC K DIC Q:Y<1  S H9=+Y,LRSB=Z(H9),LRMF=$P(^DD(63.05,H9,0),U)
 F I=0:0 R !,"1  Automatically enter your entry.",!,"2  Prompt with your entry.",!,"3  Just Prompt.",!,"Choice: ",X:DTIME Q:X=""!(X[U)!(X<4&(X>0)&(X?1N))  D INFO
 Q:X=""!(X[U)  S LRMODE=X
 ; LR*5.2*508 - *508 - preliminary comm fields, #1, #20.5, and #26.5 for canned mesg expansion in Results Entry (Batch)
 S:LRMODE<3 LRSCREEN=$S(H9=13:"KM",H9=11.6:"KG",H9=11.58:"KY",H9=17:"KP",H9=15.51:"KW",H9=21:"KF",H9=19.6:"KW",H9=27:"KT",H9=24:"KW",H9=37:"KV",H9=1:"KMTVP",H9=20.5:"KF",H9=26.5:"KT",1:"")
 D ^LRMISTF1
 Q
INFO W !,"Enter a number between 1 and 3.",!,"1. Automatically enters the result you specify. You cannot change the entries."
 W !,"2. Automatically enters the result you specify, you can see and change entries",!,"3. Prompts with the field name.  Does not automatically enter data.",!!
 Q
GETCODES ; extract only the requested codes from the LRECODE string
 N ZI,ZDR,ZJ,ZNUM
 F ZI=1:1 S ZDR=$P(LRECODE,"DR=",ZI) Q:ZDR=""  D
 . Q:ZDR'[";"
 . S ZDR=$P(ZDR,"DR")
 . F ZJ=1:1 S ZNUM=$P(ZDR,";",ZJ) Q:ZNUM=""  D
 . . I $E(ZNUM)="""" S ZNUM=$P(ZNUM,"""",2,99)
 . . I +ZNUM>0 S LRECDS(+ZNUM)=""
 Q
