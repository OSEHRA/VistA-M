LAPARA ;SLC/RWF - PARALLEL ANALYZER ;7/20/90  09:57 ;
 ;;5.2;AUTOMATED LAB INSTRUMENTS;;Sep 27, 1994
 ;CROSS LINK BY ID OR IDE
LA1 S:$D(ZTQUEUED) ZTREQ="@" S LANM=$T(+0),TSK=$O(^LAB(62.4,"C",LANM,0)) Q:TSK<1
 Q:'$D(^LA(TSK,"I",0))
 K LATOP D ^LASET Q:'TSK  S X="TRAP^"_LANM,@^%ZOSF("TRAP")
LA2 K TV,Y S TOUT=0 D IN G QUIT:TOUT,LA2:$E(IN,1,2)'="65" S LINE=$E(IN,3) G LA2:LINE<1!(LINE>3) S (ID,IDE,CUP)=+$E(IN,80,88)
 S TEST=1 F I=9:7:78 S TEST(LINE-1*10+TEST)=+$E(IN,I,I+6),TEST=TEST+1
 G LA2:LINE'=3 F I=0:0 S I=$O(TC(I)) Q:I<1  I TEST(I) S:TEST(I)>0 @TC(I,1)=$J(TEST(I),0,+TC(I,3))
LA3 X LAGEN G LA2:'ISQN
 F I=0:0 S I=$O(TV(I)) Q:I<1  S:TV(I,1)]"" ^LAH(LWL,1,ISQN,I)=TV(I,1)
 G LA2
NUM S X="" F JJ=1:1:$L(V) S:$A(V,JJ)>32 X=X_$E(V,JJ)
 S V=X Q
IN S CNT=^LA(TSK,"I",0)+1 IF '$D(^(CNT)) S TOUT=TOUT+1 Q:TOUT>9  H 5 G IN
 S ^LA(TSK,"I",0)=CNT,IN=^(CNT),TOUT=0
 S:IN["~" CTRL=$P(IN,"~",2),IN=$P(IN,"~",1)
 Q
QUIT LOCK ^LA(TSK) H 1 K ^LA(TSK),^LA("LOCK",TSK),^TMP($J),^TMP("LA",$J)
 Q
TRAP D ^LABERR S T=TSK D SET^LAB G @("LA2^"_LANM) ;ERROR TRAP
