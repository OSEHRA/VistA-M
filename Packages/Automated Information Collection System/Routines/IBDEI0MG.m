IBDEI0MG ; ; 06-AUG-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,10671,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,10671,1,2,0)
 ;;=2^99411
 ;;^UTILITY(U,$J,358.3,10671,1,3,0)
 ;;=3^PREVENTIVE COUNSEL,GROUP,30MIN
 ;;^UTILITY(U,$J,358.3,10672,0)
 ;;=99412^^45^583^2^^^^1
 ;;^UTILITY(U,$J,358.3,10672,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,10672,1,2,0)
 ;;=2^99412
 ;;^UTILITY(U,$J,358.3,10672,1,3,0)
 ;;=3^PREVENTIVE COUNSEL,GROUP,60MIN
 ;;^UTILITY(U,$J,358.3,10673,0)
 ;;=99401^^45^583^3^^^^1
 ;;^UTILITY(U,$J,358.3,10673,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,10673,1,2,0)
 ;;=2^99401
 ;;^UTILITY(U,$J,358.3,10673,1,3,0)
 ;;=3^PREVENTIVE COUNSEL,INDIV,15MIN
 ;;^UTILITY(U,$J,358.3,10674,0)
 ;;=99402^^45^583^4^^^^1
 ;;^UTILITY(U,$J,358.3,10674,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,10674,1,2,0)
 ;;=2^99402
 ;;^UTILITY(U,$J,358.3,10674,1,3,0)
 ;;=3^PREVENTIVE COUNSEL,INDIV,30MIN
 ;;^UTILITY(U,$J,358.3,10675,0)
 ;;=99404^^45^583^6^^^^1
 ;;^UTILITY(U,$J,358.3,10675,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,10675,1,2,0)
 ;;=2^99404
 ;;^UTILITY(U,$J,358.3,10675,1,3,0)
 ;;=3^PREVENTIVE COUNSEL,INDIV,60MIN
 ;;^UTILITY(U,$J,358.3,10676,0)
 ;;=99403^^45^583^5^^^^1
 ;;^UTILITY(U,$J,358.3,10676,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,10676,1,2,0)
 ;;=2^99403
 ;;^UTILITY(U,$J,358.3,10676,1,3,0)
 ;;=3^PREVENTIVE COUNSEL,INDIV,45MIN
 ;;^UTILITY(U,$J,358.3,10677,0)
 ;;=99395^^45^584^1^^^^1
 ;;^UTILITY(U,$J,358.3,10677,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,10677,1,2,0)
 ;;=2^99395
 ;;^UTILITY(U,$J,358.3,10677,1,3,0)
 ;;=3^PREVENTIVE VISIT,AGE 18-39
 ;;^UTILITY(U,$J,358.3,10678,0)
 ;;=99396^^45^584^2^^^^1
 ;;^UTILITY(U,$J,358.3,10678,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,10678,1,2,0)
 ;;=2^99396
 ;;^UTILITY(U,$J,358.3,10678,1,3,0)
 ;;=3^PREVENTIVE VISIT,AGE 40-64
 ;;^UTILITY(U,$J,358.3,10679,0)
 ;;=99397^^45^584^3^^^^1
 ;;^UTILITY(U,$J,358.3,10679,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,10679,1,2,0)
 ;;=2^99397
 ;;^UTILITY(U,$J,358.3,10679,1,3,0)
 ;;=3^PREVENTIVE VISIT,AGE 65+
 ;;^UTILITY(U,$J,358.3,10680,0)
 ;;=99385^^45^585^1^^^^1
 ;;^UTILITY(U,$J,358.3,10680,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,10680,1,2,0)
 ;;=2^99385
 ;;^UTILITY(U,$J,358.3,10680,1,3,0)
 ;;=3^PREVENTIVE VISIT,AGE 18-39
 ;;^UTILITY(U,$J,358.3,10681,0)
 ;;=99386^^45^585^2^^^^1
 ;;^UTILITY(U,$J,358.3,10681,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,10681,1,2,0)
 ;;=2^99386
 ;;^UTILITY(U,$J,358.3,10681,1,3,0)
 ;;=3^PREVENTIVE VISIT,AGE 40-64
 ;;^UTILITY(U,$J,358.3,10682,0)
 ;;=99387^^45^585^3^^^^1
 ;;^UTILITY(U,$J,358.3,10682,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,10682,1,2,0)
 ;;=2^99387
 ;;^UTILITY(U,$J,358.3,10682,1,3,0)
 ;;=3^PREVENTIVE VISIT,AGE 65+
 ;;^UTILITY(U,$J,358.3,10683,0)
 ;;=0359T^^45^586^5^^^^1
 ;;^UTILITY(U,$J,358.3,10683,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,10683,1,2,0)
 ;;=2^0359T
 ;;^UTILITY(U,$J,358.3,10683,1,3,0)
 ;;=3^BEHAVIORAL ID ASSESSMENT
 ;;^UTILITY(U,$J,358.3,10684,0)
 ;;=0360T^^45^586^14^^^^1
 ;;^UTILITY(U,$J,358.3,10684,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,10684,1,2,0)
 ;;=2^0360T
 ;;^UTILITY(U,$J,358.3,10684,1,3,0)
 ;;=3^OBS BEHAV ASSESS,1ST 30 MIN
 ;;^UTILITY(U,$J,358.3,10685,0)
 ;;=0361T^^45^586^15^^^^1
 ;;^UTILITY(U,$J,358.3,10685,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,10685,1,2,0)
 ;;=2^0361T
 ;;^UTILITY(U,$J,358.3,10685,1,3,0)
 ;;=3^OBS BEHAV ASSESS,EA ADDL 30 MIN
 ;;^UTILITY(U,$J,358.3,10686,0)
 ;;=0362T^^45^586^6^^^^1
 ;;^UTILITY(U,$J,358.3,10686,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,10686,1,2,0)
 ;;=2^0362T
 ;;^UTILITY(U,$J,358.3,10686,1,3,0)
 ;;=3^EXPOS BEHAV ASSESS,1ST 30 MIN