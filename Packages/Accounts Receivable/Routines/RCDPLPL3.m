RCDPLPL3 ;WISC/RFJ - link payments listmanager options (link payment) ;1 Jun 00
 ;;4.5;Accounts Receivable;**153,304,301,321,332**;Mar 20, 1995;Build 40
 ;;Per VA Directive 6402, this routine should not be modified.
 Q
 ;
 ;
LINKPAY ;  link a payment to an account
 N DA,DIR,DIRUT,DIROUT,DTOUT,DUOUT,RCEEOB,X,Y ; PRCA*4.5*321 - added RCEEOB
 ;
 D FULL^VALM1
 S VALMBCK="R"
 ;
 W !!,"This option will allow the account to be entered for an unapplied"
 W !,"payment transaction selected from the above list.  If the selected"
 W !,"receipt has been previously processed, the selected account in the"
 W !,"accounts receivable package will be updated with the payment.",!
 N INDEX,RCDPFLAG,RCERROR,RCGECSCR,RCPAY,RCRECTDA,RCSTATUS,RCTRANDA,RCDCHKSW,HRCDCKSW,RCDPTYPE
 S INDEX=$$SELPAY^RCDPLPL1 I 'INDEX Q
 S RCPAY=$G(^TMP("RCDPLPLM",$J,"IDX",INDEX,INDEX))
 S RCRECTDA=+$P(RCPAY,"^"),RCTRANDA=+$P(RCPAY,"^",2)
 ;
 I '$$LOCKREC^RCDPRPLU(RCRECTDA) Q
 S RCDPTYPE=$P(^RCY(344,RCRECTDA,1,RCTRANDA,0),"^",19)
 ;
 ;  check to see if the cr document has been sent for the receipt
 S RCGECSCR=$P($G(^RCY(344,RCRECTDA,2)),"^")
 ;  code sheet already sent once, this is a retransmission, check it
 I RCGECSCR'="" D
 .   S RCSTATUS=$$STATUS^GECSSGET(RCGECSCR)
 .   W !!,"This receipt has been processed to FMS with cash receipt document"
 .   W !,$TR(RCGECSCR," "),".  The current status for this document in the"
 .   W !,"Generic Code Sheet Stack file is ",RCSTATUS,"."
 .   ;
 .   ;  okay to continue if status is Error, Rejected, or not defined (-1)
 .   I $E(RCSTATUS)="E"!($E(RCSTATUS)="R")!(RCSTATUS=-1) Q
 .   ;  okay to continue if status is Accepted
 .   I $E(RCSTATUS)="A" Q
 .   ;  okay to continue if document is transmitted for 2 days
 .   I $E(RCSTATUS)="T",$$FMDIFF^XLFDT(DT,$P(^RCY(344,RCRECTDA,0),"^",8))>1 Q
 .   ;
 .   W !!,"You cannot link the payment to an account until the FMS cash receipt"
 .   W !,"document is either Accepted or Rejected by FMS."
 .   W !,"  1.  If the FMS cash receipt is Accepted by FMS, you will need to"
 .   W !,"      remove the payment from the station's suspense account online"
 .   W !,"      in FMS."
 .   W !,"  2.  If the FMS cash receipt document is rejected by FMS, you can"
 .   W !,"      use the option Process Receipt under the Receipt Processing"
 .   W !,"      listmanager screen to regenerate the document.  The payment"
 .   W !,"      has not been deposited in the station's suspense account by"
 .   W !,"      FMS since the cash receipt document rejected.",!
 .   S VALMSG="Try linking this payment again tomorrow."
 .   D WRITE^RCDPRPLU(VALMSG)
 .   S RCDPFLAG=1
 I $G(RCDPFLAG) D QUIT Q
 ;
 ;  show payment transaction
 W !!,"The current payment transaction:",?40,"RECEIPT: ",$P(^RCY(344,RCRECTDA,0),"^")
 W !,"--------------------------------"
 D SHOWPAY(RCRECTDA,RCTRANDA)
 ;
 ;  transaction has account entered
 I $P(^RCY(344,RCRECTDA,1,RCTRANDA,0),"^",3) D  Q
 .   S VALMSG="An account has been assigned to this payment."
 .   D QUIT
 ;
 ;  transaction is cancelled, cannot edit
 I '$P(^RCY(344,RCRECTDA,1,RCTRANDA,0),"^",4),$P($G(^RCY(344,RCRECTDA,1,RCTRANDA,1)),"^")'="" D  Q
 .   S VALMSG="Payment Transaction "_RCTRANDA_" is CANCELLED."
 .   D WRITE^RCDPRPLU(VALMSG)
 .   D QUIT
 ;
 ;PRCA*4.5*304
 ; Will this link payment link to multiple bills
 ; Note:  some of the code and logic below is also in tag PROCESS^RCDPLPL4.  
 ;        If changes in logic are made below, please review this tag as well.
 ;    
 S DIR(0)="YO",DIR("B")="NO"
 S DIR("A")="  Will this transaction be linked to multiple claims (Y/N)"
 D ^DIR
 I $G(DTOUT)!($G(DUOUT)) D QUIT Q
 I +Y D MULTIPLE^RCDPLPL4(RCRECTDA,RCTRANDA,RCGECSCR,$G(RCSTATUS)) D QUIT Q
 ;end PRCA*4.5*304
 ;
 W !!,"Editing Payment: ",RCTRANDA
DBTRBIL S RCDCHKSW=1,HRCDCKSW=0 D EDITACCT^RCDPURET(RCRECTDA,RCTRANDA) I RCDCHKSW=0 G DBTRBIL   ;prca*4.5*301
 W !
 ;  account not entered
 I '$P(^RCY(344,RCRECTDA,1,RCTRANDA,0),"^",3) D  Q
 .   S VALMSG="Account was not linked."
 .   D WRITE^RCDPRPLU(VALMSG)
 .   D QUIT
 ;
 ;  show payment transaction
 W !,"The NEW payment transaction:",?40,"RECEIPT: ",$P(^RCY(344,RCRECTDA,0),"^")
 W !,"-----------------------------"
 D SHOWPAY(RCRECTDA,RCTRANDA)
 ;
 I $$ASKACCT()'=1 D  Q
 .   D DELEACCT^RCDPURET(RCRECTDA,RCTRANDA)
 .   S VALMSG="Account was deleted and not linked."
 .   D WRITE^RCDPRPLU(VALMSG)
 .   D QUIT
 ;
 ; Option to restore suspense EEOB - PRCA*4.5*321
 S RCEEOB=$$EEOB^RCDPEM5(RCRECTDA,RCTRANDA)
 Q:RCEEOB<0
 ;
 ;  receipt has been processed since the cash receipt document
 ;  has been generated.  update the new account with payment
 W !
 I RCGECSCR'="" D  I RCERROR Q
 .   W !,"Updating the Linked Account with the payment ..."
 .   S RCERROR=$$PROCESS^RCBEPAY(RCRECTDA,RCTRANDA)
 .   ;  an error occurred during processing a payment
 .   I RCERROR D  Q
 .   .   W !
 .   .   W !,"+------------------------------------------------------------------------------+"
 .   .   W !,"|  An ERROR has occurred when processing payment ",RCTRANDA," on receipt ",$P(^RCY(344,RCRECTDA,0),"^"),".",?79,"|"
 .   .   W !,"|  The error message returned during processing is:",?79,"|"
 .   .   W !,"|",?79,"|"
 .   .   W !,"|  ",$P(RCERROR,"^",2),?79,"|"
 .   .   W !,"|",?79,"|"
 .   .   W !,"|  You will need to correct the error before you can link the payment.",?79,"|"
 .   .   W !,"+------------------------------------------------------------------------------+"
 .   .   W !
 .   .   D DELEACCT^RCDPURET(RCRECTDA,RCTRANDA)
 .   .   S VALMSG="Account was deleted and not linked."
 .   .   D WRITE^RCDPRPLU(VALMSG)
 .   .   D QUIT
 .   ;
 .   ;  payment processed correctly
 .   W "  done."
 .   W !
 .   ;
 .   ;PRCA*4.5*304
 .   D REMCMT^RCDPLPL4(RCRECTDA,RCTRANDA)   ; Remove the suspense comment.  No longer needed. 
 .   ;
 .   ;File entry in Audit Log
 .   D AUDIT^RCBEPAY(RCRECTDA,RCTRANDA,"P")
 .   ;
 .   ; Update Suspense Status
 .   D SUSPDIS^RCBEPAY(RCRECTDA,RCTRANDA,"PD")
 .   ;end PRCA*4.5*304
 .   ;
 .   ; Update EEOB claim number and restore to active status - PRCA*4.5*321
 .   D:RCEEOB RESTORE^RCDPEM5(RCRECTDA,RCTRANDA,RCEEOB,"L")
 .   ;
 .   ; PRCA*4.5*332 - If all money was split off the original EEOB remove it. 
 .   D CHKEOB^RCDPEU2(RCRECTDA,RCTRANDA)
 .   ;
 .   I $E($G(RCSTATUS))="A" D
 .   .   W !,"Since the FMS cash receipt document is Accepted in FMS, you need to go"
 .   .   W !,"online in FMS and transfer the amount paid out of the station's suspense"
 .   .   W !,"account.",!
 .   .   ;  send mail message to the RCDP PAYMENTS mail group
 .   .   W !,"Sending mail message to RCDP PAYMENTS mail group."
 .   .   D MAILMSG^RCDPLPSR(RCRECTDA,RCTRANDA)
 .   .   ;  place an x in the fms doc field so it will show on the
 .   .   ;  suspense report
 .   .   D EDITFMS^RCDPURET(RCRECTDA,RCTRANDA,"x")
 .   I $E($G(RCSTATUS))'="A" D
 .   .   W !,"Since the FMS cash receipt document is NOT Accepted in FMS, you can use"
 .   .   W !,"the option Process Receipt located under the Receipt Processing Menu"
 .   .   W !,"to regenerate the cash receipt document to FMS.",!
 .   S VALMSG="Payment linked and removed from list."
 .   D WRITE^RCDPRPLU(VALMSG)
 ;
 ;  receipt has not been processed
 I RCGECSCR="" D
 .   S VALMSG="Since the receipt has not been processed, accounts will not be updated."
 .   D WRITE^RCDPRPLU(VALMSG)
 .   S VALMSG="Payment linked and removed from list."
 .   ; Update EEOB claim number and restore to active status - PRCA*4.5*321
 .   D:RCEEOB RESTORE^RCDPEM5(RCRECTDA,RCTRANDA,RCEEOB,"L")
 ;
QUIT ;  call here to unlock and rebuild list
 L -^RCY(344,RCRECTDA)
 D INIT^RCDPLPLM
 Q
 ;
 ;
SHOWPAY(RCRECTDA,RCTRANDA) ;  show the payment transaction
 N A,D0,DA,DIC,DIQ,DK,DL,DX,S,Y
 S DIC="^RCY(344,"_RCRECTDA_",1,",DA(1)=RCRECTDA,DA=RCTRANDA,DIQ(0)="C"
 D EN^DIQ
 Q
 ;
 ;
ASKACCT() ; ask if its the correct account
 ;  1 is yes, otherwise no
 N DIR,DIQ2,DTOUT,DUOUT,X,Y
 S DIR(0)="YO",DIR("B")="NO"
 S DIR("A")="  Is this the correct ACCOUNT to apply the payment to"
 D ^DIR
 I $G(DTOUT)!($G(DUOUT)) S Y=-1
 Q Y
