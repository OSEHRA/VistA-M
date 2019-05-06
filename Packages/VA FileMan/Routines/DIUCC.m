DIUCC ;GFT/CHCS - consistency checks are executed here!;27JUL2018
 ;;22.2;VA FileMan;**1060,1061**;
 ;
 ;
DIR1 ;FROM THE READER: 1^DIR1
 N DIE3,DIJF,DG,DIN
 S DIJF=X
 I $G(DIE)'?1"^".E Q:'$G(%B1)  S DIE=$$ROOT^DILFD(%B1,$G(DIEVIEN,$G(DIEN))) D
 .;NAME OF FDA: 'DIEFAR' in FILE^DIE, 'DIFDA' in UPDATE^DIE, DIVSEFDA in VALS^DIE
 .S DIN=$G(DIFDA,$G(DIEFAR,$G(DIVSEFDA,$G(DIEVFAR)))) Q:DIN="" 
 .S DG=DA_"," I DA="+" S DG=$O(@DIN@(%B1,"")) Q:DG=""
 .S DIN=$NA(@DIN@(%B1,DG))
 S DG="" F  S DG=$O(^DD(%B1,%B2,6,"ACK",DG)) Q:DG=""  D SETDIJF(%B1,%B2) ;GRAB STORED ANSWERS FROM THE GLOBAL
 I $D(DIN) D  ;GRAB TEMPORARY ANSWERS FROM FDA, WHEN CALLED BY DATABASE API'S LIKE UPDATE^DIE OR VALS^DIE
 .F DIE3=0:0 S DIE3=$O(DIJF(DIE3)) Q:'DIE3  I $D(@DIN@(DIE3)) S DIJF(DIE3)=@DIN@(DIE3) I DIJF(DIE3)="@" S DIJF(DIE3)=""
 I $G(DDS) S DIN=$NA(^TMP("DDS",$J,+DDS,"F"_%B1,DA_",")) D  ;GRAB TEMPORARY ANSWERS FROM SCREENMAN GLOBAL
 .F DIE3=0:0 S DIE3=$O(DIJF(DIE3)) Q:'DIE3  I $D(@DIN@(DIE3,"D")) S DIJF(DIE3)=^("D")
 F DIE3=0:0 S DIE3=$O(^DD(%B1,%B2,6,DIE3)) Q:'DIE3  D  Q:'$D(DIJF)
 .X ^(DIE3,9) I 'X K DIJF S %E=666,%E(666)=^(0) ;EXECUTE THE CONSISTENCY CHECKS
 Q
 ;
 ;
 ;
DIE ;SCROLLING MODE: FROM DIED
 N DIE3,DIJF
 S DIJF=X
 D  I '$D(DIJF) K X
 .I $D(DA(1)) S DG=DP F %=0:1 S:% D0=DA(%) Q:'$D(^DD(DG,0,"UP"))  S DG=^("UP")
 .S DG=""
 .F  S DG=$O(^DD(DP,DIFLD,6,"ACK",DG)) Q:DG=""  D
 ..D SETDIJF(DP,DIFLD)
 ..I $D(DG(DG)) S DIJF($O(^DD(DP,"GL",$P(DG,";",1),$P(DG,";",2),0)))=DG(DG) Q  ;REPLACE STORED ANSWERS WITH TEMPORARY ANSWERS
 .N X
 .F DIE3=0:0 S DIE3=$O(^DD(DP,DIFLD,6,DIE3)) Q:'DIE3  X ^(DIE3,9) I 'X W *7,!,"DATA INCONSISTENCY:",!,^DD(DP,DIFLD,6,DIE3,0),! K DIJF Q
Q Q
 ;
         ;
DIEZ     ;
         ;D CON I $D(DIJF) S X=DIJF
         ;Q
 ;
 ;
DIVR(DP,DD) ; WHEN VERIFYING A FIELD:  FROM DIVR
 ;Q:$D(^UTILITY("DIVR",$J,$S(V:DA(V),1:DA)))
 N DG,DIW,D,DIJF
 S DIW=$P(^DD(DP,DD,0),U,4)
 S DG="",DIE=I(0) F DIE3=1:1:V S DIE=DIE_DA(V-DIE3+1)_","_I(DIE3)_","
 I T="D" S Y=X D DD^%DT S X=Y
 I X?." " QUIT
 K DIJF S DIJF("%")=X S D=$P(DIW,";"),DIJF=$G(@(DIE_DA_","""_D_""")")),D=$P(DIW,";",2),DIJF=$S(D:$P(DIJF,U,+D),1:$E(DIJF,$E(D,2,9),$P(D,",",2)))
 F  S DG=$O(^DD(DP,DD,6,"ACK",DG)) Q:DG=""  S X=$O(^(DG,0)),X=^(X) D SETDIJF(DP,DD)
 N DIE3 F DIE3=0:0 S DIE3=$O(^DD(DP,DD,6,DIE3)) Q:'DIE3  D  Q:'$D(DIJF)
 .X ^(DIE3,9) I 'X S M="'"_DIJF("%")_"'"_" DATA INCONSISTENCY: "_^DD(DP,DD,6,DIE3,0) D X^DIVR
 Q
 ;
 ;
 ;
 ;
SETDIJF(FL,FD) N Y,D,DIE3
 S DIE3=$O(^DD(FL,FD,6,"ACK",DG,0)),DIE3=^(DIE3)
 S Y=$P(DG,";",1) I @("$D("_DIE_""""_DA_""",Y))[0") S DIJF(DIE3)="" Q  ;DA might equal "+1,"
 S D=$P(DG,";",2) I D S DIJF(DIE3)=$P(^(Y),U,D) Q
 S:D?1"E".E DIJF(DIE3)=$E(^(Y),$E(D,2,9),$P(D,",",2)) Q
