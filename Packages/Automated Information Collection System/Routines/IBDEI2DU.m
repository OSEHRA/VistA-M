IBDEI2DU ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,40035,1,4,0)
 ;;=4^D21.9
 ;;^UTILITY(U,$J,358.3,40035,2)
 ;;=^5002040
 ;;^UTILITY(U,$J,358.3,40036,0)
 ;;=D10.0^^186^2076^101
 ;;^UTILITY(U,$J,358.3,40036,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,40036,1,3,0)
 ;;=3^Benign Neop Lip
 ;;^UTILITY(U,$J,358.3,40036,1,4,0)
 ;;=4^D10.0
 ;;^UTILITY(U,$J,358.3,40036,2)
 ;;=^267578
 ;;^UTILITY(U,$J,358.3,40037,0)
 ;;=D11.9^^186^2076^103
 ;;^UTILITY(U,$J,358.3,40037,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,40037,1,3,0)
 ;;=3^Benign Neop Major Salivary Gland,Unspec
 ;;^UTILITY(U,$J,358.3,40037,1,4,0)
 ;;=4^D11.9
 ;;^UTILITY(U,$J,358.3,40037,2)
 ;;=^5001962
 ;;^UTILITY(U,$J,358.3,40038,0)
 ;;=S14.3XXA^^186^2076^111
 ;;^UTILITY(U,$J,358.3,40038,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,40038,1,3,0)
 ;;=3^Brachial Plexus Injury,Init Encntr
 ;;^UTILITY(U,$J,358.3,40038,1,4,0)
 ;;=4^S14.3XXA
 ;;^UTILITY(U,$J,358.3,40038,2)
 ;;=^5022205
 ;;^UTILITY(U,$J,358.3,40039,0)
 ;;=G56.02^^186^2076^113
 ;;^UTILITY(U,$J,358.3,40039,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,40039,1,3,0)
 ;;=3^Carpal Tunnel Syndrome,Left Upper Limb
 ;;^UTILITY(U,$J,358.3,40039,1,4,0)
 ;;=4^G56.02
 ;;^UTILITY(U,$J,358.3,40039,2)
 ;;=^5004019
 ;;^UTILITY(U,$J,358.3,40040,0)
 ;;=G56.01^^186^2076^114
 ;;^UTILITY(U,$J,358.3,40040,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,40040,1,3,0)
 ;;=3^Carpal Tunnel Syndrome,Right Upper Limb
 ;;^UTILITY(U,$J,358.3,40040,1,4,0)
 ;;=4^G56.01
 ;;^UTILITY(U,$J,358.3,40040,2)
 ;;=^5004018
 ;;^UTILITY(U,$J,358.3,40041,0)
 ;;=L03.012^^186^2076^116
 ;;^UTILITY(U,$J,358.3,40041,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,40041,1,3,0)
 ;;=3^Cellulitis,Left Finger
 ;;^UTILITY(U,$J,358.3,40041,1,4,0)
 ;;=4^L03.012
 ;;^UTILITY(U,$J,358.3,40041,2)
 ;;=^5009020
 ;;^UTILITY(U,$J,358.3,40042,0)
 ;;=L03.114^^186^2076^117
 ;;^UTILITY(U,$J,358.3,40042,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,40042,1,3,0)
 ;;=3^Cellulitis,Left Upper Limb
 ;;^UTILITY(U,$J,358.3,40042,1,4,0)
 ;;=4^L03.114
 ;;^UTILITY(U,$J,358.3,40042,2)
 ;;=^5009034
 ;;^UTILITY(U,$J,358.3,40043,0)
 ;;=L03.011^^186^2076^118
 ;;^UTILITY(U,$J,358.3,40043,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,40043,1,3,0)
 ;;=3^Cellulitis,Right Finger
 ;;^UTILITY(U,$J,358.3,40043,1,4,0)
 ;;=4^L03.011
 ;;^UTILITY(U,$J,358.3,40043,2)
 ;;=^5009019
 ;;^UTILITY(U,$J,358.3,40044,0)
 ;;=L03.113^^186^2076^119
 ;;^UTILITY(U,$J,358.3,40044,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,40044,1,3,0)
 ;;=3^Cellulitis,Right Upper Limb
 ;;^UTILITY(U,$J,358.3,40044,1,4,0)
 ;;=4^L03.113
 ;;^UTILITY(U,$J,358.3,40044,2)
 ;;=^5009033
 ;;^UTILITY(U,$J,358.3,40045,0)
 ;;=Q35.9^^186^2076^123
 ;;^UTILITY(U,$J,358.3,40045,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,40045,1,3,0)
 ;;=3^Cleft Palate w/ Cleft Lip,Unspec
 ;;^UTILITY(U,$J,358.3,40045,1,4,0)
 ;;=4^Q35.9
 ;;^UTILITY(U,$J,358.3,40045,2)
 ;;=^5018634
 ;;^UTILITY(U,$J,358.3,40046,0)
 ;;=S58.112A^^186^2076^50
 ;;^UTILITY(U,$J,358.3,40046,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,40046,1,3,0)
 ;;=3^Amputation,Traumatic,Left Arm Between Elbow & Wrist Level,Init Encntr
 ;;^UTILITY(U,$J,358.3,40046,1,4,0)
 ;;=4^S58.112A
 ;;^UTILITY(U,$J,358.3,40046,2)
 ;;=^5031928
 ;;^UTILITY(U,$J,358.3,40047,0)
 ;;=S98.012A^^186^2076^51
 ;;^UTILITY(U,$J,358.3,40047,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,40047,1,3,0)
 ;;=3^Amputation,Traumatic,Left Foot at Ankle Level,Init Encntr
 ;;^UTILITY(U,$J,358.3,40047,1,4,0)
 ;;=4^S98.012A
 ;;^UTILITY(U,$J,358.3,40047,2)
 ;;=^5046248
 ;;^UTILITY(U,$J,358.3,40048,0)
 ;;=S98.112A^^186^2076^52
 ;;^UTILITY(U,$J,358.3,40048,1,0)
 ;;=^358.31IA^4^2