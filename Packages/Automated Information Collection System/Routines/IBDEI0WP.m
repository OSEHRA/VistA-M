IBDEI0WP ; ; 06-AUG-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,15896,1,4,0)
 ;;=4^V12.59
 ;;^UTILITY(U,$J,358.3,15896,1,5,0)
 ;;=5^Hx of CHF
 ;;^UTILITY(U,$J,358.3,15896,2)
 ;;=^303399
 ;;^UTILITY(U,$J,358.3,15897,0)
 ;;=V45.81^^81^949^29
 ;;^UTILITY(U,$J,358.3,15897,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,15897,1,4,0)
 ;;=4^V45.81
 ;;^UTILITY(U,$J,358.3,15897,1,5,0)
 ;;=5^Hx of CABG
 ;;^UTILITY(U,$J,358.3,15897,2)
 ;;=^97129
 ;;^UTILITY(U,$J,358.3,15898,0)
 ;;=V15.84^^81^949^28
 ;;^UTILITY(U,$J,358.3,15898,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,15898,1,4,0)
 ;;=4^V15.84
 ;;^UTILITY(U,$J,358.3,15898,1,5,0)
 ;;=5^Hx of Asbestos Exposure
 ;;^UTILITY(U,$J,358.3,15898,2)
 ;;=^303406
 ;;^UTILITY(U,$J,358.3,15899,0)
 ;;=V15.85^^81^949^47
 ;;^UTILITY(U,$J,358.3,15899,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,15899,1,4,0)
 ;;=4^V15.85
 ;;^UTILITY(U,$J,358.3,15899,1,5,0)
 ;;=5^Hx of Potentially Hazardous Body Fluids
 ;;^UTILITY(U,$J,358.3,15899,2)
 ;;=^303407
 ;;^UTILITY(U,$J,358.3,15900,0)
 ;;=V10.72^^81^949^34
 ;;^UTILITY(U,$J,358.3,15900,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,15900,1,4,0)
 ;;=4^V10.72
 ;;^UTILITY(U,$J,358.3,15900,1,5,0)
 ;;=5^Hx of Hodgkin's Disease
 ;;^UTILITY(U,$J,358.3,15900,2)
 ;;=^295237
 ;;^UTILITY(U,$J,358.3,15901,0)
 ;;=V15.3^^81^949^35
 ;;^UTILITY(U,$J,358.3,15901,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,15901,1,4,0)
 ;;=4^V15.3
 ;;^UTILITY(U,$J,358.3,15901,1,5,0)
 ;;=5^Hx of Irradiation
 ;;^UTILITY(U,$J,358.3,15901,2)
 ;;=^295285
 ;;^UTILITY(U,$J,358.3,15902,0)
 ;;=V10.61^^81^949^37
 ;;^UTILITY(U,$J,358.3,15902,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,15902,1,4,0)
 ;;=4^V10.61
 ;;^UTILITY(U,$J,358.3,15902,1,5,0)
 ;;=5^Hx of Lymphoid Leukemia
 ;;^UTILITY(U,$J,358.3,15902,2)
 ;;=Hx of Lymphoid Leukemia^295232
 ;;^UTILITY(U,$J,358.3,15903,0)
 ;;=V12.03^^81^949^39
 ;;^UTILITY(U,$J,358.3,15903,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,15903,1,4,0)
 ;;=4^V12.03
 ;;^UTILITY(U,$J,358.3,15903,1,5,0)
 ;;=5^Hx of Malaria
 ;;^UTILITY(U,$J,358.3,15903,2)
 ;;=Hx of Malaria^303395
 ;;^UTILITY(U,$J,358.3,15904,0)
 ;;=V10.82^^81^949^40
 ;;^UTILITY(U,$J,358.3,15904,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,15904,1,4,0)
 ;;=4^V10.82
 ;;^UTILITY(U,$J,358.3,15904,1,5,0)
 ;;=5^Hx of Malignant Melanoma
 ;;^UTILITY(U,$J,358.3,15904,2)
 ;;=Hx of Malignant Melanoma^295240
 ;;^UTILITY(U,$J,358.3,15905,0)
 ;;=V10.62^^81^949^43
 ;;^UTILITY(U,$J,358.3,15905,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,15905,1,4,0)
 ;;=4^V10.62
 ;;^UTILITY(U,$J,358.3,15905,1,5,0)
 ;;=5^Hx of Myeloid Leukemia
 ;;^UTILITY(U,$J,358.3,15905,2)
 ;;=Hx of Myeloid Leukemia^295233
 ;;^UTILITY(U,$J,358.3,15906,0)
 ;;=V10.63^^81^949^41
 ;;^UTILITY(U,$J,358.3,15906,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,15906,1,4,0)
 ;;=4^V10.63
 ;;^UTILITY(U,$J,358.3,15906,1,5,0)
 ;;=5^Hx of Monocytic Leukemia
 ;;^UTILITY(U,$J,358.3,15906,2)
 ;;=Hx of Monocytic Leukemia^295234
 ;;^UTILITY(U,$J,358.3,15907,0)
 ;;=V11.2^^81^949^32
 ;;^UTILITY(U,$J,358.3,15907,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,15907,1,4,0)
 ;;=4^V11.2
 ;;^UTILITY(U,$J,358.3,15907,1,5,0)
 ;;=5^Hx of Dysthymia
 ;;^UTILITY(U,$J,358.3,15907,2)
 ;;=Hx of Dysthymia^295251
 ;;^UTILITY(U,$J,358.3,15908,0)
 ;;=V15.81^^81^949^60
 ;;^UTILITY(U,$J,358.3,15908,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,15908,1,4,0)
 ;;=4^V15.81
 ;;^UTILITY(U,$J,358.3,15908,1,5,0)
 ;;=5^Noncompliance With Medical Treatment
 ;;^UTILITY(U,$J,358.3,15908,2)
 ;;=^295290
 ;;^UTILITY(U,$J,358.3,15909,0)
 ;;=V10.43^^81^949^44
 ;;^UTILITY(U,$J,358.3,15909,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,15909,1,4,0)
 ;;=4^V10.43