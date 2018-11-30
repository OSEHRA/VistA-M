RCTCSWL2 ;ALB/PAW-Cross Servicing Worklist ;30-SEP-2015
 ;;4.5;ACCOUNTS RECEIVABLE;**315**;Mar 20, 1995;Build 67
 ;;Per VA Directive 6402, this routine should not be modified.
 ; 
HDR ; -- header code for Expand Screen
 N RCNAM,RCDFN,RCPTNAME,RCPTID,RCBILL,RCBILLEX,RCBDT,RCDOD2,RCX,LIST
 S RCDFN=$P(ECNT,U,1),RCPTNAME=$P(ECNT,U,2),RCPTID=$P(ECNT,U,3),RCBILL=$P(ECNT,U,4),RCBILLEX=$P(ECNT,U,6)
 S RCX=$P(FILTERS(0),U)
 S VALMHDR(1)=$S(RCX=1:"Bankruptcy",RCX=2:"Deaths",RCX=3:"Uncollectible",RCX=4:"Paymt. in Full",RCX=5:"Satisfied PA",RCX=6:"Compromise",RCX=7:"All Returns",1:"")
 S VALM("TITLE")="Expanded Bill Screen"
 D
 . I RCX[7 S VALMHDR(1)="Reconciliation "_VALMHDR(1)_" Report" Q
 . ;I RCX'[7 S VALMHDR(1)="Reconciliation Reports Selected: "_$P(RCX,",",$TR(1,"Bankruptcy"))_", "_$TR(2,"Deaths")_", "_$TR(3,"Uncollectible")_", "_$TR(4,"Payment in Full")_", "_$TR(5,"Satisfied PA")_", "_$TR(6,"Compromise")
 . N X S X="" F I=1:1:6 I RCX[I S X=X_$S(X="":"",1:", "),X=X_$S(I=1:"Bankruptcy",I=2:"Deaths",I=3:"Uncollectbl.",I=4:"Pmt. In Full",I=5:"Satisfied PA",I=6:"Compromise",1:"")
 . S VALMHDR(1)="Types: "_X
 S VALMHDR(2)="Bill Number: "_RCBILLEX
 Q
 ;
INIT ; -- init variables and list array
 ; input - ^TMP("RCTCSWE",$J)=RCDFN^RCNAME
 ; output - Expanded worklist screen
 I '$D(^TMP("RCTCSWE",$J)) Q
 N ECNT,RCDFN,RCDFN2,RCPTNAME,RCPTID,RCBILL,RCBILLEX,VALMBCK
 S ECNT=$G(^TMP("RCTCSWE",$J))
 S RCDFN=$P(ECNT,U,1),RCPTNAME=$P(ECNT,U,2),RCPTID=$P(ECNT,U,3),RCBILL=$P(ECNT,U,4),RCBILLEX=$P(ECNT,U,5)
 S RCDFN2=RCDFN
 I RCDFN2="" S RCDFN2=" "
 D BLD
 D BLDEXP
 S VALMBCK="R"
 Q
 ;
BLD ; build data to display
 N CNT,RCAMTPD,RCAMTRF,RCDEBT,RCBDT,RCDTRET,RCCORDT,RCDOD,RCFEE,RCRSN,RCDEBT,RCDIV,RCDIVNM,RCSTNUM,RC18
 N CBEGDT,RCCOMP,RCDDT,RCBEGDT
 S CNT=0
 S RCDEBT=$E($$GET1^DIQ(430,RCBILL,9),1,16)
 S RCDIV=$P(RCBILLEX,"-")
 I RCDIV["y" S RCDIV=$P(RCDIV,"y",2)
 S RCDIVNM=""
 S RCDIVNM=$O(^DIC(4,"D",RCDIV,RCDIVNM))
 I $G(RCDIVNM)'="" S RCDIVNM=$P(^DIC(4,RCDIVNM,0),U)
 I RCBILLEX'["-" S RCDIV=""
 S RCRSN=+$P($G(^PRCA(430,RCBILL,30)),U,2)
 I RCRSN'="" S RCRSN=$P(^PRCA(430.5,RCRSN,0),U,2)
 S RCAMTRF=$J($P($G(^PRCA(430,RCBILL,16)),U,9),10,2)
 S RCAMTPD=RCAMTRF-$P($G(^PRCA(430,RCBILL,16)),U,10),RCAMTPD=$J(RCAMTPD,10,2)
 S RCFEE=$J($P($G(^PRCA(430,RCBILL,7)),U,4),10,2)
 S RCCORDT=$$FMTE^XLFDT($P($G(^PRCA(430,RCBILL,15)),U,3),"5DZ")
 S RCBEGDT=$$FMTE^XLFDT($P($G(^PRCA(430,RCBILL,0)),U,10),"5DZ")
 S RCDTRET=$$FMTE^XLFDT($P($G(^PRCA(430,RCBILL,30)),U),"5DZ")
 S CNT=CNT+1,^TMP("RCTCSWE",$J,RCNAME,RCDFN2,CNT)=" Patient          : "_RCPTNAME_" (ID: "_RCPTID_")"
 S CNT=CNT+1,^TMP("RCTCSWE",$J,RCNAME,RCDFN2,CNT)=" Debtor           : "_RCDEBT
 S CNT=CNT+1,^TMP("RCTCSWE",$J,RCNAME,RCDFN2,CNT)=" Division         : "_$G(RCDIV)_" - "_$G(RCDIVNM)
 S CNT=CNT+1,^TMP("RCTCSWE",$J,RCNAME,RCDFN2,CNT)=" Return Resn Code : "_$G(RCRSN)
 S CNT=CNT+1,^TMP("RCTCSWE",$J,RCNAME,RCDFN2,CNT)=" Dt Bill Created  : "_$G(RCBEGDT)
 S CNT=CNT+1,^TMP("RCTCSWE",$J,RCNAME,RCDFN2,CNT)=" Date Corr Rep/Rec: "_$G(RCCORDT)
 S CNT=CNT+1,^TMP("RCTCSWE",$J,RCNAME,RCDFN2,CNT)=" Date Returned    : "_$G(RCDTRET)
 S RCBDT=$$FMTE^XLFDT($P($G(^PRCA(430,RCBILL,30)),U,6),"5DZ")  ;Get Bankruptcy Date
 S RCDDT=$$FMTE^XLFDT($P($G(^PRCA(430,RCBILL,30)),U,8),"5DZ")  ;Get Dissolution Date
 S CNT=CNT+1,^TMP("RCTCSWE",$J,RCNAME,RCDFN2,CNT)=" Bankruptcy Date  : "_RCBDT
 S CNT=CNT+1,^TMP("RCTCSWE",$J,RCNAME,RCDFN2,CNT)=" Dt of Dissolution: "_RCDDT
 S RCDOD=$$FMTE^XLFDT($P($G(^PRCA(430,RCBILL,30)),U,7),"5DZ")
 S CNT=CNT+1,^TMP("RCTCSWE",$J,RCNAME,RCDFN2,CNT)=" Death Notice Rcvd: "_RCDOD
 S CNT=CNT+1,^TMP("RCTCSWE",$J,RCNAME,RCDFN2,CNT)=" Amount Referred  : "_$G(RCAMTRF)
 S CNT=CNT+1,^TMP("RCTCSWE",$J,RCNAME,RCDFN2,CNT)=" Amount Paid      : "_$G(RCAMTPD)
 S CNT=CNT+1,^TMP("RCTCSWE",$J,RCNAME,RCDFN2,CNT)=" Fees             : "_$G(RCFEE)
 S RCCOMP=$J($P($G(^PRCA(430,RCBILL,30)),U,4),10,2)
 S CNT=CNT+1,^TMP("RCTCSWE",$J,RCNAME,RCDFN2,CNT)=" Compromise Amount: "_RCCOMP
 Q
 ;
BLDEXP ; Build expand screen 
 D FULL^VALM1
 N VALMCNT,RCXX,LINE
 S VALMCNT=0
 S RCXX=""
 F  S RCXX=$O(^TMP("RCTCSWE",$J,RCNAME,RCDFN2,RCXX)) Q:+RCXX=0  D
 . S LINE=^TMP("RCTCSWE",$J,RCNAME,RCDFN2,RCXX)
 . S VALMCNT=VALMCNT+1
 . D SET^VALM10(VALMCNT,LINE,"")
 S VALMCNT=VALMCNT+1
 Q
 ; 
HELP ; -- help code
 N X
 S X="?" D DISP^XQORM1 W !!
 Q
 ;
EXIT ; -- exit code
 K ^TMP("RCTCSWE",$J)
 D ^%ZISC
 S VALMBCK="R" Q
 Q
