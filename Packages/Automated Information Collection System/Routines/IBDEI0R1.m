IBDEI0R1 ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,12377,1,4,0)
 ;;=4^H91.91
 ;;^UTILITY(U,$J,358.3,12377,2)
 ;;=^5133553
 ;;^UTILITY(U,$J,358.3,12378,0)
 ;;=H91.92^^71^709^20
 ;;^UTILITY(U,$J,358.3,12378,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,12378,1,3,0)
 ;;=3^Hearing Loss,Left Ear,Unspec
 ;;^UTILITY(U,$J,358.3,12378,1,4,0)
 ;;=4^H91.92
 ;;^UTILITY(U,$J,358.3,12378,2)
 ;;=^5133554
 ;;^UTILITY(U,$J,358.3,12379,0)
 ;;=H91.93^^71^709^19
 ;;^UTILITY(U,$J,358.3,12379,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,12379,1,3,0)
 ;;=3^Hearing Loss,Bilateral,Unspec
 ;;^UTILITY(U,$J,358.3,12379,1,4,0)
 ;;=4^H91.93
 ;;^UTILITY(U,$J,358.3,12379,2)
 ;;=^5006944
 ;;^UTILITY(U,$J,358.3,12380,0)
 ;;=I10.^^71^709^17
 ;;^UTILITY(U,$J,358.3,12380,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,12380,1,3,0)
 ;;=3^Essential (primary) hypertension
 ;;^UTILITY(U,$J,358.3,12380,1,4,0)
 ;;=4^I10.
 ;;^UTILITY(U,$J,358.3,12380,2)
 ;;=^5007062
 ;;^UTILITY(U,$J,358.3,12381,0)
 ;;=J06.9^^71^709^2
 ;;^UTILITY(U,$J,358.3,12381,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,12381,1,3,0)
 ;;=3^Acute upper respiratory infection, unspecified
 ;;^UTILITY(U,$J,358.3,12381,1,4,0)
 ;;=4^J06.9
 ;;^UTILITY(U,$J,358.3,12381,2)
 ;;=^5008143
 ;;^UTILITY(U,$J,358.3,12382,0)
 ;;=J32.4^^71^709^12
 ;;^UTILITY(U,$J,358.3,12382,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,12382,1,3,0)
 ;;=3^Chronic pansinusitis
 ;;^UTILITY(U,$J,358.3,12382,1,4,0)
 ;;=4^J32.4
 ;;^UTILITY(U,$J,358.3,12382,2)
 ;;=^5008206
 ;;^UTILITY(U,$J,358.3,12383,0)
 ;;=J32.8^^71^709^11
 ;;^UTILITY(U,$J,358.3,12383,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,12383,1,3,0)
 ;;=3^Chronic Sinusitis NEC
 ;;^UTILITY(U,$J,358.3,12383,1,4,0)
 ;;=4^J32.8
 ;;^UTILITY(U,$J,358.3,12383,2)
 ;;=^269890
 ;;^UTILITY(U,$J,358.3,12384,0)
 ;;=J30.9^^71^709^4
 ;;^UTILITY(U,$J,358.3,12384,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,12384,1,3,0)
 ;;=3^Allergic rhinitis, unspecified
 ;;^UTILITY(U,$J,358.3,12384,1,4,0)
 ;;=4^J30.9
 ;;^UTILITY(U,$J,358.3,12384,2)
 ;;=^5008205
 ;;^UTILITY(U,$J,358.3,12385,0)
 ;;=J40.^^71^709^8
 ;;^UTILITY(U,$J,358.3,12385,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,12385,1,3,0)
 ;;=3^Bronchitis, not specified as acute or chronic
 ;;^UTILITY(U,$J,358.3,12385,1,4,0)
 ;;=4^J40.
 ;;^UTILITY(U,$J,358.3,12385,2)
 ;;=^17164
 ;;^UTILITY(U,$J,358.3,12386,0)
 ;;=J45.909^^71^709^7
 ;;^UTILITY(U,$J,358.3,12386,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,12386,1,3,0)
 ;;=3^Asthma,Uncomplicated,Unspec
 ;;^UTILITY(U,$J,358.3,12386,1,4,0)
 ;;=4^J45.909
 ;;^UTILITY(U,$J,358.3,12386,2)
 ;;=^5008256
 ;;^UTILITY(U,$J,358.3,12387,0)
 ;;=K52.9^^71^709^29
 ;;^UTILITY(U,$J,358.3,12387,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,12387,1,3,0)
 ;;=3^Noninfective gastroenteritis and colitis, unspecified
 ;;^UTILITY(U,$J,358.3,12387,1,4,0)
 ;;=4^K52.9
 ;;^UTILITY(U,$J,358.3,12387,2)
 ;;=^5008704
 ;;^UTILITY(U,$J,358.3,12388,0)
 ;;=M25.511^^71^709^38
 ;;^UTILITY(U,$J,358.3,12388,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,12388,1,3,0)
 ;;=3^Pain in right shoulder
 ;;^UTILITY(U,$J,358.3,12388,1,4,0)
 ;;=4^M25.511
 ;;^UTILITY(U,$J,358.3,12388,2)
 ;;=^5011602
 ;;^UTILITY(U,$J,358.3,12389,0)
 ;;=M25.512^^71^709^35
 ;;^UTILITY(U,$J,358.3,12389,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,12389,1,3,0)
 ;;=3^Pain in left shoulder
 ;;^UTILITY(U,$J,358.3,12389,1,4,0)
 ;;=4^M25.512
 ;;^UTILITY(U,$J,358.3,12389,2)
 ;;=^5011603
 ;;^UTILITY(U,$J,358.3,12390,0)
 ;;=M25.551^^71^709^36
 ;;^UTILITY(U,$J,358.3,12390,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,12390,1,3,0)
 ;;=3^Pain in right hip
 ;;^UTILITY(U,$J,358.3,12390,1,4,0)
 ;;=4^M25.551
