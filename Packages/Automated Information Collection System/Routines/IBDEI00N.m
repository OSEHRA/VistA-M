IBDEI00N ; ; 06-AUG-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.2)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.2,18,2,1,0)
 ;;=1^ ^35^1^2^^1
 ;;^UTILITY(U,$J,358.2,18,2,3,0)
 ;;=3^^^2^^1^^1^^1
 ;;^UTILITY(U,$J,358.2,18,2,4,0)
 ;;=2^ ^5^1^1
 ;;^UTILITY(U,$J,358.2,19,0)
 ;;=CPT CODES^27^^^^^1^0^SC^^3^0^^0^^0^3^2
 ;;^UTILITY(U,$J,358.2,19,1,0)
 ;;=^358.21I^1^1
 ;;^UTILITY(U,$J,358.2,19,1,1,0)
 ;;=1^2^2
 ;;^UTILITY(U,$J,358.2,19,2,0)
 ;;=^358.22I^3^3
 ;;^UTILITY(U,$J,358.2,19,2,1,0)
 ;;=3^ ^5^1^1^^0
 ;;^UTILITY(U,$J,358.2,19,2,2,0)
 ;;=2^ ^45^1^2^^1
 ;;^UTILITY(U,$J,358.2,19,2,3,0)
 ;;=1^ ^^2^^1^^1^^0
 ;;^UTILITY(U,$J,358.2,20,0)
 ;;=PRIMARY DX^28^^^^^4^0^SC^^10^0^^0^^0^3^2
 ;;^UTILITY(U,$J,358.2,20,2,0)
 ;;=^358.22I^4^3
 ;;^UTILITY(U,$J,358.2,20,2,1,0)
 ;;=4^CODE^7^1^1^^0
 ;;^UTILITY(U,$J,358.2,20,2,2,0)
 ;;=3^DIAGNOSIS^40^1^2^^1
 ;;^UTILITY(U,$J,358.2,20,2,4,0)
 ;;=1^P^^2^^1^^1^1^1
 ;;^UTILITY(U,$J,358.2,21,0)
 ;;=VISIT TYPE^30^^^^^2^0^C^^8^0^^0^^0^3^2
 ;;^UTILITY(U,$J,358.2,21,1,0)
 ;;=^358.21I^1^1
 ;;^UTILITY(U,$J,358.2,21,1,1,0)
 ;;=1^2
 ;;^UTILITY(U,$J,358.2,21,2,0)
 ;;=^358.22I^4^3
 ;;^UTILITY(U,$J,358.2,21,2,1,0)
 ;;=1^ ^35^1^2^^1
 ;;^UTILITY(U,$J,358.2,21,2,3,0)
 ;;=3^^^2^^1^^1^^1
 ;;^UTILITY(U,$J,358.2,21,2,4,0)
 ;;=2^ ^5^1^1
 ;;^UTILITY(U,$J,358.2,22,0)
 ;;=CPT CODES^32^^^^^1^0^SC^^3^1^3^0^^0^3^2
 ;;^UTILITY(U,$J,358.2,22,1,0)
 ;;=^358.21I^3^3
 ;;^UTILITY(U,$J,358.2,22,1,1,0)
 ;;=1^2^1
 ;;^UTILITY(U,$J,358.2,22,1,2,0)
 ;;=2^2^44
 ;;^UTILITY(U,$J,358.2,22,1,3,0)
 ;;=3^2^87
 ;;^UTILITY(U,$J,358.2,22,2,0)
 ;;=^358.22I^3^3
 ;;^UTILITY(U,$J,358.2,22,2,1,0)
 ;;=3^ ^5^1^1^^0
 ;;^UTILITY(U,$J,358.2,22,2,2,0)
 ;;=2^ ^35^1^2^^1
 ;;^UTILITY(U,$J,358.2,22,2,3,0)
 ;;=1^ ^^2^^1^^1^^0
 ;;^UTILITY(U,$J,358.2,23,0)
 ;;=DIAGNOSES^33^^^^^1^0^BC^^10^0^^0^^0^3^2
 ;;^UTILITY(U,$J,358.2,23,1,0)
 ;;=^358.21I^1^1
 ;;^UTILITY(U,$J,358.2,23,1,1,0)
 ;;=1^2
 ;;^UTILITY(U,$J,358.2,23,2,0)
 ;;=^358.22I^5^5
 ;;^UTILITY(U,$J,358.2,23,2,1,0)
 ;;=4^ ^7^1^1^^0
 ;;^UTILITY(U,$J,358.2,23,2,2,0)
 ;;=5^ ^40^1^2^^1
 ;;^UTILITY(U,$J,358.2,23,2,3,0)
 ;;=1^P^^2^^1^^1^1^1
 ;;^UTILITY(U,$J,358.2,23,2,4,0)
 ;;=2^S^^2^^1^^1^2^0
 ;;^UTILITY(U,$J,358.2,23,2,5,0)
 ;;=3^A^^2^^1^^1^7^0
 ;;^UTILITY(U,$J,358.2,24,0)
 ;;=VISIT TYPE^34^^^^^2^0^C^^8^0^^0^^0^3^2
 ;;^UTILITY(U,$J,358.2,24,1,0)
 ;;=^358.21I^1^1
 ;;^UTILITY(U,$J,358.2,24,1,1,0)
 ;;=1^2
 ;;^UTILITY(U,$J,358.2,24,2,0)
 ;;=^358.22I^4^3
 ;;^UTILITY(U,$J,358.2,24,2,1,0)
 ;;=1^ ^28^1^2^^1
 ;;^UTILITY(U,$J,358.2,24,2,3,0)
 ;;=3^^^2^^1^^1^^1
 ;;^UTILITY(U,$J,358.2,24,2,4,0)
 ;;=2^ ^5^1^1
 ;;^UTILITY(U,$J,358.2,25,0)
 ;;=DIAGNOSIS CODES^37^^^^^1^0^UBC^^10^0^2^0^^0^3^2
 ;;^UTILITY(U,$J,358.2,25,1,0)
 ;;=^358.21I^2^2
 ;;^UTILITY(U,$J,358.2,25,1,1,0)
 ;;=1^5^1
 ;;^UTILITY(U,$J,358.2,25,1,2,0)
 ;;=2^5^64
 ;;^UTILITY(U,$J,358.2,25,2,0)
 ;;=^358.22I^4^4
 ;;^UTILITY(U,$J,358.2,25,2,1,0)
 ;;=2^CODE^6^1^1^^0
 ;;^UTILITY(U,$J,358.2,25,2,2,0)
 ;;=5^ ^50^1^2^^1
 ;;^UTILITY(U,$J,358.2,25,2,3,0)
 ;;=4^S^^2^^1^^1^2^0
 ;;^UTILITY(U,$J,358.2,25,2,4,0)
 ;;=3^P^^2^^1^^1^1^1
 ;;^UTILITY(U,$J,358.2,26,0)
 ;;=CPT CODES^38^^^^^1^0^UBC^^3^0^^0^^0^3^2
 ;;^UTILITY(U,$J,358.2,26,1,0)
 ;;=^358.21I^3^3
 ;;^UTILITY(U,$J,358.2,26,1,1,0)
 ;;=1^1
 ;;^UTILITY(U,$J,358.2,26,1,2,0)
 ;;=2^1
 ;;^UTILITY(U,$J,358.2,26,1,3,0)
 ;;=3^1
 ;;^UTILITY(U,$J,358.2,26,2,0)
 ;;=^358.22I^3^3
 ;;^UTILITY(U,$J,358.2,26,2,1,0)
 ;;=1^ ^^2^^1^^1
 ;;^UTILITY(U,$J,358.2,26,2,2,0)
 ;;=2^ ^5^1^1^^1
 ;;^UTILITY(U,$J,358.2,26,2,3,0)
 ;;=3^ ^100^1^2^^1
 ;;^UTILITY(U,$J,358.2,27,0)
 ;;=VISIT TYPE^39^^^^^2^0^C^^8^0^^0^^0^3^2
 ;;^UTILITY(U,$J,358.2,27,1,0)
 ;;=^358.21I^1^1
 ;;^UTILITY(U,$J,358.2,27,1,1,0)
 ;;=1^2
 ;;^UTILITY(U,$J,358.2,27,2,0)
 ;;=^358.22I^4^3