IBDEI07A ; ; 06-AUG-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,2905,0)
 ;;=B37.0^^7^84^8
 ;;^UTILITY(U,$J,358.3,2905,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,2905,1,3,0)
 ;;=3^Candidiasis,Oropharyngeal
 ;;^UTILITY(U,$J,358.3,2905,1,4,0)
 ;;=4^B37.0
 ;;^UTILITY(U,$J,358.3,2905,2)
 ;;=^5000612
 ;;^UTILITY(U,$J,358.3,2906,0)
 ;;=B37.7^^7^84^9
 ;;^UTILITY(U,$J,358.3,2906,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,2906,1,3,0)
 ;;=3^Candidiasis,Systemic 
 ;;^UTILITY(U,$J,358.3,2906,1,4,0)
 ;;=4^B37.7
 ;;^UTILITY(U,$J,358.3,2906,2)
 ;;=^5000619
 ;;^UTILITY(U,$J,358.3,2907,0)
 ;;=B37.9^^7^84^10
 ;;^UTILITY(U,$J,358.3,2907,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,2907,1,3,0)
 ;;=3^Candidiasis,Unspec
 ;;^UTILITY(U,$J,358.3,2907,1,4,0)
 ;;=4^B37.9
 ;;^UTILITY(U,$J,358.3,2907,2)
 ;;=^5000624
 ;;^UTILITY(U,$J,358.3,2908,0)
 ;;=L03.90^^7^84^11
 ;;^UTILITY(U,$J,358.3,2908,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,2908,1,3,0)
 ;;=3^Cellulitis
 ;;^UTILITY(U,$J,358.3,2908,1,4,0)
 ;;=4^L03.90
 ;;^UTILITY(U,$J,358.3,2908,2)
 ;;=^5009067
 ;;^UTILITY(U,$J,358.3,2909,0)
 ;;=N87.9^^7^84^12
 ;;^UTILITY(U,$J,358.3,2909,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,2909,1,3,0)
 ;;=3^Cervical Intraepithelial Neoplasia
 ;;^UTILITY(U,$J,358.3,2909,1,4,0)
 ;;=4^N87.9
 ;;^UTILITY(U,$J,358.3,2909,2)
 ;;=^5015877
 ;;^UTILITY(U,$J,358.3,2910,0)
 ;;=A56.2^^7^84^13
 ;;^UTILITY(U,$J,358.3,2910,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,2910,1,3,0)
 ;;=3^Chlamydia,Genital
 ;;^UTILITY(U,$J,358.3,2910,1,4,0)
 ;;=4^A56.2
 ;;^UTILITY(U,$J,358.3,2910,2)
 ;;=^5000344
 ;;^UTILITY(U,$J,358.3,2911,0)
 ;;=A56.3^^7^84^14
 ;;^UTILITY(U,$J,358.3,2911,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,2911,1,3,0)
 ;;=3^Chlamydia,Rectal
 ;;^UTILITY(U,$J,358.3,2911,1,4,0)
 ;;=4^A56.3
 ;;^UTILITY(U,$J,358.3,2911,2)
 ;;=^5000345
 ;;^UTILITY(U,$J,358.3,2912,0)
 ;;=B38.9^^7^84^15
 ;;^UTILITY(U,$J,358.3,2912,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,2912,1,3,0)
 ;;=3^Coccidioidomycosis,Unspec
 ;;^UTILITY(U,$J,358.3,2912,1,4,0)
 ;;=4^B38.9
 ;;^UTILITY(U,$J,358.3,2912,2)
 ;;=^5000631
 ;;^UTILITY(U,$J,358.3,2913,0)
 ;;=B45.8^^7^84^18
 ;;^UTILITY(U,$J,358.3,2913,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,2913,1,3,0)
 ;;=3^Cryptococcosis NEC
 ;;^UTILITY(U,$J,358.3,2913,1,4,0)
 ;;=4^B45.8
 ;;^UTILITY(U,$J,358.3,2913,2)
 ;;=^5000674
 ;;^UTILITY(U,$J,358.3,2914,0)
 ;;=B45.1^^7^84^19
 ;;^UTILITY(U,$J,358.3,2914,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,2914,1,3,0)
 ;;=3^Cryptococcosis,Meningitis/CNS
 ;;^UTILITY(U,$J,358.3,2914,1,4,0)
 ;;=4^B45.1
 ;;^UTILITY(U,$J,358.3,2914,2)
 ;;=^5000670
 ;;^UTILITY(U,$J,358.3,2915,0)
 ;;=A07.2^^7^84^20
 ;;^UTILITY(U,$J,358.3,2915,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,2915,1,3,0)
 ;;=3^Cryptosporidiosis
 ;;^UTILITY(U,$J,358.3,2915,1,4,0)
 ;;=4^A07.2
 ;;^UTILITY(U,$J,358.3,2915,2)
 ;;=^29629
 ;;^UTILITY(U,$J,358.3,2916,0)
 ;;=N30.90^^7^84^21
 ;;^UTILITY(U,$J,358.3,2916,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,2916,1,3,0)
 ;;=3^Cystitis
 ;;^UTILITY(U,$J,358.3,2916,1,4,0)
 ;;=4^N30.90
 ;;^UTILITY(U,$J,358.3,2916,2)
 ;;=^5015642
 ;;^UTILITY(U,$J,358.3,2917,0)
 ;;=B25.9^^7^84^22
 ;;^UTILITY(U,$J,358.3,2917,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,2917,1,3,0)
 ;;=3^Cytomegaloviral Disease
 ;;^UTILITY(U,$J,358.3,2917,1,4,0)
 ;;=4^B25.9
 ;;^UTILITY(U,$J,358.3,2917,2)
 ;;=^5000560
 ;;^UTILITY(U,$J,358.3,2918,0)
 ;;=B35.9^^7^84^23
 ;;^UTILITY(U,$J,358.3,2918,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,2918,1,3,0)
 ;;=3^Dermatophytosis
 ;;^UTILITY(U,$J,358.3,2918,1,4,0)
 ;;=4^B35.9
 ;;^UTILITY(U,$J,358.3,2918,2)
 ;;=^5000607
 ;;^UTILITY(U,$J,358.3,2919,0)
 ;;=E11.9^^7^84^24