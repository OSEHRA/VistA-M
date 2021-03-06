NURCCP4 ;HIRMFO/RM,RTK-STANDARD CARE PLAN PRINT (print data) ;8/29/96
 ;;4.0;NURSING SERVICE;;Apr 25, 1997
PRINT ; BEGIN PRINTING THIS DOCUMENT
 S NURCTYPE=+$O(^GMRD(124.25,"AA","NURSC","GOALS/EXPECTED OUTCOMES",0))_"^"_+$O(^GMRD(124.25,"AA","NURSC","NURSING INTERVENTION",0))_"^"_+$O(^GMRD(124.25,"AA","NURSC","RELATED FACTOR",0))_"^"_+$O(^GMRD(124.25,"AA","NURSC","RELATED PROBLEM",0))
 S NURCTYPE=NURCTYPE_"^"_+$O(^GMRD(124.25,"AA","NURSC","DEFINING CHARACTERISTICS",0))
 S NURCOUT=0,NURCEOPG=$S(IOSL-4>0:IOSL-4,1:20)
 S NURCTEXT=$O(^TMP($J,"LVL",+NURCRT,"")),NURCSECT=0 I NURCTEXT'="" S NURCSECT=+$O(^TMP($J,"LVL",+NURCRT,NURCTEXT,0))
 S NURCSECT=$G(^TMP($J,"LVL",+NURCRT,NURCTEXT,NURCSECT)),NURCTITL="Patient Plan of Care Content by "_$P(NURCSECT,"^",2),NURCPG=1,NURSDASH="",$P(NURSDASH,"-",IOM+1)=""
 U IO S SPC=0,NURCSECT=+NURCSECT D HDR,PRNTP
 Q
PRNTP ; PRINT CHILDREN UNDER PARENT, AND THEN RECURSIVLY CALL THIS
 ; PROCEDURE FOR THOSE CHILDREN
 S PARENT=NURCSECT N NURCSECT
 S TXT="" F  S TXT=$O(^TMP($J,"LVL",PARENT,TXT)) Q:TXT=""!NURCOUT  F CHILD=0:0 S CHILD=$O(^TMP($J,"LVL",PARENT,TXT,CHILD)) Q:CHILD'>0  D PRTLVL Q:NURCOUT
 Q:NURCOUT  S TXT="" F  S TXT=$O(^TMP($J,"PROB",PARENT,TXT)) Q:TXT=""!NURCOUT  F CHILD=0:0 S CHILD=$O(^TMP($J,"PROB",PARENT,TXT,CHILD)) Q:CHILD'>0  D PRPROB Q:NURCOUT
 Q
PRPROB ; CONTINUATION OF FOR LOOP IN LINE PRNTP+4
 S NURCSECT=CHILD,NURCSECT(0)=TXT,NURCSECT(1)=PARENT D PROB S CHILD=NURCSECT,TXT=NURCSECT(0),PARENT=NURCSECT(1)
 Q
PRTLVL ; CONTINUATION OF FOR LOOP IN LINE PRNTP+3
 D HDR:NURCEOPG<$Y Q:NURCOUT
 S X=$G(^TMP($J,"LVL",PARENT,TXT,CHILD)) W !!,?SPC,$P(X,"^",2)
 S SPC=SPC+3,NURCSECT=+X,NURCSECT(0)=CHILD,NURCSECT(1)=TXT,NURCSECT(2)=PARENT D PRNTP S SPC=SPC-3,CHILD=NURCSECT(0),TXT=NURCSECT(1),PARENT=NURCSECT(2)
 Q
PROB ; PRINT TERM NODE, AND THEN RECURSIVELY CALL THIS ROUTINES FOR
 ; NODE'S CHILDREN
 S NODE=NURCSECT N NURCSECT,Q
 S X=$G(^GMRD(124.2,NODE,0))
 S Q=0 I $D(^GMRD(124.2,CHILD,1,"B",NODE)),'$G(NURCPDAT(6)) S Q=1 D  Q:Q
 .   F XXX=1:1:5 I +$G(NURCPDAT(XXX)),$P(X,"^",4)=$P(NURCTYPE,"^",+NURCPDAT(XXX)) S Q=0
 .   Q
 D HDR:NURCEOPG<$Y Q:NURCOUT
 W:'$D(NURCPDAT(7))&(NODE=CHILD) ! W !?SPC,$P(X,"^") Q:$D(NURCPDAT(7))
 S X="" F  S X=$O(^GMRD(124.2,NODE,1,"AC",X)) Q:X=""!NURCOUT  F Y=0:0 S Y=$O(^GMRD(124.2,NODE,1,"AC",X,Y)) Q:Y'>0  D PROB1 Q:NURCOUT
 Q
PROB1 ; CONTINUATION OF FOR LOOP IN LINE PROB+7
 S Z=$G(^GMRD(124.2,NODE,1,Y,0)) S SPC=SPC+3,NURCSECT=+Z,NURCSECT(0)=X,NURCSECT(1)=Y,NURCSECT(2)=NODE D PROB S SPC=SPC-3,X=NURCSECT(0),Y=NURCSECT(1),NODE=NURCSECT(2)
 Q
HDR ;
 N X
 I $E(IOST)="C",NURCPG>1 D ENDPG^NURSUT1 S NURCOUT=$G(NUROUT) Q:NURCOUT  I "^^"'[X W !?4,"ENTER <RET> TO CONTINUE WITH THIS REPORT, ^ TO EXIT." G HDR
 W:$E(IOST)="C"!(NURCPG>1) @IOF W !,?($P(IOM/2,".")-$P($L(NURCTITL)/2,".")),NURCTITL,?(IOM-9),"PAGE: ",NURCPG,!,NURSDASH S NURCPG=NURCPG+1
 Q
