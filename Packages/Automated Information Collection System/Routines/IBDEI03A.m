IBDEI03A ; ; 06-AUG-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,997,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,997,1,3,0)
 ;;=3^Dizziness and giddiness
 ;;^UTILITY(U,$J,358.3,997,1,4,0)
 ;;=4^R42.
 ;;^UTILITY(U,$J,358.3,997,2)
 ;;=^5019450
 ;;^UTILITY(U,$J,358.3,998,0)
 ;;=R43.0^^3^35^22
 ;;^UTILITY(U,$J,358.3,998,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,998,1,3,0)
 ;;=3^Anosmia
 ;;^UTILITY(U,$J,358.3,998,1,4,0)
 ;;=4^R43.0
 ;;^UTILITY(U,$J,358.3,998,2)
 ;;=^7949
 ;;^UTILITY(U,$J,358.3,999,0)
 ;;=R49.0^^3^35^67
 ;;^UTILITY(U,$J,358.3,999,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,999,1,3,0)
 ;;=3^Dysphonia
 ;;^UTILITY(U,$J,358.3,999,1,4,0)
 ;;=4^R49.0
 ;;^UTILITY(U,$J,358.3,999,2)
 ;;=^5019501
 ;;^UTILITY(U,$J,358.3,1000,0)
 ;;=R04.0^^3^35^69
 ;;^UTILITY(U,$J,358.3,1000,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,1000,1,3,0)
 ;;=3^Epistaxis
 ;;^UTILITY(U,$J,358.3,1000,1,4,0)
 ;;=4^R04.0
 ;;^UTILITY(U,$J,358.3,1000,2)
 ;;=^5019173
 ;;^UTILITY(U,$J,358.3,1001,0)
 ;;=R04.1^^3^35^79
 ;;^UTILITY(U,$J,358.3,1001,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,1001,1,3,0)
 ;;=3^Hemorrhage from throat
 ;;^UTILITY(U,$J,358.3,1001,1,4,0)
 ;;=4^R04.1
 ;;^UTILITY(U,$J,358.3,1001,2)
 ;;=^5019174
 ;;^UTILITY(U,$J,358.3,1002,0)
 ;;=R09.82^^3^35^112
 ;;^UTILITY(U,$J,358.3,1002,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,1002,1,3,0)
 ;;=3^Postnasal drip
 ;;^UTILITY(U,$J,358.3,1002,1,4,0)
 ;;=4^R09.82
 ;;^UTILITY(U,$J,358.3,1002,2)
 ;;=^97058
 ;;^UTILITY(U,$J,358.3,1003,0)
 ;;=R06.5^^3^35^94
 ;;^UTILITY(U,$J,358.3,1003,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,1003,1,3,0)
 ;;=3^Mouth breathing
 ;;^UTILITY(U,$J,358.3,1003,1,4,0)
 ;;=4^R06.5
 ;;^UTILITY(U,$J,358.3,1003,2)
 ;;=^5019187
 ;;^UTILITY(U,$J,358.3,1004,0)
 ;;=R19.6^^3^35^75
 ;;^UTILITY(U,$J,358.3,1004,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,1004,1,3,0)
 ;;=3^Halitosis
 ;;^UTILITY(U,$J,358.3,1004,1,4,0)
 ;;=4^R19.6
 ;;^UTILITY(U,$J,358.3,1004,2)
 ;;=^5019275
 ;;^UTILITY(U,$J,358.3,1005,0)
 ;;=R59.9^^3^35^68
 ;;^UTILITY(U,$J,358.3,1005,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,1005,1,3,0)
 ;;=3^Enlarged lymph nodes, unspecified
 ;;^UTILITY(U,$J,358.3,1005,1,4,0)
 ;;=4^R59.9
 ;;^UTILITY(U,$J,358.3,1005,2)
 ;;=^5019531
 ;;^UTILITY(U,$J,358.3,1006,0)
 ;;=R06.1^^3^35^116
 ;;^UTILITY(U,$J,358.3,1006,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,1006,1,3,0)
 ;;=3^Stridor
 ;;^UTILITY(U,$J,358.3,1006,1,4,0)
 ;;=4^R06.1
 ;;^UTILITY(U,$J,358.3,1006,2)
 ;;=^5019183
 ;;^UTILITY(U,$J,358.3,1007,0)
 ;;=R13.10^^3^35^66
 ;;^UTILITY(U,$J,358.3,1007,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,1007,1,3,0)
 ;;=3^Dysphagia, unspecified
 ;;^UTILITY(U,$J,358.3,1007,1,4,0)
 ;;=4^R13.10
 ;;^UTILITY(U,$J,358.3,1007,2)
 ;;=^335307
 ;;^UTILITY(U,$J,358.3,1008,0)
 ;;=R13.11^^3^35^62
 ;;^UTILITY(U,$J,358.3,1008,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,1008,1,3,0)
 ;;=3^Dysphagia, oral phase
 ;;^UTILITY(U,$J,358.3,1008,1,4,0)
 ;;=4^R13.11
 ;;^UTILITY(U,$J,358.3,1008,2)
 ;;=^335276
 ;;^UTILITY(U,$J,358.3,1009,0)
 ;;=R13.12^^3^35^63
 ;;^UTILITY(U,$J,358.3,1009,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,1009,1,3,0)
 ;;=3^Dysphagia, oropharyngeal phase
 ;;^UTILITY(U,$J,358.3,1009,1,4,0)
 ;;=4^R13.12
 ;;^UTILITY(U,$J,358.3,1009,2)
 ;;=^335277
 ;;^UTILITY(U,$J,358.3,1010,0)
 ;;=R13.13^^3^35^64
 ;;^UTILITY(U,$J,358.3,1010,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,1010,1,3,0)
 ;;=3^Dysphagia, pharyngeal phase
 ;;^UTILITY(U,$J,358.3,1010,1,4,0)
 ;;=4^R13.13
 ;;^UTILITY(U,$J,358.3,1010,2)
 ;;=^335278
 ;;^UTILITY(U,$J,358.3,1011,0)
 ;;=R13.14^^3^35^65
 ;;^UTILITY(U,$J,358.3,1011,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,1011,1,3,0)
 ;;=3^Dysphagia, pharyngoesophageal phase