IBDEI1LO ; ; 06-AUG-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,28398,1,5,0)
 ;;=5^Elevated PSA
 ;;^UTILITY(U,$J,358.3,28398,2)
 ;;=Elevated PSA^295772
 ;;^UTILITY(U,$J,358.3,28399,0)
 ;;=791.0^^162^1797^129
 ;;^UTILITY(U,$J,358.3,28399,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,28399,1,4,0)
 ;;=4^791.0
 ;;^UTILITY(U,$J,358.3,28399,1,5,0)
 ;;=5^Proteinuria
 ;;^UTILITY(U,$J,358.3,28399,2)
 ;;=Proteinuria^99873
 ;;^UTILITY(U,$J,358.3,28400,0)
 ;;=791.9^^162^1797^15
 ;;^UTILITY(U,$J,358.3,28400,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,28400,1,4,0)
 ;;=4^791.9
 ;;^UTILITY(U,$J,358.3,28400,1,5,0)
 ;;=5^Abnormal UA
 ;;^UTILITY(U,$J,358.3,28400,2)
 ;;=Abnormal UA^273408
 ;;^UTILITY(U,$J,358.3,28401,0)
 ;;=789.01^^162^1797^7
 ;;^UTILITY(U,$J,358.3,28401,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,28401,1,4,0)
 ;;=4^789.01
 ;;^UTILITY(U,$J,358.3,28401,1,5,0)
 ;;=5^Abdominal Pain,RUQ
 ;;^UTILITY(U,$J,358.3,28401,2)
 ;;=^303318
 ;;^UTILITY(U,$J,358.3,28402,0)
 ;;=789.02^^162^1797^4
 ;;^UTILITY(U,$J,358.3,28402,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,28402,1,4,0)
 ;;=4^789.02
 ;;^UTILITY(U,$J,358.3,28402,1,5,0)
 ;;=5^Abdominal Pain,LUQ
 ;;^UTILITY(U,$J,358.3,28402,2)
 ;;=^303319
 ;;^UTILITY(U,$J,358.3,28403,0)
 ;;=789.03^^162^1797^6
 ;;^UTILITY(U,$J,358.3,28403,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,28403,1,4,0)
 ;;=4^789.03
 ;;^UTILITY(U,$J,358.3,28403,1,5,0)
 ;;=5^Abdominal Pain,RLQ
 ;;^UTILITY(U,$J,358.3,28403,2)
 ;;=^303320
 ;;^UTILITY(U,$J,358.3,28404,0)
 ;;=789.04^^162^1797^3
 ;;^UTILITY(U,$J,358.3,28404,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,28404,1,4,0)
 ;;=4^789.04
 ;;^UTILITY(U,$J,358.3,28404,1,5,0)
 ;;=5^Abdominal Pain,LLQ
 ;;^UTILITY(U,$J,358.3,28404,2)
 ;;=^303321
 ;;^UTILITY(U,$J,358.3,28405,0)
 ;;=789.06^^162^1797^2
 ;;^UTILITY(U,$J,358.3,28405,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,28405,1,4,0)
 ;;=4^789.06
 ;;^UTILITY(U,$J,358.3,28405,1,5,0)
 ;;=5^Abdominal Pain,Epigastric
 ;;^UTILITY(U,$J,358.3,28405,2)
 ;;=^303323
 ;;^UTILITY(U,$J,358.3,28406,0)
 ;;=789.05^^162^1797^5
 ;;^UTILITY(U,$J,358.3,28406,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,28406,1,4,0)
 ;;=4^789.05
 ;;^UTILITY(U,$J,358.3,28406,1,5,0)
 ;;=5^Abdominal Pain,Periumbilical
 ;;^UTILITY(U,$J,358.3,28406,2)
 ;;=^303322
 ;;^UTILITY(U,$J,358.3,28407,0)
 ;;=789.40^^162^1797^8
 ;;^UTILITY(U,$J,358.3,28407,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,28407,1,4,0)
 ;;=4^789.40
 ;;^UTILITY(U,$J,358.3,28407,1,5,0)
 ;;=5^Abdominal Rigidity, Unsp Site
 ;;^UTILITY(U,$J,358.3,28407,2)
 ;;=^273393
 ;;^UTILITY(U,$J,358.3,28408,0)
 ;;=789.1^^162^1797^81
 ;;^UTILITY(U,$J,358.3,28408,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,28408,1,4,0)
 ;;=4^789.1
 ;;^UTILITY(U,$J,358.3,28408,1,5,0)
 ;;=5^Hepatomegaly
 ;;^UTILITY(U,$J,358.3,28408,2)
 ;;=Hepatomegaly^56494
 ;;^UTILITY(U,$J,358.3,28409,0)
 ;;=789.30^^162^1797^1
 ;;^UTILITY(U,$J,358.3,28409,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,28409,1,4,0)
 ;;=4^789.30
 ;;^UTILITY(U,$J,358.3,28409,1,5,0)
 ;;=5^Abdominal Mass/Lump
 ;;^UTILITY(U,$J,358.3,28409,2)
 ;;=Abdominal Mass/Lump^917
 ;;^UTILITY(U,$J,358.3,28410,0)
 ;;=789.2^^162^1797^138
 ;;^UTILITY(U,$J,358.3,28410,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,28410,1,4,0)
 ;;=4^789.2
 ;;^UTILITY(U,$J,358.3,28410,1,5,0)
 ;;=5^Splenomegaly
 ;;^UTILITY(U,$J,358.3,28410,2)
 ;;=Splenomegaly^113452
 ;;^UTILITY(U,$J,358.3,28411,0)
 ;;=785.2^^162^1797^33
 ;;^UTILITY(U,$J,358.3,28411,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,28411,1,4,0)
 ;;=4^785.2
 ;;^UTILITY(U,$J,358.3,28411,1,5,0)
 ;;=5^Cardiac Murmurs, Undiagnosed
 ;;^UTILITY(U,$J,358.3,28411,2)
 ;;=^295854