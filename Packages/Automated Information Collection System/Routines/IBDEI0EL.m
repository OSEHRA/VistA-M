IBDEI0EL ; ; 06-AUG-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,6662,1,5,0)
 ;;=5^Gastroenteritis
 ;;^UTILITY(U,$J,358.3,6662,2)
 ;;=^87311
 ;;^UTILITY(U,$J,358.3,6663,0)
 ;;=054.71^^31^413^36
 ;;^UTILITY(U,$J,358.3,6663,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,6663,1,4,0)
 ;;=4^054.71
 ;;^UTILITY(U,$J,358.3,6663,1,5,0)
 ;;=5^Herpes Simplex, Mouth/Lip
 ;;^UTILITY(U,$J,358.3,6663,2)
 ;;=^266574
 ;;^UTILITY(U,$J,358.3,6664,0)
 ;;=054.10^^31^413^23
 ;;^UTILITY(U,$J,358.3,6664,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,6664,1,4,0)
 ;;=4^054.10
 ;;^UTILITY(U,$J,358.3,6664,1,5,0)
 ;;=5^Genital Herpes, Unsp
 ;;^UTILITY(U,$J,358.3,6664,2)
 ;;=^56853
 ;;^UTILITY(U,$J,358.3,6665,0)
 ;;=098.0^^31^413^75
 ;;^UTILITY(U,$J,358.3,6665,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,6665,1,4,0)
 ;;=4^098.0
 ;;^UTILITY(U,$J,358.3,6665,1,5,0)
 ;;=5^Urethritis,Gonococcal
 ;;^UTILITY(U,$J,358.3,6665,2)
 ;;=^52567
 ;;^UTILITY(U,$J,358.3,6666,0)
 ;;=054.13^^31^413^38
 ;;^UTILITY(U,$J,358.3,6666,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,6666,1,4,0)
 ;;=4^054.13
 ;;^UTILITY(U,$J,358.3,6666,1,5,0)
 ;;=5^Herpetic Infect Of Penis
 ;;^UTILITY(U,$J,358.3,6666,2)
 ;;=^266560
 ;;^UTILITY(U,$J,358.3,6667,0)
 ;;=054.11^^31^413^39
 ;;^UTILITY(U,$J,358.3,6667,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,6667,1,4,0)
 ;;=4^054.11
 ;;^UTILITY(U,$J,358.3,6667,1,5,0)
 ;;=5^Herpetic Vulvovaginitis
 ;;^UTILITY(U,$J,358.3,6667,2)
 ;;=^57012
 ;;^UTILITY(U,$J,358.3,6668,0)
 ;;=053.9^^31^413^37
 ;;^UTILITY(U,$J,358.3,6668,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,6668,1,4,0)
 ;;=4^053.9
 ;;^UTILITY(U,$J,358.3,6668,1,5,0)
 ;;=5^Herpes Zoster Nos
 ;;^UTILITY(U,$J,358.3,6668,2)
 ;;=^56946
 ;;^UTILITY(U,$J,358.3,6669,0)
 ;;=487.1^^31^413^40
 ;;^UTILITY(U,$J,358.3,6669,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,6669,1,4,0)
 ;;=4^487.1
 ;;^UTILITY(U,$J,358.3,6669,1,5,0)
 ;;=5^Influenza
 ;;^UTILITY(U,$J,358.3,6669,2)
 ;;=^63125
 ;;^UTILITY(U,$J,358.3,6670,0)
 ;;=487.0^^31^413^41
 ;;^UTILITY(U,$J,358.3,6670,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,6670,1,4,0)
 ;;=4^487.0
 ;;^UTILITY(U,$J,358.3,6670,1,5,0)
 ;;=5^Influenza W/ Pneumonia
 ;;^UTILITY(U,$J,358.3,6670,2)
 ;;=^269942
 ;;^UTILITY(U,$J,358.3,6671,0)
 ;;=386.30^^31^413^42
 ;;^UTILITY(U,$J,358.3,6671,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,6671,1,4,0)
 ;;=4^386.30
 ;;^UTILITY(U,$J,358.3,6671,1,5,0)
 ;;=5^Labyrinthitis Nos
 ;;^UTILITY(U,$J,358.3,6671,2)
 ;;=^67891
 ;;^UTILITY(U,$J,358.3,6672,0)
 ;;=088.81^^31^413^43
 ;;^UTILITY(U,$J,358.3,6672,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,6672,1,4,0)
 ;;=4^088.81
 ;;^UTILITY(U,$J,358.3,6672,1,5,0)
 ;;=5^Lyme Disease
 ;;^UTILITY(U,$J,358.3,6672,2)
 ;;=^72315
 ;;^UTILITY(U,$J,358.3,6673,0)
 ;;=785.6^^31^413^45
 ;;^UTILITY(U,$J,358.3,6673,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,6673,1,4,0)
 ;;=4^785.6
 ;;^UTILITY(U,$J,358.3,6673,1,5,0)
 ;;=5^Lymphadenopathy
 ;;^UTILITY(U,$J,358.3,6673,2)
 ;;=^72368
 ;;^UTILITY(U,$J,358.3,6674,0)
 ;;=031.0^^31^413^46
 ;;^UTILITY(U,$J,358.3,6674,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,6674,1,4,0)
 ;;=4^031.0
 ;;^UTILITY(U,$J,358.3,6674,1,5,0)
 ;;=5^Mycobacteria,Atyp,Pulmonary
 ;;^UTILITY(U,$J,358.3,6674,2)
 ;;=^101018
 ;;^UTILITY(U,$J,358.3,6675,0)
 ;;=730.00^^31^413^48
 ;;^UTILITY(U,$J,358.3,6675,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,6675,1,4,0)
 ;;=4^730.00
 ;;^UTILITY(U,$J,358.3,6675,1,5,0)
 ;;=5^Osteomyelitis,Acute Unsp
 ;;^UTILITY(U,$J,358.3,6675,2)
 ;;=^272612
 ;;^UTILITY(U,$J,358.3,6676,0)
 ;;=730.10^^31^413^49
 ;;^UTILITY(U,$J,358.3,6676,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,6676,1,4,0)
 ;;=4^730.10
 ;;^UTILITY(U,$J,358.3,6676,1,5,0)
 ;;=5^Osteomyelitis,Chron Unsp