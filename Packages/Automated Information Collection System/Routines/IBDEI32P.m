IBDEI32P ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,51538,0)
 ;;=99347^^223^2491^1^^^^1
 ;;^UTILITY(U,$J,358.3,51538,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,51538,1,2,0)
 ;;=2^99347
 ;;^UTILITY(U,$J,358.3,51538,1,3,0)
 ;;=3^Prob Focused Visit
 ;;^UTILITY(U,$J,358.3,51539,0)
 ;;=99348^^223^2491^2^^^^1
 ;;^UTILITY(U,$J,358.3,51539,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,51539,1,2,0)
 ;;=2^99348
 ;;^UTILITY(U,$J,358.3,51539,1,3,0)
 ;;=3^Exp Prob Focused Visit
 ;;^UTILITY(U,$J,358.3,51540,0)
 ;;=99349^^223^2491^3^^^^1
 ;;^UTILITY(U,$J,358.3,51540,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,51540,1,2,0)
 ;;=2^99349
 ;;^UTILITY(U,$J,358.3,51540,1,3,0)
 ;;=3^Detailed Visit
 ;;^UTILITY(U,$J,358.3,51541,0)
 ;;=99350^^223^2491^4^^^^1
 ;;^UTILITY(U,$J,358.3,51541,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,51541,1,2,0)
 ;;=2^99350
 ;;^UTILITY(U,$J,358.3,51541,1,3,0)
 ;;=3^Comp Visit
 ;;^UTILITY(U,$J,358.3,51542,0)
 ;;=99341^^223^2492^1^^^^1
 ;;^UTILITY(U,$J,358.3,51542,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,51542,1,2,0)
 ;;=2^99341
 ;;^UTILITY(U,$J,358.3,51542,1,3,0)
 ;;=3^Prob Focus Visit
 ;;^UTILITY(U,$J,358.3,51543,0)
 ;;=99342^^223^2492^2^^^^1
 ;;^UTILITY(U,$J,358.3,51543,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,51543,1,2,0)
 ;;=2^99342
 ;;^UTILITY(U,$J,358.3,51543,1,3,0)
 ;;=3^Exp Prob Focus Visit
 ;;^UTILITY(U,$J,358.3,51544,0)
 ;;=99343^^223^2492^3^^^^1
 ;;^UTILITY(U,$J,358.3,51544,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,51544,1,2,0)
 ;;=2^99343
 ;;^UTILITY(U,$J,358.3,51544,1,3,0)
 ;;=3^Detailed Visit
 ;;^UTILITY(U,$J,358.3,51545,0)
 ;;=99344^^223^2492^4^^^^1
 ;;^UTILITY(U,$J,358.3,51545,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,51545,1,2,0)
 ;;=2^99344
 ;;^UTILITY(U,$J,358.3,51545,1,3,0)
 ;;=3^Comp Visit/Mod Decision
 ;;^UTILITY(U,$J,358.3,51546,0)
 ;;=99345^^223^2492^5^^^^1
 ;;^UTILITY(U,$J,358.3,51546,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,51546,1,2,0)
 ;;=2^99345
 ;;^UTILITY(U,$J,358.3,51546,1,3,0)
 ;;=3^Comp Visit/High Decision
 ;;^UTILITY(U,$J,358.3,51547,0)
 ;;=99444^^223^2493^1^^^^1
 ;;^UTILITY(U,$J,358.3,51547,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,51547,1,2,0)
 ;;=2^99444
 ;;^UTILITY(U,$J,358.3,51547,1,3,0)
 ;;=3^Online Svc by Physician
 ;;^UTILITY(U,$J,358.3,51548,0)
 ;;=98969^^223^2493^2^^^^1
 ;;^UTILITY(U,$J,358.3,51548,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,51548,1,2,0)
 ;;=2^98969
 ;;^UTILITY(U,$J,358.3,51548,1,3,0)
 ;;=3^Online Svc by HC Pro
 ;;^UTILITY(U,$J,358.3,51549,0)
 ;;=97810^^223^2494^1^^^^1
 ;;^UTILITY(U,$J,358.3,51549,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,51549,1,2,0)
 ;;=2^97810
 ;;^UTILITY(U,$J,358.3,51549,1,3,0)
 ;;=3^Acupuncture w/o Stimul 15 Min
 ;;^UTILITY(U,$J,358.3,51550,0)
 ;;=97811^^223^2494^2^^^^1
 ;;^UTILITY(U,$J,358.3,51550,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,51550,1,2,0)
 ;;=2^97811
 ;;^UTILITY(U,$J,358.3,51550,1,3,0)
 ;;=3^Acupuncture w/o Stimul,Ea Addl 15 Min
 ;;^UTILITY(U,$J,358.3,51551,0)
 ;;=97813^^223^2494^3^^^^1
 ;;^UTILITY(U,$J,358.3,51551,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,51551,1,2,0)
 ;;=2^97813
 ;;^UTILITY(U,$J,358.3,51551,1,3,0)
 ;;=3^Acupuncture w/ Stimul 15 Min
 ;;^UTILITY(U,$J,358.3,51552,0)
 ;;=97814^^223^2494^4^^^^1
 ;;^UTILITY(U,$J,358.3,51552,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,51552,1,2,0)
 ;;=2^97814
 ;;^UTILITY(U,$J,358.3,51552,1,3,0)
 ;;=3^Acupuncture w/ Stimul,Ea Addl 15 Min
 ;;^UTILITY(U,$J,358.3,51553,0)
 ;;=99201^^224^2495^1
 ;;^UTILITY(U,$J,358.3,51553,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,51553,1,1,0)
 ;;=1^Problem Focus
 ;;^UTILITY(U,$J,358.3,51553,1,2,0)
 ;;=2^99201
