IBDEI1FT ; ; 06-AUG-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,25490,0)
 ;;=V12.02^^147^1598^11
 ;;^UTILITY(U,$J,358.3,25490,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,25490,1,4,0)
 ;;=4^V12.02
 ;;^UTILITY(U,$J,358.3,25490,1,5,0)
 ;;=5^HX-POLIO
 ;;^UTILITY(U,$J,358.3,25490,2)
 ;;=^303394
 ;;^UTILITY(U,$J,358.3,25491,0)
 ;;=V12.09^^147^1598^12
 ;;^UTILITY(U,$J,358.3,25491,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,25491,1,4,0)
 ;;=4^V12.09
 ;;^UTILITY(U,$J,358.3,25491,1,5,0)
 ;;=5^HX-SPEC INF & PARA DIS
 ;;^UTILITY(U,$J,358.3,25491,2)
 ;;=^303396
 ;;^UTILITY(U,$J,358.3,25492,0)
 ;;=V12.01^^147^1598^13
 ;;^UTILITY(U,$J,358.3,25492,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,25492,1,4,0)
 ;;=4^V12.01
 ;;^UTILITY(U,$J,358.3,25492,1,5,0)
 ;;=5^HX-TUBERCULOSIS
 ;;^UTILITY(U,$J,358.3,25492,2)
 ;;=^303393
 ;;^UTILITY(U,$J,358.3,25493,0)
 ;;=V12.70^^147^1598^14
 ;;^UTILITY(U,$J,358.3,25493,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,25493,1,4,0)
 ;;=4^V12.70
 ;;^UTILITY(U,$J,358.3,25493,1,5,0)
 ;;=5^HX-UNSP DIGEST DISEASE
 ;;^UTILITY(U,$J,358.3,25493,2)
 ;;=^295262
 ;;^UTILITY(U,$J,358.3,25494,0)
 ;;=V12.00^^147^1598^15
 ;;^UTILITY(U,$J,358.3,25494,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,25494,1,4,0)
 ;;=4^V12.00
 ;;^UTILITY(U,$J,358.3,25494,1,5,0)
 ;;=5^HX-UNSP INF & PARAS DIS
 ;;^UTILITY(U,$J,358.3,25494,2)
 ;;=^295255
 ;;^UTILITY(U,$J,358.3,25495,0)
 ;;=V12.41^^147^1598^16
 ;;^UTILITY(U,$J,358.3,25495,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,25495,1,4,0)
 ;;=4^V12.41
 ;;^UTILITY(U,$J,358.3,25495,1,5,0)
 ;;=5^PERS HX BENIGN NEOPL OF BRAIN
 ;;^UTILITY(U,$J,358.3,25495,2)
 ;;=^317949
 ;;^UTILITY(U,$J,358.3,25496,0)
 ;;=V12.49^^147^1598^17
 ;;^UTILITY(U,$J,358.3,25496,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,25496,1,4,0)
 ;;=4^V12.49
 ;;^UTILITY(U,$J,358.3,25496,1,5,0)
 ;;=5^PERS HX, OTH DISORD NERV SYS
 ;;^UTILITY(U,$J,358.3,25496,2)
 ;;=^317950
 ;;^UTILITY(U,$J,358.3,25497,0)
 ;;=V12.61^^147^1598^18
 ;;^UTILITY(U,$J,358.3,25497,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,25497,1,4,0)
 ;;=4^V12.61
 ;;^UTILITY(U,$J,358.3,25497,1,5,0)
 ;;=5^PRSNL HX RECUR PNEUMONIA
 ;;^UTILITY(U,$J,358.3,25497,2)
 ;;=^332855
 ;;^UTILITY(U,$J,358.3,25498,0)
 ;;=V12.52^^147^1598^19
 ;;^UTILITY(U,$J,358.3,25498,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,25498,1,4,0)
 ;;=4^V12.52
 ;;^UTILITY(U,$J,358.3,25498,1,5,0)
 ;;=5^PSNL HX - THROMBOPHLEB
 ;;^UTILITY(U,$J,358.3,25498,2)
 ;;=^303398
 ;;^UTILITY(U,$J,358.3,25499,0)
 ;;=V12.50^^147^1598^20
 ;;^UTILITY(U,$J,358.3,25499,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,25499,1,4,0)
 ;;=4^V12.50
 ;;^UTILITY(U,$J,358.3,25499,1,5,0)
 ;;=5^PSNL HX - UNSP CIRCUL DIS
 ;;^UTILITY(U,$J,358.3,25499,2)
 ;;=^295260
 ;;^UTILITY(U,$J,358.3,25500,0)
 ;;=V12.51^^147^1598^21
 ;;^UTILITY(U,$J,358.3,25500,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,25500,1,4,0)
 ;;=4^V12.51
 ;;^UTILITY(U,$J,358.3,25500,1,5,0)
 ;;=5^PSNL HX - VEN THROM & EMBOL
 ;;^UTILITY(U,$J,358.3,25500,2)
 ;;=^303397
 ;;^UTILITY(U,$J,358.3,25501,0)
 ;;=V12.59^^147^1598^22
 ;;^UTILITY(U,$J,358.3,25501,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,25501,1,4,0)
 ;;=4^V12.59
 ;;^UTILITY(U,$J,358.3,25501,1,5,0)
 ;;=5^PSNL HX-OTH CIRC SYS DIS,NEC
 ;;^UTILITY(U,$J,358.3,25501,2)
 ;;=^303399
 ;;^UTILITY(U,$J,358.3,25502,0)
 ;;=V44.0^^147^1599^11
 ;;^UTILITY(U,$J,358.3,25502,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,25502,1,4,0)
 ;;=4^V44.0
 ;;^UTILITY(U,$J,358.3,25502,1,5,0)
 ;;=5^TRACHEOSTOMY STATUS
 ;;^UTILITY(U,$J,358.3,25502,2)
 ;;=^295446
 ;;^UTILITY(U,$J,358.3,25503,0)
 ;;=V44.1^^147^1599^8
 ;;^UTILITY(U,$J,358.3,25503,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,25503,1,4,0)
 ;;=4^V44.1