ORCHANG1 ; SLC/KCM,MKB - Navigate Display Groups ;9/19/95  15:27
 ;;3.0;ORDER ENTRY/RESULTS REPORTING;;Dec 17, 1997
DG(ORDG,ORSEL,ORGRP) ;Setup/Display groups
 N ORSTK,ORMEM,ORCNT
 Q:'ORDG  Q:'$D(ORSEL)
 S ORSTK=0,ORCNT=0 D @ORSEL
 S ORSTK=1,ORSTK(ORSTK)=ORDG_"^0",ORSTK(0)=0,ORMEM=0
 F  S ORMEM=$O(^ORD(100.98,+ORSTK(ORSTK),1,ORMEM)) D @$S(+ORMEM'>0:"POP",1:"PROC") Q:ORSTK<1
 K ORMEM,ORSTK
 Q
 ;
POP ; -- pop the stack
 S ORSTK=ORSTK-1,ORMEM=$P(ORSTK(ORSTK),U,2)
 Q
PROC ; -- process member
 S $P(ORSTK(ORSTK),U,2)=ORMEM
 S ORDG=$P(^ORD(100.98,+ORSTK(ORSTK),1,ORMEM,0),U)
 D @ORSEL
 S ORSTK=ORSTK+1,ORSTK(ORSTK)=ORDG_"^0",ORMEM=0
 Q
 ;
DISP ; -- display item
 S ORCNT=ORCNT+1 I ORCNT>(IOSL-4) D READ S ORCNT=1
 W !,?((ORSTK*2)),$P(^ORD(100.98,ORDG,0),U)
 Q
 ;
BILD ; -- build ORGRP()
 S ORGRP(ORDG)=""
 Q
 ;
READ ; -- continue?
 N X
 W !!,"Press <return> to continue ..." R X:DTIME
 Q
