IBDEI1DK ; ; 06-AUG-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,24362,0)
 ;;=500.^^136^1490^1
 ;;^UTILITY(U,$J,358.3,24362,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,24362,1,1,0)
 ;;=1^500.
 ;;^UTILITY(U,$J,358.3,24362,1,2,0)
 ;;=2^ANTHRACOSIS
 ;;^UTILITY(U,$J,358.3,24362,2)
 ;;=^8060
 ;;^UTILITY(U,$J,358.3,24363,0)
 ;;=501.^^136^1490^2
 ;;^UTILITY(U,$J,358.3,24363,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,24363,1,1,0)
 ;;=1^501.
 ;;^UTILITY(U,$J,358.3,24363,1,2,0)
 ;;=2^ASBESTOSIS
 ;;^UTILITY(U,$J,358.3,24363,2)
 ;;=^10704
 ;;^UTILITY(U,$J,358.3,24364,0)
 ;;=507.0^^136^1490^3
 ;;^UTILITY(U,$J,358.3,24364,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,24364,1,1,0)
 ;;=1^507.0
 ;;^UTILITY(U,$J,358.3,24364,1,2,0)
 ;;=2^ASPIRATION PNEUMONIA
 ;;^UTILITY(U,$J,358.3,24364,2)
 ;;=^95581
 ;;^UTILITY(U,$J,358.3,24365,0)
 ;;=493.90^^136^1490^4
 ;;^UTILITY(U,$J,358.3,24365,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,24365,1,1,0)
 ;;=1^493.90
 ;;^UTILITY(U,$J,358.3,24365,1,2,0)
 ;;=2^ASTHMA NOS
 ;;^UTILITY(U,$J,358.3,24365,2)
 ;;=^330091
 ;;^UTILITY(U,$J,358.3,24366,0)
 ;;=425.9^^136^1490^5
 ;;^UTILITY(U,$J,358.3,24366,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,24366,1,1,0)
 ;;=1^425.9
 ;;^UTILITY(U,$J,358.3,24366,1,2,0)
 ;;=2^CARDIOMYOPATHY,SECONDARY,UNSPEC
 ;;^UTILITY(U,$J,358.3,24366,2)
 ;;=^265123
 ;;^UTILITY(U,$J,358.3,24367,0)
 ;;=491.9^^136^1490^6
 ;;^UTILITY(U,$J,358.3,24367,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,24367,1,1,0)
 ;;=1^491.9
 ;;^UTILITY(U,$J,358.3,24367,1,2,0)
 ;;=2^CHRONIC BRONCHITIS NOS
 ;;^UTILITY(U,$J,358.3,24367,2)
 ;;=^24359
 ;;^UTILITY(U,$J,358.3,24368,0)
 ;;=428.9^^136^1490^10
 ;;^UTILITY(U,$J,358.3,24368,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,24368,1,1,0)
 ;;=1^428.9
 ;;^UTILITY(U,$J,358.3,24368,1,2,0)
 ;;=2^HEART FAILURE,UNSPEC
 ;;^UTILITY(U,$J,358.3,24368,2)
 ;;=^54754
 ;;^UTILITY(U,$J,358.3,24369,0)
 ;;=492.8^^136^1490^8
 ;;^UTILITY(U,$J,358.3,24369,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,24369,1,1,0)
 ;;=1^492.8
 ;;^UTILITY(U,$J,358.3,24369,1,2,0)
 ;;=2^EMPHYSEMA NEC
 ;;^UTILITY(U,$J,358.3,24369,2)
 ;;=^87569
 ;;^UTILITY(U,$J,358.3,24370,0)
 ;;=421.9^^136^1490^9
 ;;^UTILITY(U,$J,358.3,24370,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,24370,1,1,0)
 ;;=1^421.9
 ;;^UTILITY(U,$J,358.3,24370,1,2,0)
 ;;=2^ENDOCARDITIS,ACUTE,UNSPEC
 ;;^UTILITY(U,$J,358.3,24370,2)
 ;;=^269701
 ;;^UTILITY(U,$J,358.3,24371,0)
 ;;=422.90^^136^1490^12
 ;;^UTILITY(U,$J,358.3,24371,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,24371,1,1,0)
 ;;=1^422.90
 ;;^UTILITY(U,$J,358.3,24371,1,2,0)
 ;;=2^MYOCARDITIS,ACUTE,UNSPEC
 ;;^UTILITY(U,$J,358.3,24371,2)
 ;;=^269702
 ;;^UTILITY(U,$J,358.3,24372,0)
 ;;=420.90^^136^1490^13
 ;;^UTILITY(U,$J,358.3,24372,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,24372,1,1,0)
 ;;=1^420.90
 ;;^UTILITY(U,$J,358.3,24372,1,2,0)
 ;;=2^PERICARDITIS,ACUTE,UNSPEC
 ;;^UTILITY(U,$J,358.3,24372,2)
 ;;=^269692
 ;;^UTILITY(U,$J,358.3,24373,0)
 ;;=505.^^136^1490^14
 ;;^UTILITY(U,$J,358.3,24373,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,24373,1,1,0)
 ;;=1^505.
 ;;^UTILITY(U,$J,358.3,24373,1,2,0)
 ;;=2^PNEUMOCONIOSIS NOS
 ;;^UTILITY(U,$J,358.3,24373,2)
 ;;=^95539
 ;;^UTILITY(U,$J,358.3,24374,0)
 ;;=481.^^136^1490^16
 ;;^UTILITY(U,$J,358.3,24374,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,24374,1,1,0)
 ;;=1^481.
 ;;^UTILITY(U,$J,358.3,24374,1,2,0)
 ;;=2^PNEUMONIA,PNEUMOCOCCAL
 ;;^UTILITY(U,$J,358.3,24374,2)
 ;;=^95612
 ;;^UTILITY(U,$J,358.3,24375,0)
 ;;=486.^^136^1490^15
 ;;^UTILITY(U,$J,358.3,24375,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,24375,1,1,0)
 ;;=1^486.
 ;;^UTILITY(U,$J,358.3,24375,1,2,0)
 ;;=2^PNEUMONIA,ORGANISM NOS