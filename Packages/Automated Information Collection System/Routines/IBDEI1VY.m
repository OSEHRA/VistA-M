IBDEI1VY ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,31577,1,4,0)
 ;;=4^F50.01
 ;;^UTILITY(U,$J,358.3,31577,2)
 ;;=^5003598
 ;;^UTILITY(U,$J,358.3,31578,0)
 ;;=F50.9^^138^1432^7
 ;;^UTILITY(U,$J,358.3,31578,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,31578,1,3,0)
 ;;=3^Feeding/Eating Disorder,Unspec
 ;;^UTILITY(U,$J,358.3,31578,1,4,0)
 ;;=4^F50.9
 ;;^UTILITY(U,$J,358.3,31578,2)
 ;;=^5003602
 ;;^UTILITY(U,$J,358.3,31579,0)
 ;;=F50.8^^138^1432^6
 ;;^UTILITY(U,$J,358.3,31579,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,31579,1,3,0)
 ;;=3^Feeding/Eating Disorder NEC
 ;;^UTILITY(U,$J,358.3,31579,1,4,0)
 ;;=4^F50.8
 ;;^UTILITY(U,$J,358.3,31579,2)
 ;;=^5003601
 ;;^UTILITY(U,$J,358.3,31580,0)
 ;;=F50.8^^138^1432^3
 ;;^UTILITY(U,$J,358.3,31580,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,31580,1,3,0)
 ;;=3^Avoidant/Restrictive Food Intake Disorder
 ;;^UTILITY(U,$J,358.3,31580,1,4,0)
 ;;=4^F50.8
 ;;^UTILITY(U,$J,358.3,31580,2)
 ;;=^5003601
 ;;^UTILITY(U,$J,358.3,31581,0)
 ;;=F50.8^^138^1432^4
 ;;^UTILITY(U,$J,358.3,31581,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,31581,1,3,0)
 ;;=3^Binge-Eating Disorder
 ;;^UTILITY(U,$J,358.3,31581,1,4,0)
 ;;=4^F50.8
 ;;^UTILITY(U,$J,358.3,31581,2)
 ;;=^5003601
 ;;^UTILITY(U,$J,358.3,31582,0)
 ;;=F50.2^^138^1432^5
 ;;^UTILITY(U,$J,358.3,31582,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,31582,1,3,0)
 ;;=3^Bulimia Nervosa
 ;;^UTILITY(U,$J,358.3,31582,1,4,0)
 ;;=4^F50.2
 ;;^UTILITY(U,$J,358.3,31582,2)
 ;;=^5003600
 ;;^UTILITY(U,$J,358.3,31583,0)
 ;;=Z55.9^^138^1433^1
 ;;^UTILITY(U,$J,358.3,31583,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,31583,1,3,0)
 ;;=3^Acedemic/Educational Problem
 ;;^UTILITY(U,$J,358.3,31583,1,4,0)
 ;;=4^Z55.9
 ;;^UTILITY(U,$J,358.3,31583,2)
 ;;=^5063106
 ;;^UTILITY(U,$J,358.3,31584,0)
 ;;=Z56.81^^138^1433^9
 ;;^UTILITY(U,$J,358.3,31584,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,31584,1,3,0)
 ;;=3^Sexual Harassment on the Job
 ;;^UTILITY(U,$J,358.3,31584,1,4,0)
 ;;=4^Z56.81
 ;;^UTILITY(U,$J,358.3,31584,2)
 ;;=^5063114
 ;;^UTILITY(U,$J,358.3,31585,0)
 ;;=Z56.9^^138^1433^8
 ;;^UTILITY(U,$J,358.3,31585,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,31585,1,3,0)
 ;;=3^Problems Related to Employment NEC
 ;;^UTILITY(U,$J,358.3,31585,1,4,0)
 ;;=4^Z56.9
 ;;^UTILITY(U,$J,358.3,31585,2)
 ;;=^5063117
 ;;^UTILITY(U,$J,358.3,31586,0)
 ;;=Z56.82^^138^1433^6
 ;;^UTILITY(U,$J,358.3,31586,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,31586,1,3,0)
 ;;=3^Problems Related to Current Military Deployment Status
 ;;^UTILITY(U,$J,358.3,31586,1,4,0)
 ;;=4^Z56.82
 ;;^UTILITY(U,$J,358.3,31586,2)
 ;;=^5063115
 ;;^UTILITY(U,$J,358.3,31587,0)
 ;;=Z56.0^^138^1433^13
 ;;^UTILITY(U,$J,358.3,31587,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,31587,1,3,0)
 ;;=3^Unemployeement,Unspec
 ;;^UTILITY(U,$J,358.3,31587,1,4,0)
 ;;=4^Z56.0
 ;;^UTILITY(U,$J,358.3,31587,2)
 ;;=^5063107
 ;;^UTILITY(U,$J,358.3,31588,0)
 ;;=Z56.1^^138^1433^2
 ;;^UTILITY(U,$J,358.3,31588,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,31588,1,3,0)
 ;;=3^Change of Job
 ;;^UTILITY(U,$J,358.3,31588,1,4,0)
 ;;=4^Z56.1
 ;;^UTILITY(U,$J,358.3,31588,2)
 ;;=^5063108
 ;;^UTILITY(U,$J,358.3,31589,0)
 ;;=Z56.2^^138^1433^11
 ;;^UTILITY(U,$J,358.3,31589,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,31589,1,3,0)
 ;;=3^Threat of Job Loss
 ;;^UTILITY(U,$J,358.3,31589,1,4,0)
 ;;=4^Z56.2
 ;;^UTILITY(U,$J,358.3,31589,2)
 ;;=^5063109
 ;;^UTILITY(U,$J,358.3,31590,0)
 ;;=Z56.3^^138^1433^10
 ;;^UTILITY(U,$J,358.3,31590,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,31590,1,3,0)
 ;;=3^Stressful Work Schedule
 ;;^UTILITY(U,$J,358.3,31590,1,4,0)
 ;;=4^Z56.3
 ;;^UTILITY(U,$J,358.3,31590,2)
 ;;=^5063110
