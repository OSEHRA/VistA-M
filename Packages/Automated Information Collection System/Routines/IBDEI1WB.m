IBDEI1WB ; ; 06-AUG-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,33338,0)
 ;;=E88.01^^182^2002^4
 ;;^UTILITY(U,$J,358.3,33338,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,33338,1,3,0)
 ;;=3^Apha-1 Antitrypsin Deficiency
 ;;^UTILITY(U,$J,358.3,33338,1,4,0)
 ;;=4^E88.01
 ;;^UTILITY(U,$J,358.3,33338,2)
 ;;=^331442
 ;;^UTILITY(U,$J,358.3,33339,0)
 ;;=J09.X1^^182^2002^26
 ;;^UTILITY(U,$J,358.3,33339,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,33339,1,3,0)
 ;;=3^Influenza d/t Indent Novel Influenza A Virus w/ Pneumonia
 ;;^UTILITY(U,$J,358.3,33339,1,4,0)
 ;;=4^J09.X1
 ;;^UTILITY(U,$J,358.3,33339,2)
 ;;=^5008144
 ;;^UTILITY(U,$J,358.3,33340,0)
 ;;=J09.X2^^182^2002^27
 ;;^UTILITY(U,$J,358.3,33340,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,33340,1,3,0)
 ;;=3^Influenza d/t Indent Novel Influenza A Virus w/ Resp Manifest
 ;;^UTILITY(U,$J,358.3,33340,1,4,0)
 ;;=4^J09.X2
 ;;^UTILITY(U,$J,358.3,33340,2)
 ;;=^5008145
 ;;^UTILITY(U,$J,358.3,33341,0)
 ;;=J09.X3^^182^2002^28
 ;;^UTILITY(U,$J,358.3,33341,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,33341,1,3,0)
 ;;=3^Influenza d/t Indent Novel Influenza A Virus w/ GI Manifest
 ;;^UTILITY(U,$J,358.3,33341,1,4,0)
 ;;=4^J09.X3
 ;;^UTILITY(U,$J,358.3,33341,2)
 ;;=^5008146
 ;;^UTILITY(U,$J,358.3,33342,0)
 ;;=J09.X9^^182^2002^29
 ;;^UTILITY(U,$J,358.3,33342,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,33342,1,3,0)
 ;;=3^Influenza d/t Indent Novel Influenza A Virus w/ Oth Manifest
 ;;^UTILITY(U,$J,358.3,33342,1,4,0)
 ;;=4^J09.X9
 ;;^UTILITY(U,$J,358.3,33342,2)
 ;;=^5008147
 ;;^UTILITY(U,$J,358.3,33343,0)
 ;;=J44.9^^182^2002^15
 ;;^UTILITY(U,$J,358.3,33343,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,33343,1,3,0)
 ;;=3^COPD,Unspec
 ;;^UTILITY(U,$J,358.3,33343,1,4,0)
 ;;=4^J44.9
 ;;^UTILITY(U,$J,358.3,33343,2)
 ;;=^5008241
 ;;^UTILITY(U,$J,358.3,33344,0)
 ;;=J44.1^^182^2002^14
 ;;^UTILITY(U,$J,358.3,33344,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,33344,1,3,0)
 ;;=3^COPD w/ Acute Exacerbation
 ;;^UTILITY(U,$J,358.3,33344,1,4,0)
 ;;=4^J44.1
 ;;^UTILITY(U,$J,358.3,33344,2)
 ;;=^5008240
 ;;^UTILITY(U,$J,358.3,33345,0)
 ;;=J42.^^182^2002^12
 ;;^UTILITY(U,$J,358.3,33345,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,33345,1,3,0)
 ;;=3^Bronchitis,Unspec Chronic
 ;;^UTILITY(U,$J,358.3,33345,1,4,0)
 ;;=4^J42.
 ;;^UTILITY(U,$J,358.3,33345,2)
 ;;=^5008234
 ;;^UTILITY(U,$J,358.3,33346,0)
 ;;=J43.9^^182^2002^23
 ;;^UTILITY(U,$J,358.3,33346,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,33346,1,3,0)
 ;;=3^Emphysema,Unspec
 ;;^UTILITY(U,$J,358.3,33346,1,4,0)
 ;;=4^J43.9
 ;;^UTILITY(U,$J,358.3,33346,2)
 ;;=^5008238
 ;;^UTILITY(U,$J,358.3,33347,0)
 ;;=J43.0^^182^2002^31
 ;;^UTILITY(U,$J,358.3,33347,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,33347,1,3,0)
 ;;=3^MacLeod's Syndrome
 ;;^UTILITY(U,$J,358.3,33347,1,4,0)
 ;;=4^J43.0
 ;;^UTILITY(U,$J,358.3,33347,2)
 ;;=^5008235
 ;;^UTILITY(U,$J,358.3,33348,0)
 ;;=J43.1^^182^2002^22
 ;;^UTILITY(U,$J,358.3,33348,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,33348,1,3,0)
 ;;=3^Emphysema,Panlobular
 ;;^UTILITY(U,$J,358.3,33348,1,4,0)
 ;;=4^J43.1
 ;;^UTILITY(U,$J,358.3,33348,2)
 ;;=^5008236
 ;;^UTILITY(U,$J,358.3,33349,0)
 ;;=J43.2^^182^2002^20
 ;;^UTILITY(U,$J,358.3,33349,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,33349,1,3,0)
 ;;=3^Emphysema,Centrilobular
 ;;^UTILITY(U,$J,358.3,33349,1,4,0)
 ;;=4^J43.2
 ;;^UTILITY(U,$J,358.3,33349,2)
 ;;=^5008237
 ;;^UTILITY(U,$J,358.3,33350,0)
 ;;=J43.8^^182^2002^21
 ;;^UTILITY(U,$J,358.3,33350,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,33350,1,3,0)
 ;;=3^Emphysema,Other
 ;;^UTILITY(U,$J,358.3,33350,1,4,0)
 ;;=4^J43.8
 ;;^UTILITY(U,$J,358.3,33350,2)
 ;;=^87569