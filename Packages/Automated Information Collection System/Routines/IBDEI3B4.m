IBDEI3B4 ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,55569,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,55569,1,3,0)
 ;;=3^Mental Disorder d/t Known Physiological Condition,Unspec
 ;;^UTILITY(U,$J,358.3,55569,1,4,0)
 ;;=4^F09.
 ;;^UTILITY(U,$J,358.3,55569,2)
 ;;=^5003067
 ;;^UTILITY(U,$J,358.3,55570,0)
 ;;=F07.9^^256^2782^33
 ;;^UTILITY(U,$J,358.3,55570,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,55570,1,3,0)
 ;;=3^Personality & Behavrl Disorder d/t Known Physiol Cond,Unspec
 ;;^UTILITY(U,$J,358.3,55570,1,4,0)
 ;;=4^F07.9
 ;;^UTILITY(U,$J,358.3,55570,2)
 ;;=^5003066
 ;;^UTILITY(U,$J,358.3,55571,0)
 ;;=G30.0^^256^2782^1
 ;;^UTILITY(U,$J,358.3,55571,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,55571,1,3,0)
 ;;=3^Alzheimer's Disease w/ Early Onset
 ;;^UTILITY(U,$J,358.3,55571,1,4,0)
 ;;=4^G30.0
 ;;^UTILITY(U,$J,358.3,55571,2)
 ;;=^5003805
 ;;^UTILITY(U,$J,358.3,55572,0)
 ;;=G30.8^^256^2782^3
 ;;^UTILITY(U,$J,358.3,55572,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,55572,1,3,0)
 ;;=3^Alzheimer's Disease,Other
 ;;^UTILITY(U,$J,358.3,55572,1,4,0)
 ;;=4^G30.8
 ;;^UTILITY(U,$J,358.3,55572,2)
 ;;=^5003807
 ;;^UTILITY(U,$J,358.3,55573,0)
 ;;=G30.1^^256^2782^2
 ;;^UTILITY(U,$J,358.3,55573,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,55573,1,3,0)
 ;;=3^Alzheimer's Disease w/ Late Onset
 ;;^UTILITY(U,$J,358.3,55573,1,4,0)
 ;;=4^G30.1
 ;;^UTILITY(U,$J,358.3,55573,2)
 ;;=^5003806
 ;;^UTILITY(U,$J,358.3,55574,0)
 ;;=G30.9^^256^2782^4
 ;;^UTILITY(U,$J,358.3,55574,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,55574,1,3,0)
 ;;=3^Alzheimer's Disease,Unspec
 ;;^UTILITY(U,$J,358.3,55574,1,4,0)
 ;;=4^G30.9
 ;;^UTILITY(U,$J,358.3,55574,2)
 ;;=^5003808
 ;;^UTILITY(U,$J,358.3,55575,0)
 ;;=G21.4^^256^2782^40
 ;;^UTILITY(U,$J,358.3,55575,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,55575,1,3,0)
 ;;=3^Vascular Parkinsonism
 ;;^UTILITY(U,$J,358.3,55575,1,4,0)
 ;;=4^G21.4
 ;;^UTILITY(U,$J,358.3,55575,2)
 ;;=^5003776
 ;;^UTILITY(U,$J,358.3,55576,0)
 ;;=G20.^^256^2782^32
 ;;^UTILITY(U,$J,358.3,55576,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,55576,1,3,0)
 ;;=3^Parkinson's Disease
 ;;^UTILITY(U,$J,358.3,55576,1,4,0)
 ;;=4^G20.
 ;;^UTILITY(U,$J,358.3,55576,2)
 ;;=^5003770
 ;;^UTILITY(U,$J,358.3,55577,0)
 ;;=G25.0^^256^2782^15
 ;;^UTILITY(U,$J,358.3,55577,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,55577,1,3,0)
 ;;=3^Essential Tremor
 ;;^UTILITY(U,$J,358.3,55577,1,4,0)
 ;;=4^G25.0
 ;;^UTILITY(U,$J,358.3,55577,2)
 ;;=^5003791
 ;;^UTILITY(U,$J,358.3,55578,0)
 ;;=G25.2^^256^2782^39
 ;;^UTILITY(U,$J,358.3,55578,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,55578,1,3,0)
 ;;=3^Tremor,Other Spec Forms
 ;;^UTILITY(U,$J,358.3,55578,1,4,0)
 ;;=4^G25.2
 ;;^UTILITY(U,$J,358.3,55578,2)
 ;;=^5003793
 ;;^UTILITY(U,$J,358.3,55579,0)
 ;;=G25.1^^256^2782^38
 ;;^UTILITY(U,$J,358.3,55579,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,55579,1,3,0)
 ;;=3^Tremor,Drug-Induced
 ;;^UTILITY(U,$J,358.3,55579,1,4,0)
 ;;=4^G25.1
 ;;^UTILITY(U,$J,358.3,55579,2)
 ;;=^5003792
 ;;^UTILITY(U,$J,358.3,55580,0)
 ;;=G25.81^^256^2782^36
 ;;^UTILITY(U,$J,358.3,55580,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,55580,1,3,0)
 ;;=3^Restless Legs Syndrome
 ;;^UTILITY(U,$J,358.3,55580,1,4,0)
 ;;=4^G25.81
 ;;^UTILITY(U,$J,358.3,55580,2)
 ;;=^5003801
 ;;^UTILITY(U,$J,358.3,55581,0)
 ;;=G35.^^256^2782^29
 ;;^UTILITY(U,$J,358.3,55581,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,55581,1,3,0)
 ;;=3^Multiple Sclerosis
 ;;^UTILITY(U,$J,358.3,55581,1,4,0)
 ;;=4^G35.
 ;;^UTILITY(U,$J,358.3,55581,2)
 ;;=^79761
 ;;^UTILITY(U,$J,358.3,55582,0)
 ;;=G40.901^^256^2782^13
 ;;^UTILITY(U,$J,358.3,55582,1,0)
 ;;=^358.31IA^4^2
