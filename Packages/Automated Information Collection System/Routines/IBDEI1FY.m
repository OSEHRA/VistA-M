IBDEI1FY ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,24069,1,4,0)
 ;;=4^M48.02
 ;;^UTILITY(U,$J,358.3,24069,2)
 ;;=^5012089
 ;;^UTILITY(U,$J,358.3,24070,0)
 ;;=M48.04^^116^1179^11
 ;;^UTILITY(U,$J,358.3,24070,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,24070,1,3,0)
 ;;=3^Spinal stenosis, thoracic region
 ;;^UTILITY(U,$J,358.3,24070,1,4,0)
 ;;=4^M48.04
 ;;^UTILITY(U,$J,358.3,24070,2)
 ;;=^5012091
 ;;^UTILITY(U,$J,358.3,24071,0)
 ;;=M48.00^^116^1179^10
 ;;^UTILITY(U,$J,358.3,24071,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,24071,1,3,0)
 ;;=3^Spinal stenosis, site unspecified
 ;;^UTILITY(U,$J,358.3,24071,1,4,0)
 ;;=4^M48.00
 ;;^UTILITY(U,$J,358.3,24071,2)
 ;;=^5012087
 ;;^UTILITY(U,$J,358.3,24072,0)
 ;;=F20.2^^116^1180^3
 ;;^UTILITY(U,$J,358.3,24072,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,24072,1,3,0)
 ;;=3^Schizophrenia, catatonic
 ;;^UTILITY(U,$J,358.3,24072,1,4,0)
 ;;=4^F20.2
 ;;^UTILITY(U,$J,358.3,24072,2)
 ;;=^5003471
 ;;^UTILITY(U,$J,358.3,24073,0)
 ;;=F20.1^^116^1180^4
 ;;^UTILITY(U,$J,358.3,24073,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,24073,1,3,0)
 ;;=3^Schizophrenia, disorganized
 ;;^UTILITY(U,$J,358.3,24073,1,4,0)
 ;;=4^F20.1
 ;;^UTILITY(U,$J,358.3,24073,2)
 ;;=^5003470
 ;;^UTILITY(U,$J,358.3,24074,0)
 ;;=F20.0^^116^1180^5
 ;;^UTILITY(U,$J,358.3,24074,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,24074,1,3,0)
 ;;=3^Schizophrenia, paranoid
 ;;^UTILITY(U,$J,358.3,24074,1,4,0)
 ;;=4^F20.0
 ;;^UTILITY(U,$J,358.3,24074,2)
 ;;=^5003469
 ;;^UTILITY(U,$J,358.3,24075,0)
 ;;=F20.5^^116^1180^6
 ;;^UTILITY(U,$J,358.3,24075,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,24075,1,3,0)
 ;;=3^Schizophrenia, residual
 ;;^UTILITY(U,$J,358.3,24075,1,4,0)
 ;;=4^F20.5
 ;;^UTILITY(U,$J,358.3,24075,2)
 ;;=^5003473
 ;;^UTILITY(U,$J,358.3,24076,0)
 ;;=F25.9^^116^1180^1
 ;;^UTILITY(U,$J,358.3,24076,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,24076,1,3,0)
 ;;=3^Schizoaffective disorder, unspec
 ;;^UTILITY(U,$J,358.3,24076,1,4,0)
 ;;=4^F25.9
 ;;^UTILITY(U,$J,358.3,24076,2)
 ;;=^331857
 ;;^UTILITY(U,$J,358.3,24077,0)
 ;;=F20.9^^116^1180^7
 ;;^UTILITY(U,$J,358.3,24077,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,24077,1,3,0)
 ;;=3^Schizophrenia, unspec
 ;;^UTILITY(U,$J,358.3,24077,1,4,0)
 ;;=4^F20.9
 ;;^UTILITY(U,$J,358.3,24077,2)
 ;;=^5003476
 ;;^UTILITY(U,$J,358.3,24078,0)
 ;;=F20.81^^116^1180^8
 ;;^UTILITY(U,$J,358.3,24078,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,24078,1,3,0)
 ;;=3^Schizophreniform disorder
 ;;^UTILITY(U,$J,358.3,24078,1,4,0)
 ;;=4^F20.81
 ;;^UTILITY(U,$J,358.3,24078,2)
 ;;=^5003474
 ;;^UTILITY(U,$J,358.3,24079,0)
 ;;=F60.1^^116^1180^2
 ;;^UTILITY(U,$J,358.3,24079,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,24079,1,3,0)
 ;;=3^Schizoid personality disorder
 ;;^UTILITY(U,$J,358.3,24079,1,4,0)
 ;;=4^F60.1
 ;;^UTILITY(U,$J,358.3,24079,2)
 ;;=^108271
 ;;^UTILITY(U,$J,358.3,24080,0)
 ;;=Z11.1^^116^1181^3
 ;;^UTILITY(U,$J,358.3,24080,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,24080,1,3,0)
 ;;=3^Screening for Resp Tuberculosis
 ;;^UTILITY(U,$J,358.3,24080,1,4,0)
 ;;=4^Z11.1
 ;;^UTILITY(U,$J,358.3,24080,2)
 ;;=^5062670
 ;;^UTILITY(U,$J,358.3,24081,0)
 ;;=Z13.89^^116^1181^2
 ;;^UTILITY(U,$J,358.3,24081,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,24081,1,3,0)
 ;;=3^Screening for Other Disorders
 ;;^UTILITY(U,$J,358.3,24081,1,4,0)
 ;;=4^Z13.89
 ;;^UTILITY(U,$J,358.3,24081,2)
 ;;=^5062720
 ;;^UTILITY(U,$J,358.3,24082,0)
 ;;=Z12.9^^116^1181^1
 ;;^UTILITY(U,$J,358.3,24082,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,24082,1,3,0)
 ;;=3^Screening for Malig Neop,Site Unspec
 ;;^UTILITY(U,$J,358.3,24082,1,4,0)
 ;;=4^Z12.9
 ;;^UTILITY(U,$J,358.3,24082,2)
 ;;=^5062698
