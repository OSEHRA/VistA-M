IBDEI383 ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,54169,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,54169,1,3,0)
 ;;=3^Athscl Hrt Dis of Native Cor Art w/ Unstable Ang Pctrs
 ;;^UTILITY(U,$J,358.3,54169,1,4,0)
 ;;=4^I25.110
 ;;^UTILITY(U,$J,358.3,54169,2)
 ;;=^5007108
 ;;^UTILITY(U,$J,358.3,54170,0)
 ;;=F17.219^^256^2759^39
 ;;^UTILITY(U,$J,358.3,54170,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,54170,1,3,0)
 ;;=3^Nicotine Dependence,Cigarettes
 ;;^UTILITY(U,$J,358.3,54170,1,4,0)
 ;;=4^F17.219
 ;;^UTILITY(U,$J,358.3,54170,2)
 ;;=^5003369
 ;;^UTILITY(U,$J,358.3,54171,0)
 ;;=F17.299^^256^2759^40
 ;;^UTILITY(U,$J,358.3,54171,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,54171,1,3,0)
 ;;=3^Nicotine Dependence,E-Cigarettes
 ;;^UTILITY(U,$J,358.3,54171,1,4,0)
 ;;=4^F17.299
 ;;^UTILITY(U,$J,358.3,54171,2)
 ;;=^5003379
 ;;^UTILITY(U,$J,358.3,54172,0)
 ;;=Z51.81^^256^2760^17
 ;;^UTILITY(U,$J,358.3,54172,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,54172,1,3,0)
 ;;=3^Therapeutic Drug Level Monitoring
 ;;^UTILITY(U,$J,358.3,54172,1,4,0)
 ;;=4^Z51.81
 ;;^UTILITY(U,$J,358.3,54172,2)
 ;;=^5063064
 ;;^UTILITY(U,$J,358.3,54173,0)
 ;;=Z02.79^^256^2760^11
 ;;^UTILITY(U,$J,358.3,54173,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,54173,1,3,0)
 ;;=3^Issue of Medical Certificate NEC
 ;;^UTILITY(U,$J,358.3,54173,1,4,0)
 ;;=4^Z02.79
 ;;^UTILITY(U,$J,358.3,54173,2)
 ;;=^5062641
 ;;^UTILITY(U,$J,358.3,54174,0)
 ;;=Z76.0^^256^2760^12
 ;;^UTILITY(U,$J,358.3,54174,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,54174,1,3,0)
 ;;=3^Issue of Repeat Prescription
 ;;^UTILITY(U,$J,358.3,54174,1,4,0)
 ;;=4^Z76.0
 ;;^UTILITY(U,$J,358.3,54174,2)
 ;;=^5063297
 ;;^UTILITY(U,$J,358.3,54175,0)
 ;;=Z04.9^^256^2760^3
 ;;^UTILITY(U,$J,358.3,54175,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,54175,1,3,0)
 ;;=3^Exam & Observation for Unsp Reason
 ;;^UTILITY(U,$J,358.3,54175,1,4,0)
 ;;=4^Z04.9
 ;;^UTILITY(U,$J,358.3,54175,2)
 ;;=^5062666
 ;;^UTILITY(U,$J,358.3,54176,0)
 ;;=Z02.2^^256^2760^4
 ;;^UTILITY(U,$J,358.3,54176,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,54176,1,3,0)
 ;;=3^Exam for Admission to Residential Institution
 ;;^UTILITY(U,$J,358.3,54176,1,4,0)
 ;;=4^Z02.2
 ;;^UTILITY(U,$J,358.3,54176,2)
 ;;=^5062635
 ;;^UTILITY(U,$J,358.3,54177,0)
 ;;=Z02.4^^256^2760^5
 ;;^UTILITY(U,$J,358.3,54177,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,54177,1,3,0)
 ;;=3^Exam for Driving License
 ;;^UTILITY(U,$J,358.3,54177,1,4,0)
 ;;=4^Z02.4
 ;;^UTILITY(U,$J,358.3,54177,2)
 ;;=^5062637
 ;;^UTILITY(U,$J,358.3,54178,0)
 ;;=Z00.5^^256^2760^7
 ;;^UTILITY(U,$J,358.3,54178,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,54178,1,3,0)
 ;;=3^Exam of Potential Donor of Organ/Tissue
 ;;^UTILITY(U,$J,358.3,54178,1,4,0)
 ;;=4^Z00.5
 ;;^UTILITY(U,$J,358.3,54178,2)
 ;;=^5062607
 ;;^UTILITY(U,$J,358.3,54179,0)
 ;;=Z02.3^^256^2760^6
 ;;^UTILITY(U,$J,358.3,54179,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,54179,1,3,0)
 ;;=3^Exam for Recruitment to Armed Forces
 ;;^UTILITY(U,$J,358.3,54179,1,4,0)
 ;;=4^Z02.3
 ;;^UTILITY(U,$J,358.3,54179,2)
 ;;=^5062636
 ;;^UTILITY(U,$J,358.3,54180,0)
 ;;=Z02.89^^256^2760^1
 ;;^UTILITY(U,$J,358.3,54180,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,54180,1,3,0)
 ;;=3^Admin Exam NEC
 ;;^UTILITY(U,$J,358.3,54180,1,4,0)
 ;;=4^Z02.89
 ;;^UTILITY(U,$J,358.3,54180,2)
 ;;=^5062645
 ;;^UTILITY(U,$J,358.3,54181,0)
 ;;=Z00.8^^256^2760^8
 ;;^UTILITY(U,$J,358.3,54181,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,54181,1,3,0)
 ;;=3^General Exam NEC
 ;;^UTILITY(U,$J,358.3,54181,1,4,0)
 ;;=4^Z00.8
 ;;^UTILITY(U,$J,358.3,54181,2)
 ;;=^5062611
 ;;^UTILITY(U,$J,358.3,54182,0)
 ;;=Z02.1^^256^2760^14
