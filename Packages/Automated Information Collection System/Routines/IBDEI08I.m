IBDEI08I ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,3427,0)
 ;;=H02.103^^28^253^23
 ;;^UTILITY(U,$J,358.3,3427,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,3427,1,3,0)
 ;;=3^Ectropion Right Eye,Unspec Eyelid
 ;;^UTILITY(U,$J,358.3,3427,1,4,0)
 ;;=4^H02.103
 ;;^UTILITY(U,$J,358.3,3427,2)
 ;;=^5004304
 ;;^UTILITY(U,$J,358.3,3428,0)
 ;;=H02.006^^28^253^24
 ;;^UTILITY(U,$J,358.3,3428,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,3428,1,3,0)
 ;;=3^Entropion Left Eye,Unspec Eyelid
 ;;^UTILITY(U,$J,358.3,3428,1,4,0)
 ;;=4^H02.006
 ;;^UTILITY(U,$J,358.3,3428,2)
 ;;=^5004277
 ;;^UTILITY(U,$J,358.3,3429,0)
 ;;=H02.003^^28^253^25
 ;;^UTILITY(U,$J,358.3,3429,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,3429,1,3,0)
 ;;=3^Entropion Right Eye,Unspec Eyelid
 ;;^UTILITY(U,$J,358.3,3429,1,4,0)
 ;;=4^H02.003
 ;;^UTILITY(U,$J,358.3,3429,2)
 ;;=^5004275
 ;;^UTILITY(U,$J,358.3,3430,0)
 ;;=H53.71^^28^253^26
 ;;^UTILITY(U,$J,358.3,3430,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,3430,1,3,0)
 ;;=3^Glare Sensitivity
 ;;^UTILITY(U,$J,358.3,3430,1,4,0)
 ;;=4^H53.71
 ;;^UTILITY(U,$J,358.3,3430,2)
 ;;=^5006354
 ;;^UTILITY(U,$J,358.3,3431,0)
 ;;=H40.9^^28^253^27
 ;;^UTILITY(U,$J,358.3,3431,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,3431,1,3,0)
 ;;=3^Glaucoma,Unspec
 ;;^UTILITY(U,$J,358.3,3431,1,4,0)
 ;;=4^H40.9
 ;;^UTILITY(U,$J,358.3,3431,2)
 ;;=^5005931
 ;;^UTILITY(U,$J,358.3,3432,0)
 ;;=H54.52^^28^253^28
 ;;^UTILITY(U,$J,358.3,3432,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,3432,1,3,0)
 ;;=3^Low Vision Lt Eye,Normal Vision Rt Eye
 ;;^UTILITY(U,$J,358.3,3432,1,4,0)
 ;;=4^H54.52
 ;;^UTILITY(U,$J,358.3,3432,2)
 ;;=^5133519
 ;;^UTILITY(U,$J,358.3,3433,0)
 ;;=H54.51^^28^253^29
 ;;^UTILITY(U,$J,358.3,3433,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,3433,1,3,0)
 ;;=3^Low Vision Rt Eye,Normal Vision Lt Eye
 ;;^UTILITY(U,$J,358.3,3433,1,4,0)
 ;;=4^H54.51
 ;;^UTILITY(U,$J,358.3,3433,2)
 ;;=^5006365
 ;;^UTILITY(U,$J,358.3,3434,0)
 ;;=H35.30^^28^253^30
 ;;^UTILITY(U,$J,358.3,3434,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,3434,1,3,0)
 ;;=3^Macular Degeneration,Unspec
 ;;^UTILITY(U,$J,358.3,3434,1,4,0)
 ;;=4^H35.30
 ;;^UTILITY(U,$J,358.3,3434,2)
 ;;=^5005646
 ;;^UTILITY(U,$J,358.3,3435,0)
 ;;=H55.00^^28^253^31
 ;;^UTILITY(U,$J,358.3,3435,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,3435,1,3,0)
 ;;=3^Nystagmus,Unspec
 ;;^UTILITY(U,$J,358.3,3435,1,4,0)
 ;;=4^H55.00
 ;;^UTILITY(U,$J,358.3,3435,2)
 ;;=^5006370
 ;;^UTILITY(U,$J,358.3,3436,0)
 ;;=H11.001^^28^253^34
 ;;^UTILITY(U,$J,358.3,3436,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,3436,1,3,0)
 ;;=3^Pterygium Right Eye,Unspec
 ;;^UTILITY(U,$J,358.3,3436,1,4,0)
 ;;=4^H11.001
 ;;^UTILITY(U,$J,358.3,3436,2)
 ;;=^5004717
 ;;^UTILITY(U,$J,358.3,3437,0)
 ;;=H11.002^^28^253^33
 ;;^UTILITY(U,$J,358.3,3437,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,3437,1,3,0)
 ;;=3^Pterygium Left Eye,Unspec
 ;;^UTILITY(U,$J,358.3,3437,1,4,0)
 ;;=4^H11.002
 ;;^UTILITY(U,$J,358.3,3437,2)
 ;;=^5004718
 ;;^UTILITY(U,$J,358.3,3438,0)
 ;;=H11.003^^28^253^32
 ;;^UTILITY(U,$J,358.3,3438,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,3438,1,3,0)
 ;;=3^Pterygium Bilateral,Unspec
 ;;^UTILITY(U,$J,358.3,3438,1,4,0)
 ;;=4^H11.003
 ;;^UTILITY(U,$J,358.3,3438,2)
 ;;=^5004719
 ;;^UTILITY(U,$J,358.3,3439,0)
 ;;=H33.001^^28^253^37
 ;;^UTILITY(U,$J,358.3,3439,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,3439,1,3,0)
 ;;=3^Retinal Detachment w/ Retinal Break Right Eye,Unspec
 ;;^UTILITY(U,$J,358.3,3439,1,4,0)
 ;;=4^H33.001
 ;;^UTILITY(U,$J,358.3,3439,2)
 ;;=^5005490
 ;;^UTILITY(U,$J,358.3,3440,0)
 ;;=H33.002^^28^253^36
 ;;^UTILITY(U,$J,358.3,3440,1,0)
 ;;=^358.31IA^4^2
