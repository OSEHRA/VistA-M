RCFMOBR3 ;WASH-ISC@ALTOONA,PA/CLH/RWT-BILL RECONCILIATIONS LIST ;7/9/97  3:31 PM
V ;;4.5;Accounts Receivable;**73**;Mar 20, 1995
 ;;Per VHA Directive 10-93-142, this routine should not be modified
 ; - Fund mismatch
 N N4,N5,N6,SP
 D BLANKLN^RCFMOBR2(3)
 S TB="",$P(TB," ",21)=""
 S ^TMP("OBR",$J,"REPORT",N)="    FUND MISMATCH",N=N+1
 D BLANKLN^RCFMOBR2(1)
 S SP="",$P(SP," ",30)=""
 S ^TMP("OBR",$J,"REPORT",N)=SP_"     AR"_SP_"FMS",N=N+1
 I '$D(^TMP("OBR",$J,SN,"FUND MISMATCH")) S N4="1^0^0"
 I $D(^TMP("OBR",$J,SN,"FUND MISMATCH")) D
  .S N1=^TMP("OBR",$J,SN,"FUND MISMATCH")
  .F I=1:1:$P(N1,U,2) D
    ..S ^TMP("OBR",$J,"REPORT",N)=^TMP("OBR",$J,SN,"FUND MISMATCH",I)
    ..S N=N+1
 ; - RSC MISMATCH
 D BLANKLN^RCFMOBR2(2)
 S TB="",$P(TB," ",21)=""
 S ^TMP("OBR",$J,"REPORT",N)="    REVENUE SOURCE CODE MISMATCH",N=N+1
 D BLANKLN^RCFMOBR2(1)
 I '$D(^TMP("OBR",$J,SN,"RSC MISMATCH")) S N5="1^0"
 I $D(^TMP("OBR",$J,SN,"RSC MISMATCH")) D
  .S N2=^TMP("OBR",$J,SN,"RSC MISMATCH")
  .F I=1:1:$P(N2,U,2) D
    ..S ^TMP("OBR",$J,"REPORT",N)=^TMP("OBR",$J,SN,"RSC MISMATCH",I)
    ..S N=N+1
 D BLANKLN^RCFMOBR2(2)
 S TB="",$P(TB," ",21)=""
 S ^TMP("OBR",$J,"REPORT",N)="    SUB REVENUE SOURCE CODE MISMATCH",N=N+1
 D BLANKLN^RCFMOBR2(1)
 I '$D(^TMP("OBR",$J,SN,"SUB RSC MISMATCH")) S N6="1^0"
 I $D(^TMP("OBR",$J,SN,"SUB RSC MISMATCH")) D
   .S N2=^TMP("OBR",$J,SN,"SUB RSC MISMATCH")
   .F I=1:1:$P(N2,U,2) D
     ..S ^TMP("OBR",$J,"REPORT",N)=^TMP("OBR",$J,SN,"SUB RSC MISMATCH",I)
     ..S N=N+1
 Q
