IBDEI03L ; ; 06-AUG-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,1144,1,4,0)
 ;;=4^E11.21
 ;;^UTILITY(U,$J,358.3,1144,2)
 ;;=^5002629
 ;;^UTILITY(U,$J,358.3,1145,0)
 ;;=E83.41^^3^38^29
 ;;^UTILITY(U,$J,358.3,1145,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,1145,1,3,0)
 ;;=3^Hypermagnesemia
 ;;^UTILITY(U,$J,358.3,1145,1,4,0)
 ;;=4^E83.41
 ;;^UTILITY(U,$J,358.3,1145,2)
 ;;=^5003002
 ;;^UTILITY(U,$J,358.3,1146,0)
 ;;=E83.42^^3^38^35
 ;;^UTILITY(U,$J,358.3,1146,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,1146,1,3,0)
 ;;=3^Hypomagnesemia
 ;;^UTILITY(U,$J,358.3,1146,1,4,0)
 ;;=4^E83.42
 ;;^UTILITY(U,$J,358.3,1146,2)
 ;;=^5003003
 ;;^UTILITY(U,$J,358.3,1147,0)
 ;;=E83.51^^3^38^33
 ;;^UTILITY(U,$J,358.3,1147,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,1147,1,3,0)
 ;;=3^Hypocalcemia
 ;;^UTILITY(U,$J,358.3,1147,1,4,0)
 ;;=4^E83.51
 ;;^UTILITY(U,$J,358.3,1147,2)
 ;;=^60542
 ;;^UTILITY(U,$J,358.3,1148,0)
 ;;=E83.52^^3^38^27
 ;;^UTILITY(U,$J,358.3,1148,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,1148,1,3,0)
 ;;=3^Hypercalcemia
 ;;^UTILITY(U,$J,358.3,1148,1,4,0)
 ;;=4^E83.52
 ;;^UTILITY(U,$J,358.3,1148,2)
 ;;=^59932
 ;;^UTILITY(U,$J,358.3,1149,0)
 ;;=E87.0^^3^38^30
 ;;^UTILITY(U,$J,358.3,1149,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,1149,1,3,0)
 ;;=3^Hyperosmolality and hypernatremia
 ;;^UTILITY(U,$J,358.3,1149,1,4,0)
 ;;=4^E87.0
 ;;^UTILITY(U,$J,358.3,1149,2)
 ;;=^5003018
 ;;^UTILITY(U,$J,358.3,1150,0)
 ;;=E87.1^^3^38^31
 ;;^UTILITY(U,$J,358.3,1150,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,1150,1,3,0)
 ;;=3^Hypo-osmolality and hyponatremia
 ;;^UTILITY(U,$J,358.3,1150,1,4,0)
 ;;=4^E87.1
 ;;^UTILITY(U,$J,358.3,1150,2)
 ;;=^5003019
 ;;^UTILITY(U,$J,358.3,1151,0)
 ;;=E87.5^^3^38^28
 ;;^UTILITY(U,$J,358.3,1151,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,1151,1,3,0)
 ;;=3^Hyperkalemia
 ;;^UTILITY(U,$J,358.3,1151,1,4,0)
 ;;=4^E87.5
 ;;^UTILITY(U,$J,358.3,1151,2)
 ;;=^60041
 ;;^UTILITY(U,$J,358.3,1152,0)
 ;;=E87.6^^3^38^34
 ;;^UTILITY(U,$J,358.3,1152,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,1152,1,3,0)
 ;;=3^Hypokalemia
 ;;^UTILITY(U,$J,358.3,1152,1,4,0)
 ;;=4^E87.6
 ;;^UTILITY(U,$J,358.3,1152,2)
 ;;=^60610
 ;;^UTILITY(U,$J,358.3,1153,0)
 ;;=F52.0^^3^38^32
 ;;^UTILITY(U,$J,358.3,1153,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,1153,1,3,0)
 ;;=3^Hypoactive sexual desire disorder
 ;;^UTILITY(U,$J,358.3,1153,1,4,0)
 ;;=4^F52.0
 ;;^UTILITY(U,$J,358.3,1153,2)
 ;;=^5003618
 ;;^UTILITY(U,$J,358.3,1154,0)
 ;;=F52.21^^3^38^39
 ;;^UTILITY(U,$J,358.3,1154,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,1154,1,3,0)
 ;;=3^Male erectile disorder
 ;;^UTILITY(U,$J,358.3,1154,1,4,0)
 ;;=4^F52.21
 ;;^UTILITY(U,$J,358.3,1154,2)
 ;;=^5003620
 ;;^UTILITY(U,$J,358.3,1155,0)
 ;;=I12.9^^3^38^25
 ;;^UTILITY(U,$J,358.3,1155,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,1155,1,3,0)
 ;;=3^Hyp chr kidney disease w stage 1-4/unsp chr kdny
 ;;^UTILITY(U,$J,358.3,1155,1,4,0)
 ;;=4^I12.9
 ;;^UTILITY(U,$J,358.3,1155,2)
 ;;=^5007066
 ;;^UTILITY(U,$J,358.3,1156,0)
 ;;=I12.0^^3^38^26
 ;;^UTILITY(U,$J,358.3,1156,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,1156,1,3,0)
 ;;=3^Hyp chr kidney disease w stage 5 chr kidney disease or ESRD
 ;;^UTILITY(U,$J,358.3,1156,1,4,0)
 ;;=4^I12.0
 ;;^UTILITY(U,$J,358.3,1156,2)
 ;;=^5007065
 ;;^UTILITY(U,$J,358.3,1157,0)
 ;;=K40.90^^3^38^62
 ;;^UTILITY(U,$J,358.3,1157,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,1157,1,3,0)
 ;;=3^Unil inguinal hernia, w/o obst or gangr, not spcf as recur
 ;;^UTILITY(U,$J,358.3,1157,1,4,0)
 ;;=4^K40.90
 ;;^UTILITY(U,$J,358.3,1157,2)
 ;;=^5008591
 ;;^UTILITY(U,$J,358.3,1158,0)
 ;;=K40.20^^3^38^8
 ;;^UTILITY(U,$J,358.3,1158,1,0)
 ;;=^358.31IA^4^2