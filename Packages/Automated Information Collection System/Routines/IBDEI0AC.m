IBDEI0AC ; ; 06-AUG-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,4451,0)
 ;;=530.10^^23^230^14
 ;;^UTILITY(U,$J,358.3,4451,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,4451,1,4,0)
 ;;=4^530.10
 ;;^UTILITY(U,$J,358.3,4451,1,5,0)
 ;;=5^Esophagitis, Unsp.
 ;;^UTILITY(U,$J,358.3,4451,2)
 ;;=^295809
 ;;^UTILITY(U,$J,358.3,4452,0)
 ;;=571.8^^23^230^15
 ;;^UTILITY(U,$J,358.3,4452,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,4452,1,4,0)
 ;;=4^571.8
 ;;^UTILITY(U,$J,358.3,4452,1,5,0)
 ;;=5^Fatty Liver
 ;;^UTILITY(U,$J,358.3,4452,2)
 ;;=^87404
 ;;^UTILITY(U,$J,358.3,4453,0)
 ;;=792.1^^23^230^20
 ;;^UTILITY(U,$J,358.3,4453,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,4453,1,4,0)
 ;;=4^792.1
 ;;^UTILITY(U,$J,358.3,4453,1,5,0)
 ;;=5^Heme+Stool
 ;;^UTILITY(U,$J,358.3,4453,2)
 ;;=^273412
 ;;^UTILITY(U,$J,358.3,4454,0)
 ;;=578.9^^23^230^16
 ;;^UTILITY(U,$J,358.3,4454,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,4454,1,4,0)
 ;;=4^578.9
 ;;^UTILITY(U,$J,358.3,4454,1,5,0)
 ;;=5^GI Bleed
 ;;^UTILITY(U,$J,358.3,4454,2)
 ;;=GI Bleed^49525
 ;;^UTILITY(U,$J,358.3,4455,0)
 ;;=535.50^^23^230^19
 ;;^UTILITY(U,$J,358.3,4455,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,4455,1,4,0)
 ;;=4^535.50
 ;;^UTILITY(U,$J,358.3,4455,1,5,0)
 ;;=5^Gastritis
 ;;^UTILITY(U,$J,358.3,4455,2)
 ;;=^270181
 ;;^UTILITY(U,$J,358.3,4456,0)
 ;;=789.1^^23^230^23
 ;;^UTILITY(U,$J,358.3,4456,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,4456,1,4,0)
 ;;=4^789.1
 ;;^UTILITY(U,$J,358.3,4456,1,5,0)
 ;;=5^Hepatomegaly
 ;;^UTILITY(U,$J,358.3,4456,2)
 ;;=^56494
 ;;^UTILITY(U,$J,358.3,4457,0)
 ;;=577.1^^23^230^27
 ;;^UTILITY(U,$J,358.3,4457,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,4457,1,4,0)
 ;;=4^577.1
 ;;^UTILITY(U,$J,358.3,4457,1,5,0)
 ;;=5^Pancreatitis, Chronic
 ;;^UTILITY(U,$J,358.3,4457,2)
 ;;=^259100
 ;;^UTILITY(U,$J,358.3,4458,0)
 ;;=789.2^^23^230^30
 ;;^UTILITY(U,$J,358.3,4458,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,4458,1,4,0)
 ;;=4^789.2
 ;;^UTILITY(U,$J,358.3,4458,1,5,0)
 ;;=5^Splenomegaly
 ;;^UTILITY(U,$J,358.3,4458,2)
 ;;=^113452
 ;;^UTILITY(U,$J,358.3,4459,0)
 ;;=789.59^^23^230^6
 ;;^UTILITY(U,$J,358.3,4459,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,4459,1,4,0)
 ;;=4^789.59
 ;;^UTILITY(U,$J,358.3,4459,1,5,0)
 ;;=5^Ascites
 ;;^UTILITY(U,$J,358.3,4459,2)
 ;;=^335282
 ;;^UTILITY(U,$J,358.3,4460,0)
 ;;=790.6^^23^230^5
 ;;^UTILITY(U,$J,358.3,4460,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,4460,1,4,0)
 ;;=4^790.6
 ;;^UTILITY(U,$J,358.3,4460,1,5,0)
 ;;=5^Abnormal LFT's
 ;;^UTILITY(U,$J,358.3,4460,2)
 ;;=Abnormal LFT's^87228
 ;;^UTILITY(U,$J,358.3,4461,0)
 ;;=789.00^^23^230^2
 ;;^UTILITY(U,$J,358.3,4461,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,4461,1,4,0)
 ;;=4^789.00
 ;;^UTILITY(U,$J,358.3,4461,1,5,0)
 ;;=5^Abdominal Pain
 ;;^UTILITY(U,$J,358.3,4461,2)
 ;;=^303317
 ;;^UTILITY(U,$J,358.3,4462,0)
 ;;=789.60^^23^230^3
 ;;^UTILITY(U,$J,358.3,4462,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,4462,1,4,0)
 ;;=4^789.60
 ;;^UTILITY(U,$J,358.3,4462,1,5,0)
 ;;=5^Abdominal Tenderness
 ;;^UTILITY(U,$J,358.3,4462,2)
 ;;=^303342
 ;;^UTILITY(U,$J,358.3,4463,0)
 ;;=562.13^^23^230^10
 ;;^UTILITY(U,$J,358.3,4463,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,4463,1,4,0)
 ;;=4^562.13
 ;;^UTILITY(U,$J,358.3,4463,1,5,0)
 ;;=5^Diverticulitis w/ Hemorrhage
 ;;^UTILITY(U,$J,358.3,4463,2)
 ;;=^270276
 ;;^UTILITY(U,$J,358.3,4464,0)
 ;;=562.12^^23^230^12
 ;;^UTILITY(U,$J,358.3,4464,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,4464,1,4,0)
 ;;=4^562.12
 ;;^UTILITY(U,$J,358.3,4464,1,5,0)
 ;;=5^Diverticulosis w/ Hemorrhage
 ;;^UTILITY(U,$J,358.3,4464,2)
 ;;=^270275
 ;;^UTILITY(U,$J,358.3,4465,0)
 ;;=531.90^^23^230^18