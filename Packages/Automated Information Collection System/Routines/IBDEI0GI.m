IBDEI0GI ; ; 06-AUG-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,7659,1,4,0)
 ;;=4^519.11
 ;;^UTILITY(U,$J,358.3,7659,1,5,0)
 ;;=5^Acute Bronchospasm
 ;;^UTILITY(U,$J,358.3,7659,2)
 ;;=^334092
 ;;^UTILITY(U,$J,358.3,7660,0)
 ;;=488.01^^35^474^20
 ;;^UTILITY(U,$J,358.3,7660,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,7660,1,4,0)
 ;;=4^488.01
 ;;^UTILITY(U,$J,358.3,7660,1,5,0)
 ;;=5^Flu DT Iden AVIAN w Pneu
 ;;^UTILITY(U,$J,358.3,7660,2)
 ;;=^339615
 ;;^UTILITY(U,$J,358.3,7661,0)
 ;;=488.02^^35^474^19
 ;;^UTILITY(U,$J,358.3,7661,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,7661,1,4,0)
 ;;=4^488.02
 ;;^UTILITY(U,$J,358.3,7661,1,5,0)
 ;;=5^Flu DT AVIAN w oth Resp
 ;;^UTILITY(U,$J,358.3,7661,2)
 ;;=^339616
 ;;^UTILITY(U,$J,358.3,7662,0)
 ;;=488.09^^35^474^18
 ;;^UTILITY(U,$J,358.3,7662,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,7662,1,4,0)
 ;;=4^488.09
 ;;^UTILITY(U,$J,358.3,7662,1,5,0)
 ;;=5^Flu DT AVIAN Manfest
 ;;^UTILITY(U,$J,358.3,7662,2)
 ;;=^339617
 ;;^UTILITY(U,$J,358.3,7663,0)
 ;;=786.30^^35^474^22
 ;;^UTILITY(U,$J,358.3,7663,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,7663,1,4,0)
 ;;=4^786.30
 ;;^UTILITY(U,$J,358.3,7663,1,5,0)
 ;;=5^Hemoptysis
 ;;^UTILITY(U,$J,358.3,7663,2)
 ;;=^339669
 ;;^UTILITY(U,$J,358.3,7664,0)
 ;;=793.11^^35^474^1
 ;;^UTILITY(U,$J,358.3,7664,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,7664,1,4,0)
 ;;=4^793.11
 ;;^UTILITY(U,$J,358.3,7664,1,5,0)
 ;;=5^Abn Chest Xray, Lung, Solitary Nodule
 ;;^UTILITY(U,$J,358.3,7664,2)
 ;;=^340570
 ;;^UTILITY(U,$J,358.3,7665,0)
 ;;=793.19^^35^474^2
 ;;^UTILITY(U,$J,358.3,7665,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,7665,1,4,0)
 ;;=4^793.19
 ;;^UTILITY(U,$J,358.3,7665,1,5,0)
 ;;=5^Abn Chest Xray,Oth Finding, Lung
 ;;^UTILITY(U,$J,358.3,7665,2)
 ;;=^340571
 ;;^UTILITY(U,$J,358.3,7666,0)
 ;;=795.51^^35^474^32
 ;;^UTILITY(U,$J,358.3,7666,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,7666,1,4,0)
 ;;=4^795.51
 ;;^UTILITY(U,$J,358.3,7666,1,5,0)
 ;;=5^Pos PPD w/o Active TB
 ;;^UTILITY(U,$J,358.3,7666,2)
 ;;=^340572
 ;;^UTILITY(U,$J,358.3,7667,0)
 ;;=795.52^^35^474^31
 ;;^UTILITY(U,$J,358.3,7667,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,7667,1,4,0)
 ;;=4^795.52
 ;;^UTILITY(U,$J,358.3,7667,1,5,0)
 ;;=5^Pos GMA Interferon w/o Active TB
 ;;^UTILITY(U,$J,358.3,7667,2)
 ;;=^340573
 ;;^UTILITY(U,$J,358.3,7668,0)
 ;;=V15.82^^35^474^21
 ;;^UTILITY(U,$J,358.3,7668,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,7668,1,4,0)
 ;;=4^V15.82
 ;;^UTILITY(U,$J,358.3,7668,1,5,0)
 ;;=5^H/O Tobacco Abuse
 ;;^UTILITY(U,$J,358.3,7668,2)
 ;;=^303405
 ;;^UTILITY(U,$J,358.3,7669,0)
 ;;=511.89^^35^474^27
 ;;^UTILITY(U,$J,358.3,7669,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,7669,1,4,0)
 ;;=4^511.89
 ;;^UTILITY(U,$J,358.3,7669,1,5,0)
 ;;=5^Pleural Effusion NEC
 ;;^UTILITY(U,$J,358.3,7669,2)
 ;;=^336604
 ;;^UTILITY(U,$J,358.3,7670,0)
 ;;=511.9^^35^474^28
 ;;^UTILITY(U,$J,358.3,7670,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,7670,1,4,0)
 ;;=4^511.9
 ;;^UTILITY(U,$J,358.3,7670,1,5,0)
 ;;=5^Pleural Effusion NOS
 ;;^UTILITY(U,$J,358.3,7670,2)
 ;;=^123973
 ;;^UTILITY(U,$J,358.3,7671,0)
 ;;=376.01^^35^475^25
 ;;^UTILITY(U,$J,358.3,7671,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,7671,1,4,0)
 ;;=4^376.01
 ;;^UTILITY(U,$J,358.3,7671,1,5,0)
 ;;=5^Orbital Cellulitis
 ;;^UTILITY(U,$J,358.3,7671,2)
 ;;=^259068
 ;;^UTILITY(U,$J,358.3,7672,0)
 ;;=388.70^^35^475^26
 ;;^UTILITY(U,$J,358.3,7672,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,7672,1,4,0)
 ;;=4^388.70
 ;;^UTILITY(U,$J,358.3,7672,1,5,0)
 ;;=5^Otalgia, Unsp
 ;;^UTILITY(U,$J,358.3,7672,2)
 ;;=^37811
 ;;^UTILITY(U,$J,358.3,7673,0)
 ;;=380.10^^35^475^27
 ;;^UTILITY(U,$J,358.3,7673,1,0)
 ;;=^358.31IA^5^2