IBDEI0BD ; ; 06-AUG-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,4989,1,2,0)
 ;;=2^111.0
 ;;^UTILITY(U,$J,358.3,4989,1,5,0)
 ;;=5^Tinea Versicolor
 ;;^UTILITY(U,$J,358.3,4989,2)
 ;;=^119758
 ;;^UTILITY(U,$J,358.3,4990,0)
 ;;=706.8^^25^262^1
 ;;^UTILITY(U,$J,358.3,4990,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,4990,1,2,0)
 ;;=2^706.8
 ;;^UTILITY(U,$J,358.3,4990,1,5,0)
 ;;=5^Asteatotic Eczema
 ;;^UTILITY(U,$J,358.3,4990,2)
 ;;=^271931
 ;;^UTILITY(U,$J,358.3,4991,0)
 ;;=691.8^^25^262^5
 ;;^UTILITY(U,$J,358.3,4991,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,4991,1,2,0)
 ;;=2^691.8
 ;;^UTILITY(U,$J,358.3,4991,1,5,0)
 ;;=5^Intrinsic Eczema
 ;;^UTILITY(U,$J,358.3,4991,2)
 ;;=^87342
 ;;^UTILITY(U,$J,358.3,4992,0)
 ;;=692.9^^25^262^8
 ;;^UTILITY(U,$J,358.3,4992,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,4992,1,2,0)
 ;;=2^692.9
 ;;^UTILITY(U,$J,358.3,4992,1,5,0)
 ;;=5^Xerotic Eczema
 ;;^UTILITY(U,$J,358.3,4992,2)
 ;;=^27800
 ;;^UTILITY(U,$J,358.3,4993,0)
 ;;=686.8^^25^262^6
 ;;^UTILITY(U,$J,358.3,4993,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,4993,1,2,0)
 ;;=2^686.8
 ;;^UTILITY(U,$J,358.3,4993,1,5,0)
 ;;=5^Pustular Eczema
 ;;^UTILITY(U,$J,358.3,4993,2)
 ;;=^88097
 ;;^UTILITY(U,$J,358.3,4994,0)
 ;;=690.18^^25^262^7
 ;;^UTILITY(U,$J,358.3,4994,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,4994,1,2,0)
 ;;=2^690.18
 ;;^UTILITY(U,$J,358.3,4994,1,5,0)
 ;;=5^Seborrheic Eczema
 ;;^UTILITY(U,$J,358.3,4994,2)
 ;;=^303310
 ;;^UTILITY(U,$J,358.3,4995,0)
 ;;=705.81^^25^262^3
 ;;^UTILITY(U,$J,358.3,4995,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,4995,1,2,0)
 ;;=2^705.81
 ;;^UTILITY(U,$J,358.3,4995,1,5,0)
 ;;=5^Dyshidrotic Eczema/Pompholyx
 ;;^UTILITY(U,$J,358.3,4995,2)
 ;;=Dyshidrotic Eczema/Pompholyx^96545
 ;;^UTILITY(U,$J,358.3,4996,0)
 ;;=692.9^^25^262^2
 ;;^UTILITY(U,$J,358.3,4996,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,4996,1,2,0)
 ;;=2^692.9
 ;;^UTILITY(U,$J,358.3,4996,1,5,0)
 ;;=5^Atopic Eczema
 ;;^UTILITY(U,$J,358.3,4996,2)
 ;;=^27800
 ;;^UTILITY(U,$J,358.3,4997,0)
 ;;=274.89^^25^262^4
 ;;^UTILITY(U,$J,358.3,4997,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,4997,1,2,0)
 ;;=2^274.89
 ;;^UTILITY(U,$J,358.3,4997,1,5,0)
 ;;=5^Gouty Eczema
 ;;^UTILITY(U,$J,358.3,4997,2)
 ;;=^267936
 ;;^UTILITY(U,$J,358.3,4998,0)
 ;;=782.3^^25^263^3
 ;;^UTILITY(U,$J,358.3,4998,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,4998,1,2,0)
 ;;=2^782.3
 ;;^UTILITY(U,$J,358.3,4998,1,5,0)
 ;;=5^Pitting Edema
 ;;^UTILITY(U,$J,358.3,4998,2)
 ;;=^38340
 ;;^UTILITY(U,$J,358.3,4999,0)
 ;;=459.2^^25^263^2
 ;;^UTILITY(U,$J,358.3,4999,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,4999,1,2,0)
 ;;=2^459.2
 ;;^UTILITY(U,$J,358.3,4999,1,5,0)
 ;;=5^Edema d/t Venous Obstruction
 ;;^UTILITY(U,$J,358.3,4999,2)
 ;;=^269850
 ;;^UTILITY(U,$J,358.3,5000,0)
 ;;=457.1^^25^263^1
 ;;^UTILITY(U,$J,358.3,5000,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,5000,1,2,0)
 ;;=2^457.1
 ;;^UTILITY(U,$J,358.3,5000,1,5,0)
 ;;=5^Edema d/t Lymphatic Obstruction
 ;;^UTILITY(U,$J,358.3,5000,2)
 ;;=^87693
 ;;^UTILITY(U,$J,358.3,5001,0)
 ;;=695.2^^25^264^2
 ;;^UTILITY(U,$J,358.3,5001,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,5001,1,2,0)
 ;;=2^695.2
 ;;^UTILITY(U,$J,358.3,5001,1,5,0)
 ;;=5^Erythema Nodosum
 ;;^UTILITY(U,$J,358.3,5001,2)
 ;;=^42065
 ;;^UTILITY(U,$J,358.3,5002,0)
 ;;=692.71^^25^264^3
 ;;^UTILITY(U,$J,358.3,5002,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,5002,1,2,0)
 ;;=2^692.71
 ;;^UTILITY(U,$J,358.3,5002,1,5,0)
 ;;=5^Erythema Solara
 ;;^UTILITY(U,$J,358.3,5002,2)
 ;;=^115798
 ;;^UTILITY(U,$J,358.3,5003,0)
 ;;=695.0^^25^264^4
 ;;^UTILITY(U,$J,358.3,5003,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,5003,1,2,0)
 ;;=2^695.0