IBDEI0FF ; ; 06-AUG-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,7082,2)
 ;;=^321991
 ;;^UTILITY(U,$J,358.3,7083,0)
 ;;=494.0^^31^426^5
 ;;^UTILITY(U,$J,358.3,7083,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,7083,1,4,0)
 ;;=4^494.0
 ;;^UTILITY(U,$J,358.3,7083,1,5,0)
 ;;=5^Bronchiectasis w/o Exacerbation
 ;;^UTILITY(U,$J,358.3,7083,2)
 ;;=^321990
 ;;^UTILITY(U,$J,358.3,7084,0)
 ;;=466.0^^31^426^7
 ;;^UTILITY(U,$J,358.3,7084,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,7084,1,4,0)
 ;;=4^466.0
 ;;^UTILITY(U,$J,358.3,7084,1,5,0)
 ;;=5^Bronchitis,Acute
 ;;^UTILITY(U,$J,358.3,7084,2)
 ;;=^259084
 ;;^UTILITY(U,$J,358.3,7085,0)
 ;;=491.9^^31^426^8
 ;;^UTILITY(U,$J,358.3,7085,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,7085,1,4,0)
 ;;=4^491.9
 ;;^UTILITY(U,$J,358.3,7085,1,5,0)
 ;;=5^Bronchitis,Chronic
 ;;^UTILITY(U,$J,358.3,7085,2)
 ;;=^24359
 ;;^UTILITY(U,$J,358.3,7086,0)
 ;;=493.20^^31^426^9
 ;;^UTILITY(U,$J,358.3,7086,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,7086,1,4,0)
 ;;=4^493.20
 ;;^UTILITY(U,$J,358.3,7086,1,5,0)
 ;;=5^COPD w/Asthma NOS
 ;;^UTILITY(U,$J,358.3,7086,2)
 ;;=^330089
 ;;^UTILITY(U,$J,358.3,7087,0)
 ;;=493.22^^31^426^10
 ;;^UTILITY(U,$J,358.3,7087,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,7087,1,4,0)
 ;;=4^493.22
 ;;^UTILITY(U,$J,358.3,7087,1,5,0)
 ;;=5^COPD w/Asthma w/Exacerbation
 ;;^UTILITY(U,$J,358.3,7087,2)
 ;;=^330090
 ;;^UTILITY(U,$J,358.3,7088,0)
 ;;=493.21^^31^426^11
 ;;^UTILITY(U,$J,358.3,7088,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,7088,1,4,0)
 ;;=4^493.21
 ;;^UTILITY(U,$J,358.3,7088,1,5,0)
 ;;=5^COPD w/Asthma w/Status Asthm
 ;;^UTILITY(U,$J,358.3,7088,2)
 ;;=^269965
 ;;^UTILITY(U,$J,358.3,7089,0)
 ;;=491.21^^31^426^12
 ;;^UTILITY(U,$J,358.3,7089,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,7089,1,4,0)
 ;;=4^491.21
 ;;^UTILITY(U,$J,358.3,7089,1,5,0)
 ;;=5^COPD w/Exacerbation
 ;;^UTILITY(U,$J,358.3,7089,2)
 ;;=^330084
 ;;^UTILITY(U,$J,358.3,7090,0)
 ;;=496.^^31^426^13
 ;;^UTILITY(U,$J,358.3,7090,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,7090,1,4,0)
 ;;=4^496.
 ;;^UTILITY(U,$J,358.3,7090,1,5,0)
 ;;=5^COPD,Chronic
 ;;^UTILITY(U,$J,358.3,7090,2)
 ;;=^24355
 ;;^UTILITY(U,$J,358.3,7091,0)
 ;;=491.20^^31^426^14
 ;;^UTILITY(U,$J,358.3,7091,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,7091,1,4,0)
 ;;=4^491.20
 ;;^UTILITY(U,$J,358.3,7091,1,5,0)
 ;;=5^Chronic Obstruct Bronchitis
 ;;^UTILITY(U,$J,358.3,7091,2)
 ;;=^330083
 ;;^UTILITY(U,$J,358.3,7092,0)
 ;;=492.8^^31^426^16
 ;;^UTILITY(U,$J,358.3,7092,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,7092,1,4,0)
 ;;=4^492.8
 ;;^UTILITY(U,$J,358.3,7092,1,5,0)
 ;;=5^Emphysema NOS
 ;;^UTILITY(U,$J,358.3,7092,2)
 ;;=^87569
 ;;^UTILITY(U,$J,358.3,7093,0)
 ;;=491.21^^31^426^18
 ;;^UTILITY(U,$J,358.3,7093,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,7093,1,4,0)
 ;;=4^491.21
 ;;^UTILITY(U,$J,358.3,7093,1,5,0)
 ;;=5^Obstr Bronchitis w/Exacerbation
 ;;^UTILITY(U,$J,358.3,7093,2)
 ;;=^330084
 ;;^UTILITY(U,$J,358.3,7094,0)
 ;;=528.2^^31^427^1
 ;;^UTILITY(U,$J,358.3,7094,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,7094,1,4,0)
 ;;=4^528.2
 ;;^UTILITY(U,$J,358.3,7094,1,5,0)
 ;;=5^Aphthous Stomatitis
 ;;^UTILITY(U,$J,358.3,7094,2)
 ;;=^114480
 ;;^UTILITY(U,$J,358.3,7095,0)
 ;;=528.3^^31^427^2
 ;;^UTILITY(U,$J,358.3,7095,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,7095,1,4,0)
 ;;=4^528.3
 ;;^UTILITY(U,$J,358.3,7095,1,5,0)
 ;;=5^Cellulitis/Abscess Mouth
 ;;^UTILITY(U,$J,358.3,7095,2)
 ;;=^21155
 ;;^UTILITY(U,$J,358.3,7096,0)
 ;;=786.30^^31^427^3
 ;;^UTILITY(U,$J,358.3,7096,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,7096,1,4,0)
 ;;=4^786.30
 ;;^UTILITY(U,$J,358.3,7096,1,5,0)
 ;;=5^Hemoptysis NOS