IBDEI07B ; ; 06-AUG-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,2919,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,2919,1,3,0)
 ;;=3^Diabetes,Type II,Controlled
 ;;^UTILITY(U,$J,358.3,2919,1,4,0)
 ;;=4^E11.9
 ;;^UTILITY(U,$J,358.3,2919,2)
 ;;=^5002666
 ;;^UTILITY(U,$J,358.3,2920,0)
 ;;=E11.65^^7^84^25
 ;;^UTILITY(U,$J,358.3,2920,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,2920,1,3,0)
 ;;=3^Diabetes,Type II,Uncontrolled
 ;;^UTILITY(U,$J,358.3,2920,1,4,0)
 ;;=4^E11.65
 ;;^UTILITY(U,$J,358.3,2920,2)
 ;;=^5002663
 ;;^UTILITY(U,$J,358.3,2921,0)
 ;;=R19.7^^7^84^26
 ;;^UTILITY(U,$J,358.3,2921,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,2921,1,3,0)
 ;;=3^Diarrhea
 ;;^UTILITY(U,$J,358.3,2921,1,4,0)
 ;;=4^R19.7
 ;;^UTILITY(U,$J,358.3,2921,2)
 ;;=^5019276
 ;;^UTILITY(U,$J,358.3,2922,0)
 ;;=R74.0^^7^84^27
 ;;^UTILITY(U,$J,358.3,2922,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,2922,1,3,0)
 ;;=3^Elevation of Transaminases
 ;;^UTILITY(U,$J,358.3,2922,1,4,0)
 ;;=4^R74.0
 ;;^UTILITY(U,$J,358.3,2922,2)
 ;;=^5019565
 ;;^UTILITY(U,$J,358.3,2923,0)
 ;;=N52.9^^7^84^29
 ;;^UTILITY(U,$J,358.3,2923,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,2923,1,3,0)
 ;;=3^Erectile Dysfunction
 ;;^UTILITY(U,$J,358.3,2923,1,4,0)
 ;;=4^N52.9
 ;;^UTILITY(U,$J,358.3,2923,2)
 ;;=^5015763
 ;;^UTILITY(U,$J,358.3,2924,0)
 ;;=K20.9^^7^84^30
 ;;^UTILITY(U,$J,358.3,2924,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,2924,1,3,0)
 ;;=3^Esophagitis,Unspec
 ;;^UTILITY(U,$J,358.3,2924,1,4,0)
 ;;=4^K20.9
 ;;^UTILITY(U,$J,358.3,2924,2)
 ;;=^295809
 ;;^UTILITY(U,$J,358.3,2925,0)
 ;;=R53.83^^7^84^31
 ;;^UTILITY(U,$J,358.3,2925,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,2925,1,3,0)
 ;;=3^Fatigue
 ;;^UTILITY(U,$J,358.3,2925,1,4,0)
 ;;=4^R53.83
 ;;^UTILITY(U,$J,358.3,2925,2)
 ;;=^5019520
 ;;^UTILITY(U,$J,358.3,2926,0)
 ;;=R50.9^^7^84^32
 ;;^UTILITY(U,$J,358.3,2926,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,2926,1,3,0)
 ;;=3^Fever
 ;;^UTILITY(U,$J,358.3,2926,1,4,0)
 ;;=4^R50.9
 ;;^UTILITY(U,$J,358.3,2926,2)
 ;;=^5019512
 ;;^UTILITY(U,$J,358.3,2927,0)
 ;;=K52.9^^7^84^33
 ;;^UTILITY(U,$J,358.3,2927,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,2927,1,3,0)
 ;;=3^Gastroenteritis NOS
 ;;^UTILITY(U,$J,358.3,2927,1,4,0)
 ;;=4^K52.9
 ;;^UTILITY(U,$J,358.3,2927,2)
 ;;=^5008704
 ;;^UTILITY(U,$J,358.3,2928,0)
 ;;=A60.00^^7^84^34
 ;;^UTILITY(U,$J,358.3,2928,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,2928,1,3,0)
 ;;=3^Genital Herpes,Unspec
 ;;^UTILITY(U,$J,358.3,2928,1,4,0)
 ;;=4^A60.00
 ;;^UTILITY(U,$J,358.3,2928,2)
 ;;=^5000352
 ;;^UTILITY(U,$J,358.3,2929,0)
 ;;=A07.1^^7^84^35
 ;;^UTILITY(U,$J,358.3,2929,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,2929,1,3,0)
 ;;=3^Giardiasis
 ;;^UTILITY(U,$J,358.3,2929,1,4,0)
 ;;=4^A07.1
 ;;^UTILITY(U,$J,358.3,2929,2)
 ;;=^5000049
 ;;^UTILITY(U,$J,358.3,2930,0)
 ;;=A54.09^^7^84^36
 ;;^UTILITY(U,$J,358.3,2930,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,2930,1,3,0)
 ;;=3^Gonorrhea,Lower GU Tract
 ;;^UTILITY(U,$J,358.3,2930,1,4,0)
 ;;=4^A54.09
 ;;^UTILITY(U,$J,358.3,2930,2)
 ;;=^5000315
 ;;^UTILITY(U,$J,358.3,2931,0)
 ;;=A54.5^^7^84^37
 ;;^UTILITY(U,$J,358.3,2931,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,2931,1,3,0)
 ;;=3^Gonorrhea,Oropharyngeal
 ;;^UTILITY(U,$J,358.3,2931,1,4,0)
 ;;=4^A54.5
 ;;^UTILITY(U,$J,358.3,2931,2)
 ;;=^5000330
 ;;^UTILITY(U,$J,358.3,2932,0)
 ;;=A54.6^^7^84^38
 ;;^UTILITY(U,$J,358.3,2932,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,2932,1,3,0)
 ;;=3^Gonorrhea,Rectal
 ;;^UTILITY(U,$J,358.3,2932,1,4,0)
 ;;=4^A54.6
 ;;^UTILITY(U,$J,358.3,2932,2)
 ;;=^266824
 ;;^UTILITY(U,$J,358.3,2933,0)
 ;;=B17.9^^7^84^41
 ;;^UTILITY(U,$J,358.3,2933,1,0)
 ;;=^358.31IA^4^2