IBDEI00Y ; ; 06-AUG-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.2)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.2,118,0)
 ;;=DIAGNOSIS CODES^194^^R^^^1^0^BSC^^10^0^^0^^0
 ;;^UTILITY(U,$J,358.2,118,1,0)
 ;;=^358.21I^1^1
 ;;^UTILITY(U,$J,358.2,118,1,1,0)
 ;;=1^3^0
 ;;^UTILITY(U,$J,358.2,118,2,0)
 ;;=^358.22I^4^4
 ;;^UTILITY(U,$J,358.2,118,2,1,0)
 ;;=1^P^7^2^1^1^0^1^1^1
 ;;^UTILITY(U,$J,358.2,118,2,2,0)
 ;;=4^CODE^7^1^1^^0
 ;;^UTILITY(U,$J,358.2,118,2,3,0)
 ;;=5^DESCRIPTION^40^1^2^2^1
 ;;^UTILITY(U,$J,358.2,118,2,4,0)
 ;;=2^S^^2^^1^^1^2^0
 ;;^UTILITY(U,$J,358.2,119,0)
 ;;=VISIT TYPE^195^^^^^2^0^C^^8^0^^0^^0^3^2
 ;;^UTILITY(U,$J,358.2,119,1,0)
 ;;=^358.21I^1^1
 ;;^UTILITY(U,$J,358.2,119,1,1,0)
 ;;=1^2
 ;;^UTILITY(U,$J,358.2,119,2,0)
 ;;=^358.22I^4^3
 ;;^UTILITY(U,$J,358.2,119,2,1,0)
 ;;=1^ ^28^1^2^^1
 ;;^UTILITY(U,$J,358.2,119,2,3,0)
 ;;=3^^^2^^1^^1^^1
 ;;^UTILITY(U,$J,358.2,119,2,4,0)
 ;;=2^ ^5^1^1
 ;;^UTILITY(U,$J,358.2,120,0)
 ;;=DIAGNOSES^196^^^^^1^0^BC^^10^0^^0^^0^3^2
 ;;^UTILITY(U,$J,358.2,120,1,0)
 ;;=^358.21I^1^1
 ;;^UTILITY(U,$J,358.2,120,1,1,0)
 ;;=1^2
 ;;^UTILITY(U,$J,358.2,120,2,0)
 ;;=^358.22I^5^5
 ;;^UTILITY(U,$J,358.2,120,2,1,0)
 ;;=4^ ^7^1^1^^0
 ;;^UTILITY(U,$J,358.2,120,2,2,0)
 ;;=5^ ^40^1^2^^1
 ;;^UTILITY(U,$J,358.2,120,2,3,0)
 ;;=1^P^^2^^1^^1^1^1
 ;;^UTILITY(U,$J,358.2,120,2,4,0)
 ;;=2^S^^2^^1^^1^2^0
 ;;^UTILITY(U,$J,358.2,120,2,5,0)
 ;;=3^A^^2^^1^^1^7^0
 ;;^UTILITY(U,$J,358.2,121,0)
 ;;=CPT CODES^199^^^^^1^0^UBC^^3^0^2^0^^0^3^2
 ;;^UTILITY(U,$J,358.2,121,1,0)
 ;;=^358.21I^3^3
 ;;^UTILITY(U,$J,358.2,121,1,1,0)
 ;;=1^2^2
 ;;^UTILITY(U,$J,358.2,121,1,2,0)
 ;;=2^2^54
 ;;^UTILITY(U,$J,358.2,121,1,3,0)
 ;;=3
 ;;^UTILITY(U,$J,358.2,121,2,0)
 ;;=^358.22I^3^3
 ;;^UTILITY(U,$J,358.2,121,2,1,0)
 ;;=1^ ^^2^^1^^1
 ;;^UTILITY(U,$J,358.2,121,2,2,0)
 ;;=2^ ^5^1^1^^1
 ;;^UTILITY(U,$J,358.2,121,2,3,0)
 ;;=3^ ^35^1^2^^1
 ;;^UTILITY(U,$J,358.2,122,0)
 ;;=VISIT TYPE^200^^^^^4^0^C^^8^0^^0^^0^3^2
 ;;^UTILITY(U,$J,358.2,122,1,0)
 ;;=^358.21I^1^1
 ;;^UTILITY(U,$J,358.2,122,1,1,0)
 ;;=1^2
 ;;^UTILITY(U,$J,358.2,122,2,0)
 ;;=^358.22I^3^2
 ;;^UTILITY(U,$J,358.2,122,2,1,0)
 ;;=1^^29^1^2^^1
 ;;^UTILITY(U,$J,358.2,122,2,3,0)
 ;;=3^^^2^^1^^1^^1
 ;;^UTILITY(U,$J,358.2,123,0)
 ;;=VISIT TYPE^203^^^^^2^0^C^^8^0^^0^^0^3^2
 ;;^UTILITY(U,$J,358.2,123,1,0)
 ;;=^358.21I^1^1
 ;;^UTILITY(U,$J,358.2,123,1,1,0)
 ;;=1^2
 ;;^UTILITY(U,$J,358.2,123,2,0)
 ;;=^358.22I^4^3
 ;;^UTILITY(U,$J,358.2,123,2,1,0)
 ;;=1^ ^28^1^2^^1
 ;;^UTILITY(U,$J,358.2,123,2,3,0)
 ;;=3^^^2^^1^^1^^1
 ;;^UTILITY(U,$J,358.2,123,2,4,0)
 ;;=2^ ^5^1^1
 ;;^UTILITY(U,$J,358.2,124,0)
 ;;=CPT CODES^204^^^^^1^0^SC^^3^0^^0^^0^3^2
 ;;^UTILITY(U,$J,358.2,124,1,0)
 ;;=^358.21I^1^1
 ;;^UTILITY(U,$J,358.2,124,1,1,0)
 ;;=1^2^2
 ;;^UTILITY(U,$J,358.2,124,2,0)
 ;;=^358.22I^3^3
 ;;^UTILITY(U,$J,358.2,124,2,1,0)
 ;;=3^ ^5^1^1^^0
 ;;^UTILITY(U,$J,358.2,124,2,2,0)
 ;;=2^ ^32^1^2^^1
 ;;^UTILITY(U,$J,358.2,124,2,3,0)
 ;;=1^ ^^2^^1^^1^^0
 ;;^UTILITY(U,$J,358.2,125,0)
 ;;=DIAGNOSES^205^^^^^1^0^BC^^10^0^^0^^0^3^2
 ;;^UTILITY(U,$J,358.2,125,1,0)
 ;;=^358.21I^1^1
 ;;^UTILITY(U,$J,358.2,125,1,1,0)
 ;;=1^2
 ;;^UTILITY(U,$J,358.2,125,2,0)
 ;;=^358.22I^5^5
 ;;^UTILITY(U,$J,358.2,125,2,1,0)
 ;;=4^ ^7^1^1^^0
 ;;^UTILITY(U,$J,358.2,125,2,2,0)
 ;;=5^ ^40^1^2^^1
 ;;^UTILITY(U,$J,358.2,125,2,3,0)
 ;;=1^P^^2^^1^^1^1^1
 ;;^UTILITY(U,$J,358.2,125,2,4,0)
 ;;=2^S^^2^^1^^1^2^0
 ;;^UTILITY(U,$J,358.2,125,2,5,0)
 ;;=3^A^^2^^1^^1^7^0
 ;;^UTILITY(U,$J,358.2,126,0)
 ;;=CPT CODES^206^^^^^1^0^UBC^^3^0^^0^^0^3^2
 ;;^UTILITY(U,$J,358.2,126,1,0)
 ;;=^358.21I^3^3
 ;;^UTILITY(U,$J,358.2,126,1,1,0)
 ;;=1^2^4
 ;;^UTILITY(U,$J,358.2,126,1,2,0)
 ;;=2^2
 ;;^UTILITY(U,$J,358.2,126,1,3,0)
 ;;=3^2
 ;;^UTILITY(U,$J,358.2,126,2,0)
 ;;=^358.22I^3^3