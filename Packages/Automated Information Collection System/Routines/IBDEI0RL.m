IBDEI0RL ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,12660,2)
 ;;=^267578
 ;;^UTILITY(U,$J,358.3,12661,0)
 ;;=D10.1^^77^735^11
 ;;^UTILITY(U,$J,358.3,12661,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,12661,1,3,0)
 ;;=3^Benign neoplasm of tongue
 ;;^UTILITY(U,$J,358.3,12661,1,4,0)
 ;;=4^D10.1
 ;;^UTILITY(U,$J,358.3,12661,2)
 ;;=^267579
 ;;^UTILITY(U,$J,358.3,12662,0)
 ;;=D11.0^^77^735^9
 ;;^UTILITY(U,$J,358.3,12662,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,12662,1,3,0)
 ;;=3^Benign neoplasm of parotid gland
 ;;^UTILITY(U,$J,358.3,12662,1,4,0)
 ;;=4^D11.0
 ;;^UTILITY(U,$J,358.3,12662,2)
 ;;=^5001960
 ;;^UTILITY(U,$J,358.3,12663,0)
 ;;=D11.7^^77^735^8
 ;;^UTILITY(U,$J,358.3,12663,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,12663,1,3,0)
 ;;=3^Benign neoplasm of other major salivary glands
 ;;^UTILITY(U,$J,358.3,12663,1,4,0)
 ;;=4^D11.7
 ;;^UTILITY(U,$J,358.3,12663,2)
 ;;=^5001961
 ;;^UTILITY(U,$J,358.3,12664,0)
 ;;=D33.3^^77^735^6
 ;;^UTILITY(U,$J,358.3,12664,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,12664,1,3,0)
 ;;=3^Benign neoplasm of cranial nerves
 ;;^UTILITY(U,$J,358.3,12664,1,4,0)
 ;;=4^D33.3
 ;;^UTILITY(U,$J,358.3,12664,2)
 ;;=^13298
 ;;^UTILITY(U,$J,358.3,12665,0)
 ;;=D34.^^77^735^10
 ;;^UTILITY(U,$J,358.3,12665,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,12665,1,3,0)
 ;;=3^Benign neoplasm of thyroid gland
 ;;^UTILITY(U,$J,358.3,12665,1,4,0)
 ;;=4^D34.
 ;;^UTILITY(U,$J,358.3,12665,2)
 ;;=^5002141
 ;;^UTILITY(U,$J,358.3,12666,0)
 ;;=J34.2^^77^736^11
 ;;^UTILITY(U,$J,358.3,12666,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,12666,1,3,0)
 ;;=3^Deviated nasal septum
 ;;^UTILITY(U,$J,358.3,12666,1,4,0)
 ;;=4^J34.2
 ;;^UTILITY(U,$J,358.3,12666,2)
 ;;=^259087
 ;;^UTILITY(U,$J,358.3,12667,0)
 ;;=J33.0^^77^736^19
 ;;^UTILITY(U,$J,358.3,12667,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,12667,1,3,0)
 ;;=3^Polyp of nasal cavity
 ;;^UTILITY(U,$J,358.3,12667,1,4,0)
 ;;=4^J33.0
 ;;^UTILITY(U,$J,358.3,12667,2)
 ;;=^269880
 ;;^UTILITY(U,$J,358.3,12668,0)
 ;;=J33.8^^77^736^20
 ;;^UTILITY(U,$J,358.3,12668,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,12668,1,3,0)
 ;;=3^Polyp of sinus NEC
 ;;^UTILITY(U,$J,358.3,12668,1,4,0)
 ;;=4^J33.8
 ;;^UTILITY(U,$J,358.3,12668,2)
 ;;=^269884
 ;;^UTILITY(U,$J,358.3,12669,0)
 ;;=J31.0^^77^736^8
 ;;^UTILITY(U,$J,358.3,12669,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,12669,1,3,0)
 ;;=3^Chronic rhinitis
 ;;^UTILITY(U,$J,358.3,12669,1,4,0)
 ;;=4^J31.0
 ;;^UTILITY(U,$J,358.3,12669,2)
 ;;=^24434
 ;;^UTILITY(U,$J,358.3,12670,0)
 ;;=J31.2^^77^736^7
 ;;^UTILITY(U,$J,358.3,12670,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,12670,1,3,0)
 ;;=3^Chronic pharyngitis
 ;;^UTILITY(U,$J,358.3,12670,1,4,0)
 ;;=4^J31.2
 ;;^UTILITY(U,$J,358.3,12670,2)
 ;;=^269886
 ;;^UTILITY(U,$J,358.3,12671,0)
 ;;=J31.1^^77^736^5
 ;;^UTILITY(U,$J,358.3,12671,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,12671,1,3,0)
 ;;=3^Chronic nasopharyngitis
 ;;^UTILITY(U,$J,358.3,12671,1,4,0)
 ;;=4^J31.1
 ;;^UTILITY(U,$J,358.3,12671,2)
 ;;=^269888
 ;;^UTILITY(U,$J,358.3,12672,0)
 ;;=J32.9^^77^736^9
 ;;^UTILITY(U,$J,358.3,12672,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,12672,1,3,0)
 ;;=3^Chronic sinusitis, unspecified
 ;;^UTILITY(U,$J,358.3,12672,1,4,0)
 ;;=4^J32.9
 ;;^UTILITY(U,$J,358.3,12672,2)
 ;;=^5008207
 ;;^UTILITY(U,$J,358.3,12673,0)
 ;;=J32.4^^77^736^6
 ;;^UTILITY(U,$J,358.3,12673,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,12673,1,3,0)
 ;;=3^Chronic pansinusitis
 ;;^UTILITY(U,$J,358.3,12673,1,4,0)
 ;;=4^J32.4
 ;;^UTILITY(U,$J,358.3,12673,2)
 ;;=^5008206
 ;;^UTILITY(U,$J,358.3,12674,0)
 ;;=J35.01^^77^736^10
 ;;^UTILITY(U,$J,358.3,12674,1,0)
 ;;=^358.31IA^4^2
