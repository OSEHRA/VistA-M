IBDEI0FC ; ; 06-AUG-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,7040,1,5,0)
 ;;=5^DM I w/Mod Retinopathy
 ;;^UTILITY(U,$J,358.3,7040,2)
 ;;=^331800^362.05
 ;;^UTILITY(U,$J,358.3,7041,0)
 ;;=250.50^^31^423^20
 ;;^UTILITY(U,$J,358.3,7041,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,7041,1,4,0)
 ;;=4^250.50
 ;;^UTILITY(U,$J,358.3,7041,1,5,0)
 ;;=5^DM II w/Severe Retinopathy
 ;;^UTILITY(U,$J,358.3,7041,2)
 ;;=^331799^362.06
 ;;^UTILITY(U,$J,358.3,7042,0)
 ;;=250.51^^31^423^10
 ;;^UTILITY(U,$J,358.3,7042,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,7042,1,4,0)
 ;;=4^250.51
 ;;^UTILITY(U,$J,358.3,7042,1,5,0)
 ;;=5^DM I w/Severe Retinopathy
 ;;^UTILITY(U,$J,358.3,7042,2)
 ;;=^331800^362.06
 ;;^UTILITY(U,$J,358.3,7043,0)
 ;;=250.80^^31^423^11
 ;;^UTILITY(U,$J,358.3,7043,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,7043,1,4,0)
 ;;=4^250.80
 ;;^UTILITY(U,$J,358.3,7043,1,5,0)
 ;;=5^DM II w/Hypoglycemia
 ;;^UTILITY(U,$J,358.3,7043,2)
 ;;=^331811
 ;;^UTILITY(U,$J,358.3,7044,0)
 ;;=250.81^^31^423^1
 ;;^UTILITY(U,$J,358.3,7044,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,7044,1,4,0)
 ;;=4^250.81
 ;;^UTILITY(U,$J,358.3,7044,1,5,0)
 ;;=5^DM I w/Hypoglycemia
 ;;^UTILITY(U,$J,358.3,7044,2)
 ;;=^331812
 ;;^UTILITY(U,$J,358.3,7045,0)
 ;;=513.0^^31^424^1
 ;;^UTILITY(U,$J,358.3,7045,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,7045,1,4,0)
 ;;=4^513.0
 ;;^UTILITY(U,$J,358.3,7045,1,5,0)
 ;;=5^Abscess of Lung
 ;;^UTILITY(U,$J,358.3,7045,2)
 ;;=^72039
 ;;^UTILITY(U,$J,358.3,7046,0)
 ;;=495.9^^31^424^3
 ;;^UTILITY(U,$J,358.3,7046,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,7046,1,4,0)
 ;;=4^495.9
 ;;^UTILITY(U,$J,358.3,7046,1,5,0)
 ;;=5^Allerg Alveo/Pneum NOS
 ;;^UTILITY(U,$J,358.3,7046,2)
 ;;=^5656
 ;;^UTILITY(U,$J,358.3,7047,0)
 ;;=510.9^^31^424^5
 ;;^UTILITY(U,$J,358.3,7047,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,7047,1,4,0)
 ;;=4^510.9
 ;;^UTILITY(U,$J,358.3,7047,1,5,0)
 ;;=5^Empyema w/o Fistula
 ;;^UTILITY(U,$J,358.3,7047,2)
 ;;=^39810
 ;;^UTILITY(U,$J,358.3,7048,0)
 ;;=510.0^^31^424^4
 ;;^UTILITY(U,$J,358.3,7048,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,7048,1,4,0)
 ;;=4^510.0
 ;;^UTILITY(U,$J,358.3,7048,1,5,0)
 ;;=5^Empyema w/Fistula
 ;;^UTILITY(U,$J,358.3,7048,2)
 ;;=^39807
 ;;^UTILITY(U,$J,358.3,7049,0)
 ;;=495.0^^31^424^6
 ;;^UTILITY(U,$J,358.3,7049,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,7049,1,4,0)
 ;;=4^495.0
 ;;^UTILITY(U,$J,358.3,7049,1,5,0)
 ;;=5^Farmers' Lung
 ;;^UTILITY(U,$J,358.3,7049,2)
 ;;=^44970
 ;;^UTILITY(U,$J,358.3,7050,0)
 ;;=507.0^^31^424^7
 ;;^UTILITY(U,$J,358.3,7050,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,7050,1,4,0)
 ;;=4^507.0
 ;;^UTILITY(U,$J,358.3,7050,1,5,0)
 ;;=5^Food/Vomit Asp Pneumonia
 ;;^UTILITY(U,$J,358.3,7050,2)
 ;;=^95581
 ;;^UTILITY(U,$J,358.3,7051,0)
 ;;=117.9^^31^424^8
 ;;^UTILITY(U,$J,358.3,7051,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,7051,1,4,0)
 ;;=4^117.9
 ;;^UTILITY(U,$J,358.3,7051,1,5,0)
 ;;=5^Fungus of Lung
 ;;^UTILITY(U,$J,358.3,7051,2)
 ;;=^87308
 ;;^UTILITY(U,$J,358.3,7052,0)
 ;;=486.^^31^424^9
 ;;^UTILITY(U,$J,358.3,7052,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,7052,1,4,0)
 ;;=4^486.
 ;;^UTILITY(U,$J,358.3,7052,1,5,0)
 ;;=5^Pneumonitis/Pneumonia NOS
 ;;^UTILITY(U,$J,358.3,7052,2)
 ;;=^95632
 ;;^UTILITY(U,$J,358.3,7053,0)
 ;;=011.90^^31^424^10
 ;;^UTILITY(U,$J,358.3,7053,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,7053,1,4,0)
 ;;=4^011.90
 ;;^UTILITY(U,$J,358.3,7053,1,5,0)
 ;;=5^TB,Lung Unsp
 ;;^UTILITY(U,$J,358.3,7053,2)
 ;;=^122756
 ;;^UTILITY(U,$J,358.3,7054,0)
 ;;=465.9^^31^424^2
 ;;^UTILITY(U,$J,358.3,7054,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,7054,1,4,0)
 ;;=4^465.9
 ;;^UTILITY(U,$J,358.3,7054,1,5,0)
 ;;=5^Acute URI NOS