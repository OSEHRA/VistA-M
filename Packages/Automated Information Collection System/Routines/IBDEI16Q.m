IBDEI16Q ; ; 06-AUG-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,20927,0)
 ;;=V77.8^^112^1296^10
 ;;^UTILITY(U,$J,358.3,20927,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,20927,1,3,0)
 ;;=3^V77.8
 ;;^UTILITY(U,$J,358.3,20927,1,4,0)
 ;;=4^Screening for Obesity
 ;;^UTILITY(U,$J,358.3,20927,2)
 ;;=^295669
 ;;^UTILITY(U,$J,358.3,20928,0)
 ;;=V65.41^^112^1297^1
 ;;^UTILITY(U,$J,358.3,20928,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,20928,1,3,0)
 ;;=3^V65.41
 ;;^UTILITY(U,$J,358.3,20928,1,4,0)
 ;;=4^Excercise Counseling
 ;;^UTILITY(U,$J,358.3,20928,2)
 ;;=^303466
 ;;^UTILITY(U,$J,358.3,20929,0)
 ;;=V65.3^^112^1297^2
 ;;^UTILITY(U,$J,358.3,20929,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,20929,1,3,0)
 ;;=3^V65.3
 ;;^UTILITY(U,$J,358.3,20929,1,4,0)
 ;;=4^Nutrition Counseling
 ;;^UTILITY(U,$J,358.3,20929,2)
 ;;=^295563
 ;;^UTILITY(U,$J,358.3,20930,0)
 ;;=V65.43^^112^1297^4
 ;;^UTILITY(U,$J,358.3,20930,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,20930,1,3,0)
 ;;=3^V65.43
 ;;^UTILITY(U,$J,358.3,20930,1,4,0)
 ;;=4^Safety Counseling
 ;;^UTILITY(U,$J,358.3,20930,2)
 ;;=^303468
 ;;^UTILITY(U,$J,358.3,20931,0)
 ;;=V65.40^^112^1297^3
 ;;^UTILITY(U,$J,358.3,20931,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,20931,1,3,0)
 ;;=3^V65.40
 ;;^UTILITY(U,$J,358.3,20931,1,4,0)
 ;;=4^Preventive Counseling,Unspec
 ;;^UTILITY(U,$J,358.3,20931,2)
 ;;=^87449
 ;;^UTILITY(U,$J,358.3,20932,0)
 ;;=G0101^^113^1298^11^^^^1
 ;;^UTILITY(U,$J,358.3,20932,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,20932,1,2,0)
 ;;=2^G0101
 ;;^UTILITY(U,$J,358.3,20932,1,3,0)
 ;;=3^PELVIC EXAM
 ;;^UTILITY(U,$J,358.3,20933,0)
 ;;=Q0091^^113^1298^10^^^^1
 ;;^UTILITY(U,$J,358.3,20933,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,20933,1,2,0)
 ;;=2^Q0091
 ;;^UTILITY(U,$J,358.3,20933,1,3,0)
 ;;=3^PAP SMEAR
 ;;^UTILITY(U,$J,358.3,20934,0)
 ;;=Q0111^^113^1298^16^^^^1
 ;;^UTILITY(U,$J,358.3,20934,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,20934,1,2,0)
 ;;=2^Q0111
 ;;^UTILITY(U,$J,358.3,20934,1,3,0)
 ;;=3^Wet mounts/ w preparations  
 ;;^UTILITY(U,$J,358.3,20935,0)
 ;;=83986^^113^1298^7^^^^1
 ;;^UTILITY(U,$J,358.3,20935,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,20935,1,2,0)
 ;;=2^83986
 ;;^UTILITY(U,$J,358.3,20935,1,3,0)
 ;;=3^FemExam pH & amines test card
 ;;^UTILITY(U,$J,358.3,20936,0)
 ;;=58100^^113^1298^6^^^^1
 ;;^UTILITY(U,$J,358.3,20936,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,20936,1,2,0)
 ;;=2^58100
 ;;^UTILITY(U,$J,358.3,20936,1,3,0)
 ;;=3^ENDOMETRIAL BIOPSY
 ;;^UTILITY(U,$J,358.3,20937,0)
 ;;=57500^^113^1298^2^^^^1
 ;;^UTILITY(U,$J,358.3,20937,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,20937,1,2,0)
 ;;=2^57500
 ;;^UTILITY(U,$J,358.3,20937,1,3,0)
 ;;=3^CERVICAL BIOPSY
 ;;^UTILITY(U,$J,358.3,20938,0)
 ;;=58300^^113^1298^8^^^^1
 ;;^UTILITY(U,$J,358.3,20938,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,20938,1,2,0)
 ;;=2^58300
 ;;^UTILITY(U,$J,358.3,20938,1,3,0)
 ;;=3^INSERT IUD
 ;;^UTILITY(U,$J,358.3,20939,0)
 ;;=58301^^113^1298^13^^^^1
 ;;^UTILITY(U,$J,358.3,20939,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,20939,1,2,0)
 ;;=2^58301
 ;;^UTILITY(U,$J,358.3,20939,1,3,0)
 ;;=3^REMOVE IUD
 ;;^UTILITY(U,$J,358.3,20940,0)
 ;;=57460^^113^1298^1^^^^1
 ;;^UTILITY(U,$J,358.3,20940,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,20940,1,2,0)
 ;;=2^57460
 ;;^UTILITY(U,$J,358.3,20940,1,3,0)
 ;;=3^BX OF CERVIX W/SCOPE LEEP
 ;;^UTILITY(U,$J,358.3,20941,0)
 ;;=57461^^113^1298^3^^^^1
 ;;^UTILITY(U,$J,358.3,20941,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,20941,1,2,0)
 ;;=2^57461
 ;;^UTILITY(U,$J,358.3,20941,1,3,0)
 ;;=3^CONZ OF CERVIX W/SCOPE LEEP
 ;;^UTILITY(U,$J,358.3,20942,0)
 ;;=76830^^113^1298^15^^^^1