IBDEI0DI ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,5880,1,4,0)
 ;;=4^L03.111
 ;;^UTILITY(U,$J,358.3,5880,2)
 ;;=^5009031
 ;;^UTILITY(U,$J,358.3,5881,0)
 ;;=L03.011^^40^379^50
 ;;^UTILITY(U,$J,358.3,5881,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,5881,1,3,0)
 ;;=3^Cellulitis of Right Finger
 ;;^UTILITY(U,$J,358.3,5881,1,4,0)
 ;;=4^L03.011
 ;;^UTILITY(U,$J,358.3,5881,2)
 ;;=^5009019
 ;;^UTILITY(U,$J,358.3,5882,0)
 ;;=L03.115^^40^379^51
 ;;^UTILITY(U,$J,358.3,5882,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,5882,1,3,0)
 ;;=3^Cellulitis of Right Lower Limb
 ;;^UTILITY(U,$J,358.3,5882,1,4,0)
 ;;=4^L03.115
 ;;^UTILITY(U,$J,358.3,5882,2)
 ;;=^5009035
 ;;^UTILITY(U,$J,358.3,5883,0)
 ;;=L03.031^^40^379^52
 ;;^UTILITY(U,$J,358.3,5883,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,5883,1,3,0)
 ;;=3^Cellulitis of Right Toe
 ;;^UTILITY(U,$J,358.3,5883,1,4,0)
 ;;=4^L03.031
 ;;^UTILITY(U,$J,358.3,5883,2)
 ;;=^5009025
 ;;^UTILITY(U,$J,358.3,5884,0)
 ;;=L03.113^^40^379^53
 ;;^UTILITY(U,$J,358.3,5884,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,5884,1,3,0)
 ;;=3^Cellulitis of Right Upper Limb
 ;;^UTILITY(U,$J,358.3,5884,1,4,0)
 ;;=4^L03.113
 ;;^UTILITY(U,$J,358.3,5884,2)
 ;;=^5009033
 ;;^UTILITY(U,$J,358.3,5885,0)
 ;;=L03.319^^40^379^54
 ;;^UTILITY(U,$J,358.3,5885,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,5885,1,3,0)
 ;;=3^Cellulitis of Trunk,Unspec
 ;;^UTILITY(U,$J,358.3,5885,1,4,0)
 ;;=4^L03.319
 ;;^UTILITY(U,$J,358.3,5885,2)
 ;;=^5009054
 ;;^UTILITY(U,$J,358.3,5886,0)
 ;;=L03.316^^40^379^55
 ;;^UTILITY(U,$J,358.3,5886,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,5886,1,3,0)
 ;;=3^Cellulitis of Umbilicus
 ;;^UTILITY(U,$J,358.3,5886,1,4,0)
 ;;=4^L03.316
 ;;^UTILITY(U,$J,358.3,5886,2)
 ;;=^5009052
 ;;^UTILITY(U,$J,358.3,5887,0)
 ;;=L03.90^^40^379^56
 ;;^UTILITY(U,$J,358.3,5887,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,5887,1,3,0)
 ;;=3^Cellulitis,Unspec
 ;;^UTILITY(U,$J,358.3,5887,1,4,0)
 ;;=4^L03.90
 ;;^UTILITY(U,$J,358.3,5887,2)
 ;;=^5009067
 ;;^UTILITY(U,$J,358.3,5888,0)
 ;;=L02.211^^40^379^57
 ;;^UTILITY(U,$J,358.3,5888,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,5888,1,3,0)
 ;;=3^Cutaneous Abscess of Abdominal Wall
 ;;^UTILITY(U,$J,358.3,5888,1,4,0)
 ;;=4^L02.211
 ;;^UTILITY(U,$J,358.3,5888,2)
 ;;=^5008950
 ;;^UTILITY(U,$J,358.3,5889,0)
 ;;=L02.212^^40^379^58
 ;;^UTILITY(U,$J,358.3,5889,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,5889,1,3,0)
 ;;=3^Cutaneous Abscess of Back
 ;;^UTILITY(U,$J,358.3,5889,1,4,0)
 ;;=4^L02.212
 ;;^UTILITY(U,$J,358.3,5889,2)
 ;;=^5008951
 ;;^UTILITY(U,$J,358.3,5890,0)
 ;;=L02.31^^40^379^59
 ;;^UTILITY(U,$J,358.3,5890,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,5890,1,3,0)
 ;;=3^Cutaneous Abscess of Buttock
 ;;^UTILITY(U,$J,358.3,5890,1,4,0)
 ;;=4^L02.31
 ;;^UTILITY(U,$J,358.3,5890,2)
 ;;=^5008971
 ;;^UTILITY(U,$J,358.3,5891,0)
 ;;=L02.213^^40^379^60
 ;;^UTILITY(U,$J,358.3,5891,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,5891,1,3,0)
 ;;=3^Cutaneous Abscess of Chest Wall
 ;;^UTILITY(U,$J,358.3,5891,1,4,0)
 ;;=4^L02.213
 ;;^UTILITY(U,$J,358.3,5891,2)
 ;;=^5008952
 ;;^UTILITY(U,$J,358.3,5892,0)
 ;;=L02.01^^40^379^61
 ;;^UTILITY(U,$J,358.3,5892,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,5892,1,3,0)
 ;;=3^Cutaneous Abscess of Face
 ;;^UTILITY(U,$J,358.3,5892,1,4,0)
 ;;=4^L02.01
 ;;^UTILITY(U,$J,358.3,5892,2)
 ;;=^5008944
 ;;^UTILITY(U,$J,358.3,5893,0)
 ;;=L02.214^^40^379^62
 ;;^UTILITY(U,$J,358.3,5893,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,5893,1,3,0)
 ;;=3^Cutaneous Abscess of Groin
 ;;^UTILITY(U,$J,358.3,5893,1,4,0)
 ;;=4^L02.214
 ;;^UTILITY(U,$J,358.3,5893,2)
 ;;=^5008953
 ;;^UTILITY(U,$J,358.3,5894,0)
 ;;=L02.811^^40^379^63
