IBDEI0DW ; ; 06-AUG-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,6311,1,5,0)
 ;;=5^Restless Leg Syndrome
 ;;^UTILITY(U,$J,358.3,6311,2)
 ;;=^105368
 ;;^UTILITY(U,$J,358.3,6312,0)
 ;;=345.90^^31^408^45
 ;;^UTILITY(U,$J,358.3,6312,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,6312,1,4,0)
 ;;=4^345.90
 ;;^UTILITY(U,$J,358.3,6312,1,5,0)
 ;;=5^Seizure Disorder
 ;;^UTILITY(U,$J,358.3,6312,2)
 ;;=^268477
 ;;^UTILITY(U,$J,358.3,6313,0)
 ;;=344.1^^31^408^35
 ;;^UTILITY(U,$J,358.3,6313,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,6313,1,4,0)
 ;;=4^344.1
 ;;^UTILITY(U,$J,358.3,6313,1,5,0)
 ;;=5^Paraplegia NOS
 ;;^UTILITY(U,$J,358.3,6313,2)
 ;;=^90028
 ;;^UTILITY(U,$J,358.3,6314,0)
 ;;=437.9^^31^408^14
 ;;^UTILITY(U,$J,358.3,6314,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,6314,1,4,0)
 ;;=4^437.9
 ;;^UTILITY(U,$J,358.3,6314,1,5,0)
 ;;=5^Cerebrovascular Dis NOS
 ;;^UTILITY(U,$J,358.3,6314,2)
 ;;=^21803
 ;;^UTILITY(U,$J,358.3,6315,0)
 ;;=438.0^^31^408^4
 ;;^UTILITY(U,$J,358.3,6315,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,6315,1,4,0)
 ;;=4^438.0
 ;;^UTILITY(U,$J,358.3,6315,1,5,0)
 ;;=5^CVA Late Eff,Cog Deficit
 ;;^UTILITY(U,$J,358.3,6315,2)
 ;;=^317905
 ;;^UTILITY(U,$J,358.3,6316,0)
 ;;=438.10^^31^408^8
 ;;^UTILITY(U,$J,358.3,6316,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,6316,1,4,0)
 ;;=4^438.10
 ;;^UTILITY(U,$J,358.3,6316,1,5,0)
 ;;=5^CVA w/Speech/Language Deficit
 ;;^UTILITY(U,$J,358.3,6316,2)
 ;;=^317906
 ;;^UTILITY(U,$J,358.3,6317,0)
 ;;=438.11^^31^408^3
 ;;^UTILITY(U,$J,358.3,6317,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,6317,1,4,0)
 ;;=4^438.11
 ;;^UTILITY(U,$J,358.3,6317,1,5,0)
 ;;=5^CVA Late Eff w/Aphasia
 ;;^UTILITY(U,$J,358.3,6317,2)
 ;;=^317907
 ;;^UTILITY(U,$J,358.3,6318,0)
 ;;=438.9^^31^408^5
 ;;^UTILITY(U,$J,358.3,6318,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,6318,1,4,0)
 ;;=4^438.9
 ;;^UTILITY(U,$J,358.3,6318,1,5,0)
 ;;=5^CVA Late Eff,Unsp
 ;;^UTILITY(U,$J,358.3,6318,2)
 ;;=^269757
 ;;^UTILITY(U,$J,358.3,6319,0)
 ;;=780.50^^31^408^48
 ;;^UTILITY(U,$J,358.3,6319,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,6319,1,4,0)
 ;;=4^780.50
 ;;^UTILITY(U,$J,358.3,6319,1,5,0)
 ;;=5^Sleep Disturbance NOS
 ;;^UTILITY(U,$J,358.3,6319,2)
 ;;=^111287
 ;;^UTILITY(U,$J,358.3,6320,0)
 ;;=781.2^^31^408^24
 ;;^UTILITY(U,$J,358.3,6320,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,6320,1,4,0)
 ;;=4^781.2
 ;;^UTILITY(U,$J,358.3,6320,1,5,0)
 ;;=5^Gait Disturbance
 ;;^UTILITY(U,$J,358.3,6320,2)
 ;;=^48820
 ;;^UTILITY(U,$J,358.3,6321,0)
 ;;=781.99^^31^408^34
 ;;^UTILITY(U,$J,358.3,6321,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,6321,1,4,0)
 ;;=4^781.99
 ;;^UTILITY(U,$J,358.3,6321,1,5,0)
 ;;=5^Oth Sympt Nervous System
 ;;^UTILITY(U,$J,358.3,6321,2)
 ;;=^322159
 ;;^UTILITY(U,$J,358.3,6322,0)
 ;;=782.0^^31^408^32
 ;;^UTILITY(U,$J,358.3,6322,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,6322,1,4,0)
 ;;=4^782.0
 ;;^UTILITY(U,$J,358.3,6322,1,5,0)
 ;;=5^Numbness/Tingling
 ;;^UTILITY(U,$J,358.3,6322,2)
 ;;=^35757
 ;;^UTILITY(U,$J,358.3,6323,0)
 ;;=V12.59^^31^408^25
 ;;^UTILITY(U,$J,358.3,6323,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,6323,1,4,0)
 ;;=4^V12.59
 ;;^UTILITY(U,$J,358.3,6323,1,5,0)
 ;;=5^HX CVA,No Residual
 ;;^UTILITY(U,$J,358.3,6323,2)
 ;;=^303399
 ;;^UTILITY(U,$J,358.3,6324,0)
 ;;=305.01^^31^409^15
 ;;^UTILITY(U,$J,358.3,6324,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,6324,1,4,0)
 ;;=4^305.01
 ;;^UTILITY(U,$J,358.3,6324,1,5,0)
 ;;=5^Etoh Abuse-Continuous
 ;;^UTILITY(U,$J,358.3,6324,2)
 ;;=^268228
 ;;^UTILITY(U,$J,358.3,6325,0)
 ;;=305.02^^31^409^2
 ;;^UTILITY(U,$J,358.3,6325,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,6325,1,4,0)
 ;;=4^305.02