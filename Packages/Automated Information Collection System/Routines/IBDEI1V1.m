IBDEI1V1 ; ; 06-AUG-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,32742,1,3,0)
 ;;=3^Malig Neop Prostate
 ;;^UTILITY(U,$J,358.3,32742,1,4,0)
 ;;=4^C61.
 ;;^UTILITY(U,$J,358.3,32742,2)
 ;;=^267239
 ;;^UTILITY(U,$J,358.3,32743,0)
 ;;=C20.^^182^1992^143
 ;;^UTILITY(U,$J,358.3,32743,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,32743,1,3,0)
 ;;=3^Malig Neop Rectum
 ;;^UTILITY(U,$J,358.3,32743,1,4,0)
 ;;=4^C20.
 ;;^UTILITY(U,$J,358.3,32743,2)
 ;;=^267090
 ;;^UTILITY(U,$J,358.3,32744,0)
 ;;=C64.1^^182^1992^147
 ;;^UTILITY(U,$J,358.3,32744,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,32744,1,3,0)
 ;;=3^Malig Neop Right Kidney,Except Renal pelvis
 ;;^UTILITY(U,$J,358.3,32744,1,4,0)
 ;;=4^C64.1
 ;;^UTILITY(U,$J,358.3,32744,2)
 ;;=^5001248
 ;;^UTILITY(U,$J,358.3,32745,0)
 ;;=C65.1^^182^1992^149
 ;;^UTILITY(U,$J,358.3,32745,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,32745,1,3,0)
 ;;=3^Malig Neop Right Renal Pelvis
 ;;^UTILITY(U,$J,358.3,32745,1,4,0)
 ;;=4^C65.1
 ;;^UTILITY(U,$J,358.3,32745,2)
 ;;=^5001251
 ;;^UTILITY(U,$J,358.3,32746,0)
 ;;=C62.91^^182^1992^150
 ;;^UTILITY(U,$J,358.3,32746,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,32746,1,3,0)
 ;;=3^Malig Neop Right Testis
 ;;^UTILITY(U,$J,358.3,32746,1,4,0)
 ;;=4^C62.91
 ;;^UTILITY(U,$J,358.3,32746,2)
 ;;=^5001237
 ;;^UTILITY(U,$J,358.3,32747,0)
 ;;=C17.9^^182^1992^151
 ;;^UTILITY(U,$J,358.3,32747,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,32747,1,3,0)
 ;;=3^Malig Neop Small Intestine,Unspec
 ;;^UTILITY(U,$J,358.3,32747,1,4,0)
 ;;=4^C17.9
 ;;^UTILITY(U,$J,358.3,32747,2)
 ;;=^5000926
 ;;^UTILITY(U,$J,358.3,32748,0)
 ;;=C16.9^^182^1992^152
 ;;^UTILITY(U,$J,358.3,32748,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,32748,1,3,0)
 ;;=3^Malig Neop Stomach,Unspec
 ;;^UTILITY(U,$J,358.3,32748,1,4,0)
 ;;=4^C16.9
 ;;^UTILITY(U,$J,358.3,32748,2)
 ;;=^5000923
 ;;^UTILITY(U,$J,358.3,32749,0)
 ;;=C02.9^^182^1992^154
 ;;^UTILITY(U,$J,358.3,32749,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,32749,1,3,0)
 ;;=3^Malig Neop Tongue,Unspec
 ;;^UTILITY(U,$J,358.3,32749,1,4,0)
 ;;=4^C02.9
 ;;^UTILITY(U,$J,358.3,32749,2)
 ;;=^5000891
 ;;^UTILITY(U,$J,358.3,32750,0)
 ;;=C62.10^^182^1992^115
 ;;^UTILITY(U,$J,358.3,32750,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,32750,1,3,0)
 ;;=3^Malig Neop Descended Testis,Unspec
 ;;^UTILITY(U,$J,358.3,32750,1,4,0)
 ;;=4^C62.10
 ;;^UTILITY(U,$J,358.3,32750,2)
 ;;=^5001233
 ;;^UTILITY(U,$J,358.3,32751,0)
 ;;=C64.9^^182^1992^122
 ;;^UTILITY(U,$J,358.3,32751,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,32751,1,3,0)
 ;;=3^Malig Neop Kidney,Except Renal Pelvis,Unspec
 ;;^UTILITY(U,$J,358.3,32751,1,4,0)
 ;;=4^C64.9
 ;;^UTILITY(U,$J,358.3,32751,2)
 ;;=^5001250
 ;;^UTILITY(U,$J,358.3,32752,0)
 ;;=C34.92^^182^1992^125
 ;;^UTILITY(U,$J,358.3,32752,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,32752,1,3,0)
 ;;=3^Malig Neop Left Bronchus/Lung,Unspec Part
 ;;^UTILITY(U,$J,358.3,32752,1,4,0)
 ;;=4^C34.92
 ;;^UTILITY(U,$J,358.3,32752,2)
 ;;=^5000968
 ;;^UTILITY(U,$J,358.3,32753,0)
 ;;=C34.90^^182^1992^110
 ;;^UTILITY(U,$J,358.3,32753,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,32753,1,3,0)
 ;;=3^Malig Neop Bronchus/Lung,Unspec Part
 ;;^UTILITY(U,$J,358.3,32753,1,4,0)
 ;;=4^C34.90
 ;;^UTILITY(U,$J,358.3,32753,2)
 ;;=^5000966
 ;;^UTILITY(U,$J,358.3,32754,0)
 ;;=C65.9^^182^1992^144
 ;;^UTILITY(U,$J,358.3,32754,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,32754,1,3,0)
 ;;=3^Malig Neop Renal Pelvis,Unspec
 ;;^UTILITY(U,$J,358.3,32754,1,4,0)
 ;;=4^C65.9
 ;;^UTILITY(U,$J,358.3,32754,2)
 ;;=^5001253
 ;;^UTILITY(U,$J,358.3,32755,0)
 ;;=C50.912^^182^1992^126
 ;;^UTILITY(U,$J,358.3,32755,1,0)
 ;;=^358.31IA^4^2