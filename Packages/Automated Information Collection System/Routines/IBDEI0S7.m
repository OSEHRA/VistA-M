IBDEI0S7 ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,12976,0)
 ;;=H18.11^^80^753^25
 ;;^UTILITY(U,$J,358.3,12976,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,12976,1,3,0)
 ;;=3^Bullous Keratopathy,Right Eye
 ;;^UTILITY(U,$J,358.3,12976,1,4,0)
 ;;=4^H18.11
 ;;^UTILITY(U,$J,358.3,12976,2)
 ;;=^5005032
 ;;^UTILITY(U,$J,358.3,12977,0)
 ;;=H18.12^^80^753^24
 ;;^UTILITY(U,$J,358.3,12977,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,12977,1,3,0)
 ;;=3^Bullous Keratopathy,Left Eye
 ;;^UTILITY(U,$J,358.3,12977,1,4,0)
 ;;=4^H18.12
 ;;^UTILITY(U,$J,358.3,12977,2)
 ;;=^5005033
 ;;^UTILITY(U,$J,358.3,12978,0)
 ;;=H18.831^^80^753^150
 ;;^UTILITY(U,$J,358.3,12978,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,12978,1,3,0)
 ;;=3^Recurrent Erosion of Cornea,Right Eye
 ;;^UTILITY(U,$J,358.3,12978,1,4,0)
 ;;=4^H18.831
 ;;^UTILITY(U,$J,358.3,12978,2)
 ;;=^5005126
 ;;^UTILITY(U,$J,358.3,12979,0)
 ;;=H18.832^^80^753^149
 ;;^UTILITY(U,$J,358.3,12979,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,12979,1,3,0)
 ;;=3^Recurrent Erosion of Cornea,Left Eye
 ;;^UTILITY(U,$J,358.3,12979,1,4,0)
 ;;=4^H18.832
 ;;^UTILITY(U,$J,358.3,12979,2)
 ;;=^5005127
 ;;^UTILITY(U,$J,358.3,12980,0)
 ;;=H18.421^^80^753^14
 ;;^UTILITY(U,$J,358.3,12980,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,12980,1,3,0)
 ;;=3^Band Keratopathy,Right Eye
 ;;^UTILITY(U,$J,358.3,12980,1,4,0)
 ;;=4^H18.421
 ;;^UTILITY(U,$J,358.3,12980,2)
 ;;=^5005066
 ;;^UTILITY(U,$J,358.3,12981,0)
 ;;=H18.422^^80^753^13
 ;;^UTILITY(U,$J,358.3,12981,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,12981,1,3,0)
 ;;=3^Band Keratopathy,Left Eye
 ;;^UTILITY(U,$J,358.3,12981,1,4,0)
 ;;=4^H18.422
 ;;^UTILITY(U,$J,358.3,12981,2)
 ;;=^5005067
 ;;^UTILITY(U,$J,358.3,12982,0)
 ;;=H18.50^^80^753^80
 ;;^UTILITY(U,$J,358.3,12982,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,12982,1,3,0)
 ;;=3^Hereditary Corneal Dystrophies,Unspec
 ;;^UTILITY(U,$J,358.3,12982,1,4,0)
 ;;=4^H18.50
 ;;^UTILITY(U,$J,358.3,12982,2)
 ;;=^5005084
 ;;^UTILITY(U,$J,358.3,12983,0)
 ;;=H18.51^^80^753^61
 ;;^UTILITY(U,$J,358.3,12983,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,12983,1,3,0)
 ;;=3^Endothelial Corneal Dystrophy
 ;;^UTILITY(U,$J,358.3,12983,1,4,0)
 ;;=4^H18.51
 ;;^UTILITY(U,$J,358.3,12983,2)
 ;;=^268988
 ;;^UTILITY(U,$J,358.3,12984,0)
 ;;=H18.601^^80^753^106
 ;;^UTILITY(U,$J,358.3,12984,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,12984,1,3,0)
 ;;=3^Keratoconus,Right Eye,Unspec
 ;;^UTILITY(U,$J,358.3,12984,1,4,0)
 ;;=4^H18.601
 ;;^UTILITY(U,$J,358.3,12984,2)
 ;;=^5005089
 ;;^UTILITY(U,$J,358.3,12985,0)
 ;;=H18.602^^80^753^105
 ;;^UTILITY(U,$J,358.3,12985,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,12985,1,3,0)
 ;;=3^Keratoconus,Left Eye,Unspec
 ;;^UTILITY(U,$J,358.3,12985,1,4,0)
 ;;=4^H18.602
 ;;^UTILITY(U,$J,358.3,12985,2)
 ;;=^5005090
 ;;^UTILITY(U,$J,358.3,12986,0)
 ;;=H10.32^^80^753^42
 ;;^UTILITY(U,$J,358.3,12986,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,12986,1,3,0)
 ;;=3^Conjunctivitis,Acute,Left Eye,Unspec
 ;;^UTILITY(U,$J,358.3,12986,1,4,0)
 ;;=4^H10.32
 ;;^UTILITY(U,$J,358.3,12986,2)
 ;;=^5133459
 ;;^UTILITY(U,$J,358.3,12987,0)
 ;;=H10.31^^80^753^43
 ;;^UTILITY(U,$J,358.3,12987,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,12987,1,3,0)
 ;;=3^Conjunctivitis,Acute,Right Eye,Unspec
 ;;^UTILITY(U,$J,358.3,12987,1,4,0)
 ;;=4^H10.31
 ;;^UTILITY(U,$J,358.3,12987,2)
 ;;=^5133458
 ;;^UTILITY(U,$J,358.3,12988,0)
 ;;=H10.021^^80^753^120
 ;;^UTILITY(U,$J,358.3,12988,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,12988,1,3,0)
 ;;=3^Mucopurulent Conjunctivitis,Right Eye NEC
 ;;^UTILITY(U,$J,358.3,12988,1,4,0)
 ;;=4^H10.021
 ;;^UTILITY(U,$J,358.3,12988,2)
 ;;=^5004660
