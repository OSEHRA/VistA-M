IBDEI12P ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,17900,1,3,0)
 ;;=3^Gastrostomy hemorrhage
 ;;^UTILITY(U,$J,358.3,17900,1,4,0)
 ;;=4^K94.21
 ;;^UTILITY(U,$J,358.3,17900,2)
 ;;=^5008929
 ;;^UTILITY(U,$J,358.3,17901,0)
 ;;=K30.^^91^886^13
 ;;^UTILITY(U,$J,358.3,17901,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,17901,1,3,0)
 ;;=3^Functional dyspepsia
 ;;^UTILITY(U,$J,358.3,17901,1,4,0)
 ;;=4^K30.
 ;;^UTILITY(U,$J,358.3,17901,2)
 ;;=^5008558
 ;;^UTILITY(U,$J,358.3,17902,0)
 ;;=K31.5^^91^886^24
 ;;^UTILITY(U,$J,358.3,17902,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,17902,1,3,0)
 ;;=3^Obstruction of duodenum
 ;;^UTILITY(U,$J,358.3,17902,1,4,0)
 ;;=4^K31.5
 ;;^UTILITY(U,$J,358.3,17902,2)
 ;;=^5008564
 ;;^UTILITY(U,$J,358.3,17903,0)
 ;;=K31.819^^91^886^4
 ;;^UTILITY(U,$J,358.3,17903,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,17903,1,3,0)
 ;;=3^Angiodysplasia of stomach and duodenum without bleeding
 ;;^UTILITY(U,$J,358.3,17903,1,4,0)
 ;;=4^K31.819
 ;;^UTILITY(U,$J,358.3,17903,2)
 ;;=^5008568
 ;;^UTILITY(U,$J,358.3,17904,0)
 ;;=K31.811^^91^886^5
 ;;^UTILITY(U,$J,358.3,17904,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,17904,1,3,0)
 ;;=3^Angiodysplasia of stomach and duodenum with bleeding
 ;;^UTILITY(U,$J,358.3,17904,1,4,0)
 ;;=4^K31.811
 ;;^UTILITY(U,$J,358.3,17904,2)
 ;;=^5008567
 ;;^UTILITY(U,$J,358.3,17905,0)
 ;;=K91.1^^91^887^3
 ;;^UTILITY(U,$J,358.3,17905,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,17905,1,3,0)
 ;;=3^Postgastric surgery syndromes
 ;;^UTILITY(U,$J,358.3,17905,1,4,0)
 ;;=4^K91.1
 ;;^UTILITY(U,$J,358.3,17905,2)
 ;;=^5008900
 ;;^UTILITY(U,$J,358.3,17906,0)
 ;;=Z93.1^^91^887^2
 ;;^UTILITY(U,$J,358.3,17906,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,17906,1,3,0)
 ;;=3^Gastrostomy status
 ;;^UTILITY(U,$J,358.3,17906,1,4,0)
 ;;=4^Z93.1
 ;;^UTILITY(U,$J,358.3,17906,2)
 ;;=^5063643
 ;;^UTILITY(U,$J,358.3,17907,0)
 ;;=Z43.1^^91^887^1
 ;;^UTILITY(U,$J,358.3,17907,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,17907,1,3,0)
 ;;=3^Attention to Gastrostomy
 ;;^UTILITY(U,$J,358.3,17907,1,4,0)
 ;;=4^Z43.1
 ;;^UTILITY(U,$J,358.3,17907,2)
 ;;=^5062959
 ;;^UTILITY(U,$J,358.3,17908,0)
 ;;=D64.9^^91^888^4
 ;;^UTILITY(U,$J,358.3,17908,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,17908,1,3,0)
 ;;=3^Anemia, unspecified
 ;;^UTILITY(U,$J,358.3,17908,1,4,0)
 ;;=4^D64.9
 ;;^UTILITY(U,$J,358.3,17908,2)
 ;;=^5002351
 ;;^UTILITY(U,$J,358.3,17909,0)
 ;;=K92.0^^91^888^25
 ;;^UTILITY(U,$J,358.3,17909,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,17909,1,3,0)
 ;;=3^Hematemesis
 ;;^UTILITY(U,$J,358.3,17909,1,4,0)
 ;;=4^K92.0
 ;;^UTILITY(U,$J,358.3,17909,2)
 ;;=^5008913
 ;;^UTILITY(U,$J,358.3,17910,0)
 ;;=K92.1^^91^888^30
 ;;^UTILITY(U,$J,358.3,17910,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,17910,1,3,0)
 ;;=3^Melena
 ;;^UTILITY(U,$J,358.3,17910,1,4,0)
 ;;=4^K92.1
 ;;^UTILITY(U,$J,358.3,17910,2)
 ;;=^5008914
 ;;^UTILITY(U,$J,358.3,17911,0)
 ;;=K92.2^^91^888^22
 ;;^UTILITY(U,$J,358.3,17911,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,17911,1,3,0)
 ;;=3^Gastrointestinal hemorrhage, unspecified
 ;;^UTILITY(U,$J,358.3,17911,1,4,0)
 ;;=4^K92.2
 ;;^UTILITY(U,$J,358.3,17911,2)
 ;;=^5008915
 ;;^UTILITY(U,$J,358.3,17912,0)
 ;;=R11.2^^91^888^32
 ;;^UTILITY(U,$J,358.3,17912,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,17912,1,3,0)
 ;;=3^Nausea with vomiting, unspecified
 ;;^UTILITY(U,$J,358.3,17912,1,4,0)
 ;;=4^R11.2
 ;;^UTILITY(U,$J,358.3,17912,2)
 ;;=^5019237
 ;;^UTILITY(U,$J,358.3,17913,0)
 ;;=R11.0^^91^888^31
 ;;^UTILITY(U,$J,358.3,17913,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,17913,1,3,0)
 ;;=3^Nausea
 ;;^UTILITY(U,$J,358.3,17913,1,4,0)
 ;;=4^R11.0
