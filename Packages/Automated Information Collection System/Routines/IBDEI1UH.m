IBDEI1UH ; ; 06-AUG-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,32483,0)
 ;;=K58.0^^182^1987^64
 ;;^UTILITY(U,$J,358.3,32483,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,32483,1,3,0)
 ;;=3^Irritable Bowel Syndrome w/ Diarrhea
 ;;^UTILITY(U,$J,358.3,32483,1,4,0)
 ;;=4^K58.0
 ;;^UTILITY(U,$J,358.3,32483,2)
 ;;=^5008739
 ;;^UTILITY(U,$J,358.3,32484,0)
 ;;=K59.1^^182^1987^29
 ;;^UTILITY(U,$J,358.3,32484,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,32484,1,3,0)
 ;;=3^Diarrhea,Functional
 ;;^UTILITY(U,$J,358.3,32484,1,4,0)
 ;;=4^K59.1
 ;;^UTILITY(U,$J,358.3,32484,2)
 ;;=^270281
 ;;^UTILITY(U,$J,358.3,32485,0)
 ;;=K61.4^^182^1987^4
 ;;^UTILITY(U,$J,358.3,32485,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,32485,1,3,0)
 ;;=3^Abscess,Intrasphincteric
 ;;^UTILITY(U,$J,358.3,32485,1,4,0)
 ;;=4^K61.4
 ;;^UTILITY(U,$J,358.3,32485,2)
 ;;=^5008752
 ;;^UTILITY(U,$J,358.3,32486,0)
 ;;=K61.0^^182^1987^2
 ;;^UTILITY(U,$J,358.3,32486,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,32486,1,3,0)
 ;;=3^Abscess,Anal
 ;;^UTILITY(U,$J,358.3,32486,1,4,0)
 ;;=4^K61.0
 ;;^UTILITY(U,$J,358.3,32486,2)
 ;;=^5008749
 ;;^UTILITY(U,$J,358.3,32487,0)
 ;;=K61.1^^182^1987^6
 ;;^UTILITY(U,$J,358.3,32487,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,32487,1,3,0)
 ;;=3^Abscess,Rectal
 ;;^UTILITY(U,$J,358.3,32487,1,4,0)
 ;;=4^K61.1
 ;;^UTILITY(U,$J,358.3,32487,2)
 ;;=^259588
 ;;^UTILITY(U,$J,358.3,32488,0)
 ;;=K61.2^^182^1987^3
 ;;^UTILITY(U,$J,358.3,32488,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,32488,1,3,0)
 ;;=3^Abscess,Anorectal
 ;;^UTILITY(U,$J,358.3,32488,1,4,0)
 ;;=4^K61.2
 ;;^UTILITY(U,$J,358.3,32488,2)
 ;;=^5008750
 ;;^UTILITY(U,$J,358.3,32489,0)
 ;;=K61.3^^182^1987^5
 ;;^UTILITY(U,$J,358.3,32489,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,32489,1,3,0)
 ;;=3^Abscess,Ischiorectal
 ;;^UTILITY(U,$J,358.3,32489,1,4,0)
 ;;=4^K61.3
 ;;^UTILITY(U,$J,358.3,32489,2)
 ;;=^5008751
 ;;^UTILITY(U,$J,358.3,32490,0)
 ;;=K50.014^^182^1987^19
 ;;^UTILITY(U,$J,358.3,32490,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,32490,1,3,0)
 ;;=3^Crohn's Disease of Small Intestine w/ Abscess
 ;;^UTILITY(U,$J,358.3,32490,1,4,0)
 ;;=4^K50.014
 ;;^UTILITY(U,$J,358.3,32490,2)
 ;;=^5008628
 ;;^UTILITY(U,$J,358.3,32491,0)
 ;;=K50.114^^182^1987^18
 ;;^UTILITY(U,$J,358.3,32491,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,32491,1,3,0)
 ;;=3^Crohn's Disease of Large Intestine w/ Abscess
 ;;^UTILITY(U,$J,358.3,32491,1,4,0)
 ;;=4^K50.114
 ;;^UTILITY(U,$J,358.3,32491,2)
 ;;=^5008635
 ;;^UTILITY(U,$J,358.3,32492,0)
 ;;=D12.6^^182^1987^7
 ;;^UTILITY(U,$J,358.3,32492,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,32492,1,3,0)
 ;;=3^Adenomatous Polyp of Colon
 ;;^UTILITY(U,$J,358.3,32492,1,4,0)
 ;;=4^D12.6
 ;;^UTILITY(U,$J,358.3,32492,2)
 ;;=^5001969
 ;;^UTILITY(U,$J,358.3,32493,0)
 ;;=K64.9^^182^1987^52
 ;;^UTILITY(U,$J,358.3,32493,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,32493,1,3,0)
 ;;=3^Hemorrhoids w/o Complication
 ;;^UTILITY(U,$J,358.3,32493,1,4,0)
 ;;=4^K64.9
 ;;^UTILITY(U,$J,358.3,32493,2)
 ;;=^5008775
 ;;^UTILITY(U,$J,358.3,32494,0)
 ;;=K50.814^^182^1987^27
 ;;^UTILITY(U,$J,358.3,32494,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,32494,1,3,0)
 ;;=3^Crohn's Disease,Small/Large Intestine w/ Abscess
 ;;^UTILITY(U,$J,358.3,32494,1,4,0)
 ;;=4^K50.814
 ;;^UTILITY(U,$J,358.3,32494,2)
 ;;=^5008642
 ;;^UTILITY(U,$J,358.3,32495,0)
 ;;=A54.00^^182^1988^43
 ;;^UTILITY(U,$J,358.3,32495,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,32495,1,3,0)
 ;;=3^Gonococcal Infection Lower Genitourinary Tract,Unspec
 ;;^UTILITY(U,$J,358.3,32495,1,4,0)
 ;;=4^A54.00
 ;;^UTILITY(U,$J,358.3,32495,2)
 ;;=^5000311
 ;;^UTILITY(U,$J,358.3,32496,0)
 ;;=A54.09^^182^1988^44