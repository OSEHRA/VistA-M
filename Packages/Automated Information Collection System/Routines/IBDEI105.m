IBDEI105 ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,16666,1,3,0)
 ;;=3^Fall in Shower/Bathtub,Init Encntr
 ;;^UTILITY(U,$J,358.3,16666,1,4,0)
 ;;=4^W18.2XXA
 ;;^UTILITY(U,$J,358.3,16666,2)
 ;;=^5059806
 ;;^UTILITY(U,$J,358.3,16667,0)
 ;;=W11.XXXA^^88^852^10
 ;;^UTILITY(U,$J,358.3,16667,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,16667,1,3,0)
 ;;=3^Fall from Ladder,Init Encntr
 ;;^UTILITY(U,$J,358.3,16667,1,4,0)
 ;;=4^W11.XXXA
 ;;^UTILITY(U,$J,358.3,16667,2)
 ;;=^5059595
 ;;^UTILITY(U,$J,358.3,16668,0)
 ;;=W01.10XA^^88^852^2
 ;;^UTILITY(U,$J,358.3,16668,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,16668,1,3,0)
 ;;=3^Fall Same Level w/ Strike Against Object,Init Encntr
 ;;^UTILITY(U,$J,358.3,16668,1,4,0)
 ;;=4^W01.10XA
 ;;^UTILITY(U,$J,358.3,16668,2)
 ;;=^5059525
 ;;^UTILITY(U,$J,358.3,16669,0)
 ;;=W01.0XXA^^88^852^3
 ;;^UTILITY(U,$J,358.3,16669,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,16669,1,3,0)
 ;;=3^Fall Same Level w/o Strike Against Object,Init Encntr
 ;;^UTILITY(U,$J,358.3,16669,1,4,0)
 ;;=4^W01.0XXA
 ;;^UTILITY(U,$J,358.3,16669,2)
 ;;=^5059522
 ;;^UTILITY(U,$J,358.3,16670,0)
 ;;=W18.30XA^^88^852^18
 ;;^UTILITY(U,$J,358.3,16670,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,16670,1,3,0)
 ;;=3^Fall on Same Level,Unspec,Init Encntr
 ;;^UTILITY(U,$J,358.3,16670,1,4,0)
 ;;=4^W18.30XA
 ;;^UTILITY(U,$J,358.3,16670,2)
 ;;=^5059809
 ;;^UTILITY(U,$J,358.3,16671,0)
 ;;=W04.XXXA^^88^852^4
 ;;^UTILITY(U,$J,358.3,16671,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,16671,1,3,0)
 ;;=3^Fall While Being Carried by Oth Persons,Init Encntr
 ;;^UTILITY(U,$J,358.3,16671,1,4,0)
 ;;=4^W04.XXXA
 ;;^UTILITY(U,$J,358.3,16671,2)
 ;;=^5059547
 ;;^UTILITY(U,$J,358.3,16672,0)
 ;;=Z91.81^^88^852^23
 ;;^UTILITY(U,$J,358.3,16672,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,16672,1,3,0)
 ;;=3^Hx of Falling
 ;;^UTILITY(U,$J,358.3,16672,1,4,0)
 ;;=4^Z91.81
 ;;^UTILITY(U,$J,358.3,16672,2)
 ;;=^5063625
 ;;^UTILITY(U,$J,358.3,16673,0)
 ;;=W17.89XA^^88^852^14
 ;;^UTILITY(U,$J,358.3,16673,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,16673,1,3,0)
 ;;=3^Fall from One Level to Another,Init Encntr
 ;;^UTILITY(U,$J,358.3,16673,1,4,0)
 ;;=4^W17.89XA
 ;;^UTILITY(U,$J,358.3,16673,2)
 ;;=^5059787
 ;;^UTILITY(U,$J,358.3,16674,0)
 ;;=W03.XXXA^^88^852^1
 ;;^UTILITY(U,$J,358.3,16674,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,16674,1,3,0)
 ;;=3^Fall Same Level d/t Collision w/ Another Person,Init Encntr
 ;;^UTILITY(U,$J,358.3,16674,1,4,0)
 ;;=4^W03.XXXA
 ;;^UTILITY(U,$J,358.3,16674,2)
 ;;=^5059544
 ;;^UTILITY(U,$J,358.3,16675,0)
 ;;=W18.09XA^^88^852^6
 ;;^UTILITY(U,$J,358.3,16675,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,16675,1,3,0)
 ;;=3^Fall d/t Striking Against Other Object,Init Encntr
 ;;^UTILITY(U,$J,358.3,16675,1,4,0)
 ;;=4^W18.09XA
 ;;^UTILITY(U,$J,358.3,16675,2)
 ;;=^5059799
 ;;^UTILITY(U,$J,358.3,16676,0)
 ;;=W00.9XXA^^88^852^5
 ;;^UTILITY(U,$J,358.3,16676,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,16676,1,3,0)
 ;;=3^Fall d/t Snow/Ice,Init Encntr
 ;;^UTILITY(U,$J,358.3,16676,1,4,0)
 ;;=4^W00.9XXA
 ;;^UTILITY(U,$J,358.3,16676,2)
 ;;=^5059519
 ;;^UTILITY(U,$J,358.3,16677,0)
 ;;=R29.6^^88^852^24
 ;;^UTILITY(U,$J,358.3,16677,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,16677,1,3,0)
 ;;=3^Repeated Falls
 ;;^UTILITY(U,$J,358.3,16677,1,4,0)
 ;;=4^R29.6
 ;;^UTILITY(U,$J,358.3,16677,2)
 ;;=^5019317
 ;;^UTILITY(U,$J,358.3,16678,0)
 ;;=W18.40XA^^88^852^25
 ;;^UTILITY(U,$J,358.3,16678,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,16678,1,3,0)
 ;;=3^Slip/Trip/Stumble w/o Falling,Init Encntr
 ;;^UTILITY(U,$J,358.3,16678,1,4,0)
 ;;=4^W18.40XA
 ;;^UTILITY(U,$J,358.3,16678,2)
 ;;=^5059818
