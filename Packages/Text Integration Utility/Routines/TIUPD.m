TIUPD ; SLC/JER - Background Print Driver ;5/3/04
 ;;1.0;TEXT INTEGRATION UTILITIES;**7,89,100,182**;Jun 20, 1997
MAIN(DA,TIUACT) ; Control Branching
 ;  TIUACT=R ==> Release from transcription,
 ;         V ==> Verified by MAS,
 ;         A ==> AMENDED by Privacy Act Officer
 ;         S ==> On completion by electronic signature by appropriate
 ;               person (i.e., author or expected cosigner)
 ; TIUSTAT=1 ==> STAT urgency,
 ;   TIURP=routine print event(s)
 ;   TIUSP=stat print event(s)
 N TIUSTAT,TIURP,TIUSP,TIUDPARM
 D DOCPRM^TIULC1(+$G(^TIU(8925,+DA,0)),.TIUDPARM,+DA)
 Q:+$P($G(TIUDPARM(0)),U,8)>0!(+$G(TIUDPARM(0))'>0)
 Q:$G(TIUACT)=""!("ARVS"'[TIUACT)!(+$G(DA)'>0)
 S:$P($G(^TIU(8925,+DA,0)),U,9)="P" TIUSTAT=1
 S TIURP=$P($G(TIUDPARM(0)),U,6),TIUSP=$P($G(TIUDPARM(0)),U,7)
 I TIUACT="S" D TSKPRINT(DA,2,"",.TIUDPARM) Q
 I TIUACT="A" D TSKPRINT(DA,1,"",.TIUDPARM) Q
 I TIUACT="V",TIUSP]"","VB"[TIUSP D TSKPRINT(DA,1,"",.TIUDPARM) Q
 I +$G(TIUSTAT) D  ;STAT Document processing
 . I TIUACT="R",TIUSP]"","RB"[TIUSP D TSKPRINT(DA,1,TIUSTAT,.TIUDPARM) Q
 . I TIUACT="V",TIUSP]"","VB"[TIUSP D TSKPRINT(DA,1,"",.TIUDPARM) Q
 E  D  ;Non-stat Document processing
 . I TIUACT="R",TIURP]"","RB"[TIURP D TSKPRINT(DA,1,"",.TIUDPARM) Q
 . I TIUACT="V",TIURP]"","VB"[TIURP D TSKPRINT(DA,1,"",.TIUDPARM) Q
 Q
RPC(TIUY,TIUDA,TIUIO,TIUFLAG,TIUWIN) ; Remote Procedure to print a record
 ;TIUFLAG > 1 Chart Copy, TIUFLAG = 2 Electronically signed Chart Copy
 ;TIUWIN = 1 Windows printer, 0 or "" VistA printer
 N DFN,TIUD0,TIUX,ZTIO,ZTDTH,ZTRTN,ZTSK,ZTDESC,TIUTYPE,TIUPMTHD,TIUTNM
 N TIUDATE,TIUPFHDR,TIUPFNBR,TIUPGRP,TIUD13,TIUD15,TIUIDDAD
 K ^TMP("TIUPR",$J)
 I '$D(^TIU(8925,+$G(TIUDA),0)) S TIUY="1^No such record in TIU" Q
 I $G(TIUIO)']"" S TIUY="1^No device selected" Q
 ; Get Print Method for the document
 S TIUD0=$G(^TIU(8925,+TIUDA,0)),TIUD13=$G(^TIU(8925,+TIUDA,13))
 S TIUD15=$G(^TIU(8925,+TIUDA,15)),TIUTYPE=+TIUD0,TIUFLAG=+$G(TIUFLAG)
 S TIUDATE=$S(+TIUD15>0:+TIUD15,+TIUD13>0:+TIUD13,1:+$G(DT))
 I '+TIUTYPE Q
 S DFN=+$P(TIUD0,U,2)
 S TIUTNM=$$PNAME^TIULC1(+TIUTYPE)
 S TIUPMTHD=$$PRNTMTHD^TIULG(+TIUTYPE,TIUDA)
 S TIUPGRP=$$PRNTGRP^TIULG(+TIUTYPE,TIUDA)
 S TIUPFHDR=$$PRNTHDR^TIULG(+TIUTYPE,TIUDA)
 S TIUPFNBR=$$PRNTNBR^TIULG(+TIUTYPE,TIUDA)
 I +$$ISADDNDM^TIULC1(TIUDA) S TIUDA=+$P($G(^TIU(8925,+TIUDA,0)),U,6)
 S TIUIDDAD=$$HASIDDAD^TIUGBR(TIUDA)
 I TIUIDDAD S TIUDA=TIUIDDAD
 I $G(TIUPMTHD)']"" S TIUY="1^No Print Method Defined" Q
 ;I $G(TIUPMTHD)]"",+$G(TIUPGRP),($G(TIUPFHDR)]""),($G(TIUPFNBR)]"") D
 ;. S ^TMP("TIUPR",$J,$G(TIUPGRP)_"$"_$G(TIUPFHDR)_";"_DFN,1,TIUDA)=$G(TIUPFNBR)
 ;E  S ^TMP("TIUPR",$J,DFN,1,TIUDA)=""
 ; -- P182: Set array same whether or not flds are defined, with
 ;    TIUPGRP piece possibly 0, TIUPFHDR piece possibly null, and
 ;    array value TIUPFNBR possibly null.
 S ^TMP("TIUPR",$J,+$G(TIUPGRP)_"$"_$G(TIUPFHDR)_";"_DFN,1,TIUDA)=$G(TIUPFNBR)
 I +$G(TIUWIN) D
 . U IO
 . X TIUPMTHD
 E  D
 . S ZTIO=TIUIO,ZTDTH=$H
 . S ZTDESC=$S(+TIUFLAG:"CHART",1:"WORK")_" copy of "_$$UPPER^TIULS(TIUTNM)
 . S ZTRTN=$P(TIUPMTHD," ",2),ZTSAVE("^TMP(""TIUPR"",$J,")=""
 . S ZTSAVE("TIUFLAG")="",ZTSAVE("TIUPRM*")="",ZTSAVE("DUZ(")=""
 . D ^%ZTLOAD ;K ^TMP("TIUPR",$J,+$P(TIUD0,U,2),1,TIUDA) P182
 . I $D(ZTSK) S TIUY="0^"_$S(+$G(TIUFLAG):"Chart",1:"Draft")_" copy queued"
 . E  S TIUY="1^Task Rejected"
 K ^TMP("TIUPR",$J,+$G(TIUPGRP)_"$"_$G(TIUPFHDR)_";"_DFN,1,TIUDA) ;P182
 Q
TSKPRINT(DA,TIUFLAG,TIUSTAT,TIUDPARM) ;Set up task and do a queued print
 ;TIUFLAG > 1 Chart Copy, TIUFLAG = 2 Electronically signed Chart Copy
 ;TIUSTAT > 1 Stat printed at Release, check for Stat Chart Copy Printer
 N TIUD0,TIUDA,TIUX,ZTIO,ZTDTH,ZTRTN,ZTSK,ZTDESC,TIUTYPE,TIUPMTHD,TIUTNM
 N TIUDATE,TIUPFHDR,TIUPFNBR,TIUPGRP,TIUD13,TIUD15,TIUIDDAD
 K ^TMP("TIUPR",$J)
 I '$D(^TIU(8925,+$G(DA),0)) Q
 ; Get Print Method for the document
 S TIUD0=$G(^TIU(8925,+DA,0)),TIUD13=$G(^TIU(8925,+DA,13))
 S TIUD15=$G(^TIU(8925,+DA,15)),TIUTYPE=+TIUD0
 S TIUDATE=$S(+TIUD15>0:+TIUD15,+TIUD13>0:+TIUD13,1:+$G(DT))
 I '+TIUTYPE Q
 S TIUTNM=$$PNAME^TIULC1(+TIUTYPE)
 S TIUPMTHD=$P($$PRNTMTHD^TIULG(+TIUTYPE,DA)," ",2)
 S TIUPGRP=$$PRNTGRP^TIULG(+TIUTYPE,DA)
 S TIUPFHDR=$$PRNTHDR^TIULG(+TIUTYPE,DA)
 S TIUPFNBR=$$PRNTNBR^TIULG(+TIUTYPE,DA)
 I +$$ISADDNDM^TIULC1(DA) S DA=+$P($G(^TIU(8925,+DA,0)),U,6)
 S TIUIDDAD=$$HASIDDAD^TIUGBR(DA)
 I TIUIDDAD S DA=TIUIDDAD
 I TIUPMTHD']"" Q
 S ZTIO=$$GETDEV(DA,.TIUDPARM,+$G(TIUSTAT)),ZTDTH=$H
 I ZTIO']"" K ^TMP("TIUPR",$J) Q
 S ZTDESC="CHART COPY OF "_$$UPPER^TIULS(TIUTNM)
 S ZTRTN=TIUPMTHD,ZTSAVE("^TMP(""TIUPR"",$J,")="",ZTSAVE("TIUFLAG")=""
 S ZTSAVE("TIUPRM*")="",ZTSAVE("DUZ(")=""
 ;I $G(TIUPMTHD)]"",+$G(TIUPGRP),($G(TIUPFHDR)]""),($G(TIUPFNBR)]"") D
 ;. S ^TMP("TIUPR",$J,$G(TIUPGRP)_"$"_$G(TIUPFHDR)_";"_+$P(TIUD0,U,2),TIUDATE,DA)=$G(TIUPFNBR)
 ;E  S ^TMP("TIUPR",$J,+$P(TIUD0,U,2),TIUDATE,DA)=""
 ; -- P182: See RPC
 S ^TMP("TIUPR",$J,+$G(TIUPGRP)_"$"_$G(TIUPFHDR)_";"_+$P(TIUD0,U,2),TIUDATE,DA)=$G(TIUPFNBR)
 D ^%ZTLOAD ;K ^TMP("TIUPR",$J,+$P(TIUD0,U,2),TIUDATE,DA) P182
 K ^TMP("TIUPR",$J,+$G(TIUPGRP)_"$"_$G(TIUPFHDR)_";"_+$P(TIUD0,U,2),TIUDATE,DA) ;P182
 I $D(ZTSK),'$D(XWBOS) W !,$S(+$G(TIUFLAG):"Chart",1:"Draft")," copy queued."
 Q
GETDEV(DA,TIUDPARM,TIUSTAT) ; Get Chart copy print device name
 N DIC,DIQ,DR,X,Y,TIUDPDA,TIUDIV,TIUDEV,TIUI,TIU,TIUY
 D GETTIU^TIULD(.TIU,+DA)
 S TIUDPDA=+$O(^TIU(8925.95,"B",+$G(TIUDPARM(0)),0)) I '+TIUDPDA G GETDX
 S TIUDIV=+$O(^TIU(8925.95,+TIUDPDA,2,"B",+$G(TIU("DIV")),0))
 I +TIUDIV>0 D
 . S DIC="^TIU(8925.95,"_TIUDPDA_",2,",DA=+TIUDIV
 . S DIQ="TIUDEV",DR=".02;.03" D EN^DIQ1
 . I +$G(TIUSTAT),($G(TIUDEV(8925.952,+DA,.03))]"") S TIUY=$G(TIUDEV(8925.952,+DA,.03))
 . E  S TIUY=$G(TIUDEV(8925.952,+DA,.02))
GETDX Q $G(TIUY)
