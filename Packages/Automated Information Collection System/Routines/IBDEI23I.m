IBDEI23I ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,35167,1,4,0)
 ;;=4^I48.4
 ;;^UTILITY(U,$J,358.3,35167,2)
 ;;=^5007228
 ;;^UTILITY(U,$J,358.3,35168,0)
 ;;=Z71.89^^163^1792^1
 ;;^UTILITY(U,$J,358.3,35168,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,35168,1,3,0)
 ;;=3^Counseling,Other Specified
 ;;^UTILITY(U,$J,358.3,35168,1,4,0)
 ;;=4^Z71.89
 ;;^UTILITY(U,$J,358.3,35168,2)
 ;;=^5063253
 ;;^UTILITY(U,$J,358.3,35169,0)
 ;;=Z71.7^^163^1792^2
 ;;^UTILITY(U,$J,358.3,35169,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,35169,1,3,0)
 ;;=3^HIV Counseling
 ;;^UTILITY(U,$J,358.3,35169,1,4,0)
 ;;=4^Z71.7
 ;;^UTILITY(U,$J,358.3,35169,2)
 ;;=^5063251
 ;;^UTILITY(U,$J,358.3,35170,0)
 ;;=Z76.89^^163^1792^3
 ;;^UTILITY(U,$J,358.3,35170,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,35170,1,3,0)
 ;;=3^Persons Encountering Health Services for Oth Circumstances
 ;;^UTILITY(U,$J,358.3,35170,1,4,0)
 ;;=4^Z76.89
 ;;^UTILITY(U,$J,358.3,35170,2)
 ;;=^5063304
 ;;^UTILITY(U,$J,358.3,35171,0)
 ;;=E03.9^^163^1793^25
 ;;^UTILITY(U,$J,358.3,35171,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,35171,1,3,0)
 ;;=3^Hypothroidism,Unspec
 ;;^UTILITY(U,$J,358.3,35171,1,4,0)
 ;;=4^E03.9
 ;;^UTILITY(U,$J,358.3,35171,2)
 ;;=^5002476
 ;;^UTILITY(U,$J,358.3,35172,0)
 ;;=E11.9^^163^1793^22
 ;;^UTILITY(U,$J,358.3,35172,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,35172,1,3,0)
 ;;=3^DM Type 2 w/o Complications
 ;;^UTILITY(U,$J,358.3,35172,1,4,0)
 ;;=4^E11.9
 ;;^UTILITY(U,$J,358.3,35172,2)
 ;;=^5002666
 ;;^UTILITY(U,$J,358.3,35173,0)
 ;;=E10.9^^163^1793^6
 ;;^UTILITY(U,$J,358.3,35173,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,35173,1,3,0)
 ;;=3^DM Type 1 w/o Complications
 ;;^UTILITY(U,$J,358.3,35173,1,4,0)
 ;;=4^E10.9
 ;;^UTILITY(U,$J,358.3,35173,2)
 ;;=^5002626
 ;;^UTILITY(U,$J,358.3,35174,0)
 ;;=E11.65^^163^1793^15
 ;;^UTILITY(U,$J,358.3,35174,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,35174,1,3,0)
 ;;=3^DM Type 2 w/ Hyperglycemia
 ;;^UTILITY(U,$J,358.3,35174,1,4,0)
 ;;=4^E11.65
 ;;^UTILITY(U,$J,358.3,35174,2)
 ;;=^5002663
 ;;^UTILITY(U,$J,358.3,35175,0)
 ;;=E53.8^^163^1793^30
 ;;^UTILITY(U,$J,358.3,35175,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,35175,1,3,0)
 ;;=3^Vitamin B Deficiency NEC
 ;;^UTILITY(U,$J,358.3,35175,1,4,0)
 ;;=4^E53.8
 ;;^UTILITY(U,$J,358.3,35175,2)
 ;;=^5002797
 ;;^UTILITY(U,$J,358.3,35176,0)
 ;;=E78.0^^163^1793^29
 ;;^UTILITY(U,$J,358.3,35176,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,35176,1,3,0)
 ;;=3^Pure Hypercholesterolemia
 ;;^UTILITY(U,$J,358.3,35176,1,4,0)
 ;;=4^E78.0
 ;;^UTILITY(U,$J,358.3,35176,2)
 ;;=^5002966
 ;;^UTILITY(U,$J,358.3,35177,0)
 ;;=E78.5^^163^1793^24
 ;;^UTILITY(U,$J,358.3,35177,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,35177,1,3,0)
 ;;=3^Hyperlipidemia,Unspec
 ;;^UTILITY(U,$J,358.3,35177,1,4,0)
 ;;=4^E78.5
 ;;^UTILITY(U,$J,358.3,35177,2)
 ;;=^5002969
 ;;^UTILITY(U,$J,358.3,35178,0)
 ;;=E66.01^^163^1793^27
 ;;^UTILITY(U,$J,358.3,35178,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,35178,1,3,0)
 ;;=3^Morbid Obesity
 ;;^UTILITY(U,$J,358.3,35178,1,4,0)
 ;;=4^E66.01
 ;;^UTILITY(U,$J,358.3,35178,2)
 ;;=^5002826
 ;;^UTILITY(U,$J,358.3,35179,0)
 ;;=D64.9^^163^1793^5
 ;;^UTILITY(U,$J,358.3,35179,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,35179,1,3,0)
 ;;=3^Anemia,Unspec
 ;;^UTILITY(U,$J,358.3,35179,1,4,0)
 ;;=4^D64.9
 ;;^UTILITY(U,$J,358.3,35179,2)
 ;;=^5002351
 ;;^UTILITY(U,$J,358.3,35180,0)
 ;;=D68.318^^163^1793^23
 ;;^UTILITY(U,$J,358.3,35180,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,35180,1,3,0)
 ;;=3^Hemorrhagic Disorder d/t Intrns Circ Anticoag/Antibodies/Inhibitors
 ;;^UTILITY(U,$J,358.3,35180,1,4,0)
 ;;=4^D68.318
