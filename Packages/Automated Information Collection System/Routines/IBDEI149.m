IBDEI149 ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,18641,0)
 ;;=K61.4^^94^911^4
 ;;^UTILITY(U,$J,358.3,18641,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,18641,1,3,0)
 ;;=3^Abscess,Intrasphincteric
 ;;^UTILITY(U,$J,358.3,18641,1,4,0)
 ;;=4^K61.4
 ;;^UTILITY(U,$J,358.3,18641,2)
 ;;=^5008752
 ;;^UTILITY(U,$J,358.3,18642,0)
 ;;=K61.0^^94^911^2
 ;;^UTILITY(U,$J,358.3,18642,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,18642,1,3,0)
 ;;=3^Abscess,Anal
 ;;^UTILITY(U,$J,358.3,18642,1,4,0)
 ;;=4^K61.0
 ;;^UTILITY(U,$J,358.3,18642,2)
 ;;=^5008749
 ;;^UTILITY(U,$J,358.3,18643,0)
 ;;=K61.1^^94^911^6
 ;;^UTILITY(U,$J,358.3,18643,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,18643,1,3,0)
 ;;=3^Abscess,Rectal
 ;;^UTILITY(U,$J,358.3,18643,1,4,0)
 ;;=4^K61.1
 ;;^UTILITY(U,$J,358.3,18643,2)
 ;;=^259588
 ;;^UTILITY(U,$J,358.3,18644,0)
 ;;=K61.2^^94^911^3
 ;;^UTILITY(U,$J,358.3,18644,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,18644,1,3,0)
 ;;=3^Abscess,Anorectal
 ;;^UTILITY(U,$J,358.3,18644,1,4,0)
 ;;=4^K61.2
 ;;^UTILITY(U,$J,358.3,18644,2)
 ;;=^5008750
 ;;^UTILITY(U,$J,358.3,18645,0)
 ;;=K61.3^^94^911^5
 ;;^UTILITY(U,$J,358.3,18645,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,18645,1,3,0)
 ;;=3^Abscess,Ischiorectal
 ;;^UTILITY(U,$J,358.3,18645,1,4,0)
 ;;=4^K61.3
 ;;^UTILITY(U,$J,358.3,18645,2)
 ;;=^5008751
 ;;^UTILITY(U,$J,358.3,18646,0)
 ;;=K50.014^^94^911^22
 ;;^UTILITY(U,$J,358.3,18646,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,18646,1,3,0)
 ;;=3^Crohn's Disease of Small Intestine w/ Abscess
 ;;^UTILITY(U,$J,358.3,18646,1,4,0)
 ;;=4^K50.014
 ;;^UTILITY(U,$J,358.3,18646,2)
 ;;=^5008628
 ;;^UTILITY(U,$J,358.3,18647,0)
 ;;=K50.114^^94^911^21
 ;;^UTILITY(U,$J,358.3,18647,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,18647,1,3,0)
 ;;=3^Crohn's Disease of Large Intestine w/ Abscess
 ;;^UTILITY(U,$J,358.3,18647,1,4,0)
 ;;=4^K50.114
 ;;^UTILITY(U,$J,358.3,18647,2)
 ;;=^5008635
 ;;^UTILITY(U,$J,358.3,18648,0)
 ;;=D12.6^^94^911^7
 ;;^UTILITY(U,$J,358.3,18648,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,18648,1,3,0)
 ;;=3^Adenomatous Polyp of Colon
 ;;^UTILITY(U,$J,358.3,18648,1,4,0)
 ;;=4^D12.6
 ;;^UTILITY(U,$J,358.3,18648,2)
 ;;=^5001969
 ;;^UTILITY(U,$J,358.3,18649,0)
 ;;=K64.9^^94^911^57
 ;;^UTILITY(U,$J,358.3,18649,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,18649,1,3,0)
 ;;=3^Hemorrhoids w/o Complication
 ;;^UTILITY(U,$J,358.3,18649,1,4,0)
 ;;=4^K64.9
 ;;^UTILITY(U,$J,358.3,18649,2)
 ;;=^5008775
 ;;^UTILITY(U,$J,358.3,18650,0)
 ;;=K50.814^^94^911^30
 ;;^UTILITY(U,$J,358.3,18650,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,18650,1,3,0)
 ;;=3^Crohn's Disease,Small/Large Intestine w/ Abscess
 ;;^UTILITY(U,$J,358.3,18650,1,4,0)
 ;;=4^K50.814
 ;;^UTILITY(U,$J,358.3,18650,2)
 ;;=^5008642
 ;;^UTILITY(U,$J,358.3,18651,0)
 ;;=D12.9^^94^911^9
 ;;^UTILITY(U,$J,358.3,18651,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,18651,1,3,0)
 ;;=3^Benign Neop of Anus
 ;;^UTILITY(U,$J,358.3,18651,1,4,0)
 ;;=4^D12.9
 ;;^UTILITY(U,$J,358.3,18651,2)
 ;;=^5001972
 ;;^UTILITY(U,$J,358.3,18652,0)
 ;;=D12.8^^94^911^15
 ;;^UTILITY(U,$J,358.3,18652,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,18652,1,3,0)
 ;;=3^Benign Neop of Rectum
 ;;^UTILITY(U,$J,358.3,18652,1,4,0)
 ;;=4^D12.8
 ;;^UTILITY(U,$J,358.3,18652,2)
 ;;=^5001971
 ;;^UTILITY(U,$J,358.3,18653,0)
 ;;=K92.2^^94^911^49
 ;;^UTILITY(U,$J,358.3,18653,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,18653,1,3,0)
 ;;=3^GI Bleed,Unspec
 ;;^UTILITY(U,$J,358.3,18653,1,4,0)
 ;;=4^K92.2
 ;;^UTILITY(U,$J,358.3,18653,2)
 ;;=^5008915
 ;;^UTILITY(U,$J,358.3,18654,0)
 ;;=K62.5^^94^911^8
 ;;^UTILITY(U,$J,358.3,18654,1,0)
 ;;=^358.31IA^4^2
