IBDEI1DS ; ; 06-AUG-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,24472,1,1,0)
 ;;=1^Comprehensive w/ mod
 ;;^UTILITY(U,$J,358.3,24472,1,2,0)
 ;;=2^99215
 ;;^UTILITY(U,$J,358.3,24472,3,0)
 ;;=^358.33^1^1
 ;;^UTILITY(U,$J,358.3,24472,3,1,0)
 ;;=GT
 ;;^UTILITY(U,$J,358.3,24473,0)
 ;;=99201^^137^1500^1
 ;;^UTILITY(U,$J,358.3,24473,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,24473,1,1,0)
 ;;=1^Problem Focus w/ mod
 ;;^UTILITY(U,$J,358.3,24473,1,2,0)
 ;;=2^99201
 ;;^UTILITY(U,$J,358.3,24473,3,0)
 ;;=^358.33^1^1
 ;;^UTILITY(U,$J,358.3,24473,3,1,0)
 ;;=GT
 ;;^UTILITY(U,$J,358.3,24474,0)
 ;;=99202^^137^1500^2
 ;;^UTILITY(U,$J,358.3,24474,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,24474,1,1,0)
 ;;=1^Expanded Problem Focus w/ mod
 ;;^UTILITY(U,$J,358.3,24474,1,2,0)
 ;;=2^99202
 ;;^UTILITY(U,$J,358.3,24474,3,0)
 ;;=^358.33^1^1
 ;;^UTILITY(U,$J,358.3,24474,3,1,0)
 ;;=GT
 ;;^UTILITY(U,$J,358.3,24475,0)
 ;;=99203^^137^1500^3
 ;;^UTILITY(U,$J,358.3,24475,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,24475,1,1,0)
 ;;=1^Detailed w/ mod
 ;;^UTILITY(U,$J,358.3,24475,1,2,0)
 ;;=2^99203
 ;;^UTILITY(U,$J,358.3,24475,3,0)
 ;;=^358.33^1^1
 ;;^UTILITY(U,$J,358.3,24475,3,1,0)
 ;;=GT
 ;;^UTILITY(U,$J,358.3,24476,0)
 ;;=99204^^137^1500^4
 ;;^UTILITY(U,$J,358.3,24476,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,24476,1,1,0)
 ;;=1^Comprehensive, Moderate w/ mod
 ;;^UTILITY(U,$J,358.3,24476,1,2,0)
 ;;=2^99204
 ;;^UTILITY(U,$J,358.3,24476,3,0)
 ;;=^358.33^1^1
 ;;^UTILITY(U,$J,358.3,24476,3,1,0)
 ;;=GT
 ;;^UTILITY(U,$J,358.3,24477,0)
 ;;=99205^^137^1500^5
 ;;^UTILITY(U,$J,358.3,24477,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,24477,1,1,0)
 ;;=1^Comprehensive, High w/ mod
 ;;^UTILITY(U,$J,358.3,24477,1,2,0)
 ;;=2^99205
 ;;^UTILITY(U,$J,358.3,24477,3,0)
 ;;=^358.33^1^1
 ;;^UTILITY(U,$J,358.3,24477,3,1,0)
 ;;=GT
 ;;^UTILITY(U,$J,358.3,24478,0)
 ;;=V71.89^^138^1501^1
 ;;^UTILITY(U,$J,358.3,24478,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,24478,1,3,0)
 ;;=3^ENROLLMENT IN CCHT PROGRAM
 ;;^UTILITY(U,$J,358.3,24478,1,4,0)
 ;;=4^V71.89
 ;;^UTILITY(U,$J,358.3,24478,2)
 ;;=^322082
 ;;^UTILITY(U,$J,358.3,24479,0)
 ;;=99078^^139^1502^4^^^^1
 ;;^UTILITY(U,$J,358.3,24479,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,24479,1,2,0)
 ;;=2^99078
 ;;^UTILITY(U,$J,358.3,24479,1,3,0)
 ;;=3^GROUP HEALTH EDUCATION
 ;;^UTILITY(U,$J,358.3,24480,0)
 ;;=99080^^139^1502^6^^^^1
 ;;^UTILITY(U,$J,358.3,24480,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,24480,1,2,0)
 ;;=2^99080
 ;;^UTILITY(U,$J,358.3,24480,1,3,0)
 ;;=3^SPECIAL REPORTS OR FORMS
 ;;^UTILITY(U,$J,358.3,24481,0)
 ;;=99499^^139^1502^7^^^^1
 ;;^UTILITY(U,$J,358.3,24481,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,24481,1,2,0)
 ;;=2^99499
 ;;^UTILITY(U,$J,358.3,24481,1,3,0)
 ;;=3^UNLISTED E&M SERVICE
 ;;^UTILITY(U,$J,358.3,24482,0)
 ;;=G0108^^139^1502^2^^^^1
 ;;^UTILITY(U,$J,358.3,24482,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,24482,1,2,0)
 ;;=2^G0108
 ;;^UTILITY(U,$J,358.3,24482,1,3,0)
 ;;=3^DM MGMT TRN PER INDIV PER 30MIN
 ;;^UTILITY(U,$J,358.3,24483,0)
 ;;=G0109^^139^1502^1^^^^1
 ;;^UTILITY(U,$J,358.3,24483,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,24483,1,2,0)
 ;;=2^G0109
 ;;^UTILITY(U,$J,358.3,24483,1,3,0)
 ;;=3^DM MGMT TRN GRP PER 30MIN
 ;;^UTILITY(U,$J,358.3,24484,0)
 ;;=A9279^^139^1502^5^^^^1
 ;;^UTILITY(U,$J,358.3,24484,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,24484,1,2,0)
 ;;=2^A9279
 ;;^UTILITY(U,$J,358.3,24484,1,3,0)
 ;;=3^MONITORING FEATURE/DEVICE NOC
 ;;^UTILITY(U,$J,358.3,24485,0)
 ;;=93010^^139^1502^3^^^^1
 ;;^UTILITY(U,$J,358.3,24485,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,24485,1,2,0)
 ;;=2^93010
 ;;^UTILITY(U,$J,358.3,24485,1,3,0)
 ;;=3^EKG REPORT