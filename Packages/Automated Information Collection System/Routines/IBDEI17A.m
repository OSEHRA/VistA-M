IBDEI17A ; ; 06-AUG-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,21230,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,21230,1,2,0)
 ;;=2^93640
 ;;^UTILITY(U,$J,358.3,21230,1,3,0)
 ;;=3^Eps Eval Sgl/Dual Lead
 ;;^UTILITY(U,$J,358.3,21231,0)
 ;;=93641^^117^1325^16^^^^1
 ;;^UTILITY(U,$J,358.3,21231,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,21231,1,2,0)
 ;;=2^93641
 ;;^UTILITY(U,$J,358.3,21231,1,3,0)
 ;;=3^Eps Test Sgl/Dual Pulse Gen
 ;;^UTILITY(U,$J,358.3,21232,0)
 ;;=93642^^117^1325^9^^^^1
 ;;^UTILITY(U,$J,358.3,21232,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,21232,1,2,0)
 ;;=2^93642
 ;;^UTILITY(U,$J,358.3,21232,1,3,0)
 ;;=3^Eps Eval Sgl/Dual W/Pgm,Repgm
 ;;^UTILITY(U,$J,358.3,21233,0)
 ;;=93650^^117^1325^1^^^^1
 ;;^UTILITY(U,$J,358.3,21233,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,21233,1,2,0)
 ;;=2^93650
 ;;^UTILITY(U,$J,358.3,21233,1,3,0)
 ;;=3^Ablate AV Node,Create Heart Block
 ;;^UTILITY(U,$J,358.3,21234,0)
 ;;=93653^^117^1325^4^^^^1
 ;;^UTILITY(U,$J,358.3,21234,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,21234,1,2,0)
 ;;=2^93653
 ;;^UTILITY(U,$J,358.3,21234,1,3,0)
 ;;=3^EP & Ablate Supravent Arrhyt
 ;;^UTILITY(U,$J,358.3,21235,0)
 ;;=93654^^117^1325^5^^^^1
 ;;^UTILITY(U,$J,358.3,21235,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,21235,1,2,0)
 ;;=2^93654
 ;;^UTILITY(U,$J,358.3,21235,1,3,0)
 ;;=3^EP & Ablate Ventric Tachy
 ;;^UTILITY(U,$J,358.3,21236,0)
 ;;=93655^^117^1325^2^^^^1
 ;;^UTILITY(U,$J,358.3,21236,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,21236,1,2,0)
 ;;=2^93655
 ;;^UTILITY(U,$J,358.3,21236,1,3,0)
 ;;=3^Ablate Arrhythmia Add On
 ;;^UTILITY(U,$J,358.3,21237,0)
 ;;=93656^^117^1325^28^^^^1
 ;;^UTILITY(U,$J,358.3,21237,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,21237,1,2,0)
 ;;=2^93656
 ;;^UTILITY(U,$J,358.3,21237,1,3,0)
 ;;=3^Tx Atrial Fib Pulm Vein Isol
 ;;^UTILITY(U,$J,358.3,21238,0)
 ;;=93657^^117^1325^29^^^^1
 ;;^UTILITY(U,$J,358.3,21238,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,21238,1,2,0)
 ;;=2^93657
 ;;^UTILITY(U,$J,358.3,21238,1,3,0)
 ;;=3^Tx L/R Atrial Fib Addl
 ;;^UTILITY(U,$J,358.3,21239,0)
 ;;=93631^^117^1325^7^^^^1
 ;;^UTILITY(U,$J,358.3,21239,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,21239,1,2,0)
 ;;=2^93631
 ;;^UTILITY(U,$J,358.3,21239,1,3,0)
 ;;=3^Endocardial Pacing and Mapping
 ;;^UTILITY(U,$J,358.3,21240,0)
 ;;=93623^^117^1325^25^^^^1
 ;;^UTILITY(U,$J,358.3,21240,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,21240,1,2,0)
 ;;=2^93623
 ;;^UTILITY(U,$J,358.3,21240,1,3,0)
 ;;=3^Pacing & Prog Stim Drug after IV Inf
 ;;^UTILITY(U,$J,358.3,21241,0)
 ;;=93660^^117^1325^27^^^^1
 ;;^UTILITY(U,$J,358.3,21241,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,21241,1,2,0)
 ;;=2^93660
 ;;^UTILITY(U,$J,358.3,21241,1,3,0)
 ;;=3^Tilt Table Eval w/ECG
 ;;^UTILITY(U,$J,358.3,21242,0)
 ;;=93662^^117^1325^22^^^^1
 ;;^UTILITY(U,$J,358.3,21242,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,21242,1,2,0)
 ;;=2^93662
 ;;^UTILITY(U,$J,358.3,21242,1,3,0)
 ;;=3^Intracardiac Echo during Tx Intervention
 ;;^UTILITY(U,$J,358.3,21243,0)
 ;;=93613^^117^1325^6^^^^1
 ;;^UTILITY(U,$J,358.3,21243,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,21243,1,2,0)
 ;;=2^93613
 ;;^UTILITY(U,$J,358.3,21243,1,3,0)
 ;;=3^Electrophys 3D Mapping
 ;;^UTILITY(U,$J,358.3,21244,0)
 ;;=75605^^117^1326^9^^^^1
 ;;^UTILITY(U,$J,358.3,21244,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,21244,1,2,0)
 ;;=2^75605
 ;;^UTILITY(U,$J,358.3,21244,1,3,0)
 ;;=3^Ao Thoracic W/Serialography
 ;;^UTILITY(U,$J,358.3,21245,0)
 ;;=75625^^117^1326^7^^^^1
 ;;^UTILITY(U,$J,358.3,21245,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,21245,1,2,0)
 ;;=2^75625
 ;;^UTILITY(U,$J,358.3,21245,1,3,0)
 ;;=3^Ao Abd (W/O Runoff)