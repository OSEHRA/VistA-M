IBDEI0B5 ; ; 06-AUG-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,4874,1,5,0)
 ;;=5^DM Type 2 w/ Complications,Unspec
 ;;^UTILITY(U,$J,358.3,4874,2)
 ;;=^331815
 ;;^UTILITY(U,$J,358.3,4875,0)
 ;;=782.3^^23^244^6
 ;;^UTILITY(U,$J,358.3,4875,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,4875,1,4,0)
 ;;=4^782.3
 ;;^UTILITY(U,$J,358.3,4875,1,5,0)
 ;;=5^Edema
 ;;^UTILITY(U,$J,358.3,4875,2)
 ;;=^38340
 ;;^UTILITY(U,$J,358.3,4876,0)
 ;;=780.79^^23^244^8
 ;;^UTILITY(U,$J,358.3,4876,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,4876,1,4,0)
 ;;=4^780.79
 ;;^UTILITY(U,$J,358.3,4876,1,5,0)
 ;;=5^Malaise & Fatigue NEC
 ;;^UTILITY(U,$J,358.3,4876,2)
 ;;=^73344
 ;;^UTILITY(U,$J,358.3,4877,0)
 ;;=783.21^^23^244^7
 ;;^UTILITY(U,$J,358.3,4877,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,4877,1,4,0)
 ;;=4^783.21
 ;;^UTILITY(U,$J,358.3,4877,1,5,0)
 ;;=5^Loss of Weight
 ;;^UTILITY(U,$J,358.3,4877,2)
 ;;=^322005
 ;;^UTILITY(U,$J,358.3,4878,0)
 ;;=790.29^^23^244^1
 ;;^UTILITY(U,$J,358.3,4878,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,4878,1,4,0)
 ;;=4^790.29
 ;;^UTILITY(U,$J,358.3,4878,1,5,0)
 ;;=5^Abnormal Glucose
 ;;^UTILITY(U,$J,358.3,4878,2)
 ;;=^329955
 ;;^UTILITY(U,$J,358.3,4879,0)
 ;;=372.30^^23^245^1
 ;;^UTILITY(U,$J,358.3,4879,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,4879,1,4,0)
 ;;=4^372.30
 ;;^UTILITY(U,$J,358.3,4879,1,5,0)
 ;;=5^Conjunctivitis NOS
 ;;^UTILITY(U,$J,358.3,4879,2)
 ;;=^27546
 ;;^UTILITY(U,$J,358.3,4880,0)
 ;;=369.4^^23^245^2
 ;;^UTILITY(U,$J,358.3,4880,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,4880,1,4,0)
 ;;=4^369.4
 ;;^UTILITY(U,$J,358.3,4880,1,5,0)
 ;;=5^Legal Blindness-USA Def
 ;;^UTILITY(U,$J,358.3,4880,2)
 ;;=^268887
 ;;^UTILITY(U,$J,358.3,4881,0)
 ;;=380.10^^23^245^3
 ;;^UTILITY(U,$J,358.3,4881,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,4881,1,4,0)
 ;;=4^380.10
 ;;^UTILITY(U,$J,358.3,4881,1,5,0)
 ;;=5^Infec Otitis Externa NOS
 ;;^UTILITY(U,$J,358.3,4881,2)
 ;;=^62807
 ;;^UTILITY(U,$J,358.3,4882,0)
 ;;=382.9^^23^245^4
 ;;^UTILITY(U,$J,358.3,4882,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,4882,1,4,0)
 ;;=4^382.9
 ;;^UTILITY(U,$J,358.3,4882,1,5,0)
 ;;=5^Otitis Media NOS
 ;;^UTILITY(U,$J,358.3,4882,2)
 ;;=^123967
 ;;^UTILITY(U,$J,358.3,4883,0)
 ;;=388.30^^23^245^5
 ;;^UTILITY(U,$J,358.3,4883,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,4883,1,4,0)
 ;;=4^388.30
 ;;^UTILITY(U,$J,358.3,4883,1,5,0)
 ;;=5^Tinnitus NOS
 ;;^UTILITY(U,$J,358.3,4883,2)
 ;;=^119771
 ;;^UTILITY(U,$J,358.3,4884,0)
 ;;=369.4^^23^246^4
 ;;^UTILITY(U,$J,358.3,4884,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,4884,1,4,0)
 ;;=4^369.4
 ;;^UTILITY(U,$J,358.3,4884,1,5,0)
 ;;=5^LEGAL BLINDNESS-USA DEF
 ;;^UTILITY(U,$J,358.3,4884,2)
 ;;=^268887
 ;;^UTILITY(U,$J,358.3,4885,0)
 ;;=369.00^^23^246^3
 ;;^UTILITY(U,$J,358.3,4885,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,4885,1,4,0)
 ;;=4^369.00
 ;;^UTILITY(U,$J,358.3,4885,1,5,0)
 ;;=5^BOTH EYES BLIND-WHO DEF
 ;;^UTILITY(U,$J,358.3,4885,2)
 ;;=^15310
 ;;^UTILITY(U,$J,358.3,4886,0)
 ;;=369.10^^23^246^2
 ;;^UTILITY(U,$J,358.3,4886,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,4886,1,4,0)
 ;;=4^369.10
 ;;^UTILITY(U,$J,358.3,4886,1,5,0)
 ;;=5^BLINDNESS/LOW VISION
 ;;^UTILITY(U,$J,358.3,4886,2)
 ;;=^268870
 ;;^UTILITY(U,$J,358.3,4887,0)
 ;;=369.20^^23^246^5
 ;;^UTILITY(U,$J,358.3,4887,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,4887,1,4,0)
 ;;=4^369.20
 ;;^UTILITY(U,$J,358.3,4887,1,5,0)
 ;;=5^LOW VISION,BOTH EYES
 ;;^UTILITY(U,$J,358.3,4887,2)
 ;;=^71924
 ;;^UTILITY(U,$J,358.3,4888,0)
 ;;=369.3^^23^246^1
 ;;^UTILITY(U,$J,358.3,4888,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,4888,1,4,0)
 ;;=4^369.3
 ;;^UTILITY(U,$J,358.3,4888,1,5,0)
 ;;=5^BLINDESS,BOTH EYES NOS