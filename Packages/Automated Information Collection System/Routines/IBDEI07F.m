IBDEI07F ; ; 06-AUG-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,2975,1,3,0)
 ;;=3^Sinusitis,Acute
 ;;^UTILITY(U,$J,358.3,2975,1,4,0)
 ;;=4^J01.90
 ;;^UTILITY(U,$J,358.3,2975,2)
 ;;=^5008127
 ;;^UTILITY(U,$J,358.3,2976,0)
 ;;=J32.9^^7^84^85
 ;;^UTILITY(U,$J,358.3,2976,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,2976,1,3,0)
 ;;=3^Sinusitis,Chronic
 ;;^UTILITY(U,$J,358.3,2976,1,4,0)
 ;;=4^J32.9
 ;;^UTILITY(U,$J,358.3,2976,2)
 ;;=^5008207
 ;;^UTILITY(U,$J,358.3,2977,0)
 ;;=R61.^^7^84^86
 ;;^UTILITY(U,$J,358.3,2977,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,2977,1,3,0)
 ;;=3^Sweats/Night Sweats
 ;;^UTILITY(U,$J,358.3,2977,1,4,0)
 ;;=4^R61.
 ;;^UTILITY(U,$J,358.3,2977,2)
 ;;=^331970
 ;;^UTILITY(U,$J,358.3,2978,0)
 ;;=A51.0^^7^84^88
 ;;^UTILITY(U,$J,358.3,2978,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,2978,1,3,0)
 ;;=3^Syphilis,Genital,Primary
 ;;^UTILITY(U,$J,358.3,2978,1,4,0)
 ;;=4^A51.0
 ;;^UTILITY(U,$J,358.3,2978,2)
 ;;=^5000272
 ;;^UTILITY(U,$J,358.3,2979,0)
 ;;=A51.5^^7^84^87
 ;;^UTILITY(U,$J,358.3,2979,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,2979,1,3,0)
 ;;=3^Syphilis,EArly Latent
 ;;^UTILITY(U,$J,358.3,2979,1,4,0)
 ;;=4^A51.5
 ;;^UTILITY(U,$J,358.3,2979,2)
 ;;=^266730
 ;;^UTILITY(U,$J,358.3,2980,0)
 ;;=A52.8^^7^84^89
 ;;^UTILITY(U,$J,358.3,2980,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,2980,1,3,0)
 ;;=3^Syphilis,Late Latent
 ;;^UTILITY(U,$J,358.3,2980,1,4,0)
 ;;=4^A52.8
 ;;^UTILITY(U,$J,358.3,2980,2)
 ;;=^266779
 ;;^UTILITY(U,$J,358.3,2981,0)
 ;;=A52.3^^7^84^90
 ;;^UTILITY(U,$J,358.3,2981,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,2981,1,3,0)
 ;;=3^Syphilis,Neurosyphilis
 ;;^UTILITY(U,$J,358.3,2981,1,4,0)
 ;;=4^A52.3
 ;;^UTILITY(U,$J,358.3,2981,2)
 ;;=^5000298
 ;;^UTILITY(U,$J,358.3,2982,0)
 ;;=A52.9^^7^84^91
 ;;^UTILITY(U,$J,358.3,2982,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,2982,1,3,0)
 ;;=3^Syphilis,Tertiary
 ;;^UTILITY(U,$J,358.3,2982,1,4,0)
 ;;=4^A52.9
 ;;^UTILITY(U,$J,358.3,2982,2)
 ;;=^5000308
 ;;^UTILITY(U,$J,358.3,2983,0)
 ;;=A15.8^^7^84^93
 ;;^UTILITY(U,$J,358.3,2983,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,2983,1,3,0)
 ;;=3^Tuberculosis NEC
 ;;^UTILITY(U,$J,358.3,2983,1,4,0)
 ;;=4^A15.8
 ;;^UTILITY(U,$J,358.3,2983,2)
 ;;=^266093
 ;;^UTILITY(U,$J,358.3,2984,0)
 ;;=A15.0^^7^84^95
 ;;^UTILITY(U,$J,358.3,2984,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,2984,1,3,0)
 ;;=3^Tuberculosis,Pulmonary
 ;;^UTILITY(U,$J,358.3,2984,1,4,0)
 ;;=4^A15.0
 ;;^UTILITY(U,$J,358.3,2984,2)
 ;;=^5000062
 ;;^UTILITY(U,$J,358.3,2985,0)
 ;;=R76.11^^7^84^94
 ;;^UTILITY(U,$J,358.3,2985,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,2985,1,3,0)
 ;;=3^Tuberculosis,Latent
 ;;^UTILITY(U,$J,358.3,2985,1,4,0)
 ;;=4^R76.11
 ;;^UTILITY(U,$J,358.3,2985,2)
 ;;=^5019570
 ;;^UTILITY(U,$J,358.3,2986,0)
 ;;=N34.2^^7^84^97
 ;;^UTILITY(U,$J,358.3,2986,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,2986,1,3,0)
 ;;=3^Urethritis NEC
 ;;^UTILITY(U,$J,358.3,2986,1,4,0)
 ;;=4^N34.2
 ;;^UTILITY(U,$J,358.3,2986,2)
 ;;=^88231
 ;;^UTILITY(U,$J,358.3,2987,0)
 ;;=N39.0^^7^84^96
 ;;^UTILITY(U,$J,358.3,2987,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,2987,1,3,0)
 ;;=3^UTI
 ;;^UTILITY(U,$J,358.3,2987,1,4,0)
 ;;=4^N39.0
 ;;^UTILITY(U,$J,358.3,2987,2)
 ;;=^124436
 ;;^UTILITY(U,$J,358.3,2988,0)
 ;;=E55.9^^7^84^98
 ;;^UTILITY(U,$J,358.3,2988,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,2988,1,3,0)
 ;;=3^Vitamin D Deficiency
 ;;^UTILITY(U,$J,358.3,2988,1,4,0)
 ;;=4^E55.9
 ;;^UTILITY(U,$J,358.3,2988,2)
 ;;=^5002799
 ;;^UTILITY(U,$J,358.3,2989,0)
 ;;=R63.4^^7^84^99
 ;;^UTILITY(U,$J,358.3,2989,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,2989,1,3,0)
 ;;=3^Weight Loss
 ;;^UTILITY(U,$J,358.3,2989,1,4,0)
 ;;=4^R63.4