IBDEI0NO ; ; 06-AUG-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,11281,0)
 ;;=304.83^^50^641^47
 ;;^UTILITY(U,$J,358.3,11281,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,11281,1,2,0)
 ;;=2^304.83
 ;;^UTILITY(U,$J,358.3,11281,1,5,0)
 ;;=5^Comb Drug Dep-Remission
 ;;^UTILITY(U,$J,358.3,11281,2)
 ;;=^268221
 ;;^UTILITY(U,$J,358.3,11282,0)
 ;;=305.1^^50^641^63
 ;;^UTILITY(U,$J,358.3,11282,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,11282,1,2,0)
 ;;=2^305.1
 ;;^UTILITY(U,$J,358.3,11282,1,5,0)
 ;;=5^Nicotine Dependence
 ;;^UTILITY(U,$J,358.3,11282,2)
 ;;=^119899
 ;;^UTILITY(U,$J,358.3,11283,0)
 ;;=291.81^^50^641^14
 ;;^UTILITY(U,$J,358.3,11283,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,11283,1,2,0)
 ;;=2^291.81
 ;;^UTILITY(U,$J,358.3,11283,1,5,0)
 ;;=5^Alcohol Withdrawal
 ;;^UTILITY(U,$J,358.3,11283,2)
 ;;=^123498
 ;;^UTILITY(U,$J,358.3,11284,0)
 ;;=291.0^^50^641^13
 ;;^UTILITY(U,$J,358.3,11284,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,11284,1,2,0)
 ;;=2^291.0
 ;;^UTILITY(U,$J,358.3,11284,1,5,0)
 ;;=5^Alcohol Withdraw Delir
 ;;^UTILITY(U,$J,358.3,11284,2)
 ;;=^4589
 ;;^UTILITY(U,$J,358.3,11285,0)
 ;;=303.00^^50^641^5
 ;;^UTILITY(U,$J,358.3,11285,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,11285,1,2,0)
 ;;=2^303.00
 ;;^UTILITY(U,$J,358.3,11285,1,5,0)
 ;;=5^Alc Intox NOS
 ;;^UTILITY(U,$J,358.3,11285,2)
 ;;=^268183
 ;;^UTILITY(U,$J,358.3,11286,0)
 ;;=303.01^^50^641^6
 ;;^UTILITY(U,$J,358.3,11286,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,11286,1,2,0)
 ;;=2^303.01
 ;;^UTILITY(U,$J,358.3,11286,1,5,0)
 ;;=5^Alc Intox, Continuous
 ;;^UTILITY(U,$J,358.3,11286,2)
 ;;=^268184
 ;;^UTILITY(U,$J,358.3,11287,0)
 ;;=303.02^^50^641^7
 ;;^UTILITY(U,$J,358.3,11287,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,11287,1,2,0)
 ;;=2^303.02
 ;;^UTILITY(U,$J,358.3,11287,1,5,0)
 ;;=5^Alc Intox, Episodic
 ;;^UTILITY(U,$J,358.3,11287,2)
 ;;=^268185
 ;;^UTILITY(U,$J,358.3,11288,0)
 ;;=303.03^^50^641^8
 ;;^UTILITY(U,$J,358.3,11288,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,11288,1,2,0)
 ;;=2^303.03
 ;;^UTILITY(U,$J,358.3,11288,1,5,0)
 ;;=5^Alc Intox, Remiss
 ;;^UTILITY(U,$J,358.3,11288,2)
 ;;=^268186
 ;;^UTILITY(U,$J,358.3,11289,0)
 ;;=303.91^^50^641^3
 ;;^UTILITY(U,$J,358.3,11289,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,11289,1,2,0)
 ;;=2^303.91
 ;;^UTILITY(U,$J,358.3,11289,1,5,0)
 ;;=5^Alc Dep, Continuous
 ;;^UTILITY(U,$J,358.3,11289,2)
 ;;=^268188
 ;;^UTILITY(U,$J,358.3,11290,0)
 ;;=303.92^^50^641^4
 ;;^UTILITY(U,$J,358.3,11290,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,11290,1,2,0)
 ;;=2^303.92
 ;;^UTILITY(U,$J,358.3,11290,1,5,0)
 ;;=5^Alc Dep, Episodic
 ;;^UTILITY(U,$J,358.3,11290,2)
 ;;=^268189
 ;;^UTILITY(U,$J,358.3,11291,0)
 ;;=304.01^^50^641^73
 ;;^UTILITY(U,$J,358.3,11291,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,11291,1,2,0)
 ;;=2^304.01
 ;;^UTILITY(U,$J,358.3,11291,1,5,0)
 ;;=5^Opioid Depend, Continuous
 ;;^UTILITY(U,$J,358.3,11291,2)
 ;;=^268191
 ;;^UTILITY(U,$J,358.3,11292,0)
 ;;=304.02^^50^641^75
 ;;^UTILITY(U,$J,358.3,11292,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,11292,1,2,0)
 ;;=2^304.02
 ;;^UTILITY(U,$J,358.3,11292,1,5,0)
 ;;=5^Opioid Dependence, Episodic
 ;;^UTILITY(U,$J,358.3,11292,2)
 ;;=^268192
 ;;^UTILITY(U,$J,358.3,11293,0)
 ;;=304.11^^50^641^28
 ;;^UTILITY(U,$J,358.3,11293,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,11293,1,2,0)
 ;;=2^304.11
 ;;^UTILITY(U,$J,358.3,11293,1,5,0)
 ;;=5^Anxiolytic Depend, Continuous
 ;;^UTILITY(U,$J,358.3,11293,2)
 ;;=^331932
 ;;^UTILITY(U,$J,358.3,11294,0)
 ;;=304.12^^50^641^29
 ;;^UTILITY(U,$J,358.3,11294,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,11294,1,2,0)
 ;;=2^304.12
 ;;^UTILITY(U,$J,358.3,11294,1,5,0)
 ;;=5^Anxiolytic Depend, Episodic