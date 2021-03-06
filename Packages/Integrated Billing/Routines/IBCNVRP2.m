IBCNVRP2 ;ALB/BAA - Interfacility Ins Update Activity Report PRINT;25-FEB-15
 ;;2.0;INTEGRATED BILLING;**528**;21-MAR-94;Build 163
 ;;Per VA Directive 6402, this routine should not be modified.
 ;
 ; Variables:
 ;   IBCNERTN = "IBCNERPF" (current routine name for queueing the 
 ;                          COMPILE process)
 ;   INCNESPJ("BEGDT") = start date for date range
 ;   INCNESPJ("ENDDT") = end date for date range
 ;   INCNESPJ("SORT") = "D" - Date or "F" Facility
 ;   INCNESPJ("SR") = "S" - Sending or "R" - Receiving
 ;   INCNESPJ("SD") = "S" - Summary or "D" - Detail
 ;   INCNESPJ("FAC",ien) = Facilities for report, if INCNESPJ("FAC")="A", then include all
 ;   INCNESPJ("TYPE") = report type: "R" - Report, "E" - Excel
 ;
 Q
 ;
EN(IBCNERTN,INCNESPJ) ; Entry point
 N CRT,DDATA,DLINE,EORMSG,IBPGC,IBPXT,MAXCNT,NONEMSG,SSN,SSNLEN,TSTAMP,FAC,HDR1,HDR2
 N TYPE,VDATE,WIDTH,X,Y,SENT,RECVD,STATION,DEFSTAT,DASHES,HD1,HD2,HD3,IBSR,IBSD,IBSRT
 N SDAT,SITE,VISN,ZTQUEUED,ZTSTOP,IBLEN
 S SITE=$$SITE^VASITE
 S STATION=$P(SITE,U,3)
 S SITE=$P(SITE,U,2)_" : "_$P(SITE,U,3)
 S VISN=$$VISN^IBATUTL(STATION)
 S IBSR=INCNESPJ("SR")
 S IBSD=INCNESPJ("SD")
 S IBSRT=INCNESPJ("SORT")
 S TYPE=$G(INCNESPJ("TYPE")) ; report type
 S (IBPGC,IBPXT)=0
 S NONEMSG="* * * N O  D A T A  F O U N D * * *"
 S EORMSG="*** END OF REPORT ***"
 S TSTAMP=$$FMTE^XLFDT($$NOW^XLFDT,1) ; time of report
 S WIDTH=IOM
 S $P(DASHES,"-",WIDTH)=""
 S HDR1=$$FMTE^XLFDT($G(INCNESPJ("BEGDT")),"5Z")_" - "_$$FMTE^XLFDT($G(INCNESPJ("ENDDT")),"5Z")
 S HDR2=$S(IBSR="S":"Sending Site",IBSR="R":"Receiving Sites",1:"")
 ; Determine IO parameters
 S MAXCNT=IOSL-6,CRT=0
 S:IOST["C-" MAXCNT=IOSL-3,CRT=1
 ; print data
 S SDAT=""
 I IBSR'="B",TYPE="R" D HEADER(IBSR) I $G(ZTSTOP)!IBPXT Q
 I IBSR'="B",TYPE="E" D EHDR(IBSR)
 ; If global does not exist - display No Data message
 I '$D(^TMP($J,IBCNERTN)) S IBLEN=((WIDTH\2)+$L(NONEMSG))-($L(NONEMSG)\2) D LINE($$FO^IBCNEUT1(NONEMSG,IBLEN,"R")) G EXIT
 ; Choose Type,Summary/Detail,Date/Facility
 I TYPE="E" D EXCEL Q:$G(ZTSTOP)!IBPXT
 ;
 I TYPE="R" D REPORT Q:$G(ZTSTOP)!IBPXT
 ;
EXIT ;
 I TYPE="R" S IBLEN=((WIDTH\2)+$L(EORMSG))-($L(EORMSG)\2) D LINE($$FO^IBCNEUT1(EORMSG,IBLEN,"R"))
 I TYPE="E" W !,EORMSG S IBPGC=1
 I CRT,IBPGC>0,'$D(ZTQUEUED) D EOL
 Q
 ;
EOL ; display "end of page" message and set exit flag
 N DIR,DIROUT,DIRUT,DTOUT,DUOUT,LIN
 I MAXCNT<51 F LIN=1:1:(MAXCNT-$Y) W !
 S DIR(0)="E" D ^DIR K DIR
 I $D(DTOUT)!$D(DUOUT) S IBPXT=1
 Q
 ;
EXCEL ;
 ; excel format
 I IBSD="D" D
 .I IBSRT="D" D
 ..I IBSR="B" D EHDR("S"),EXCDD("S"),EHDR("R"),EXCDD("R") Q
 ..D EXCDD(IBSR)
 .I IBSRT="F" D
 ..I IBSR="B" D EHDR("S"),EXCDD("S"),EHDR("R"),EXCDD("R") Q
 ..D EXCDF(IBSR)
 I IBSD="S" D
 .I IBSRT="D" D
 ..I IBSR="B" D EHDR("S"),EXCSD("S"),EHDR("R"),EXCSD("R") Q
 ..D EXCSD(IBSR)
 .I IBSRT="F" D
 ..I IBSR="B" D EHDR("S"),EXCSF("S"),EHDR("R"),EXCSF("R") Q
 ..D EXCSF(IBSR)
 Q
 ;
REPORT ;
 ; report format
 I IBSD="D" D
 .I IBSRT="D" D
 ..I IBSR="B" D HEADER("S"),REPDD("S"),HEADER("R"),REPDD("R") Q
 ..D REPDD(IBSR)
 .I IBSRT="F" D
 ..I IBSR="B" D HEADER("S"),REPDF("S"),HEADER("R"),REPDF("R") Q
 ..D REPDF(IBSR)
 I IBSD="S" D
 .I IBSRT="D" D
 ..I IBSR="B" D HEADER("S"),REPSD("S"),HEADER("R"),REPSD("R") Q
 ..D REPSD(IBSR)
 .I IBSRT="F" D
 ..I IBSR="B" D HEADER("S"),REPSF("S"),HEADER("R"),REPSF("R") Q
 ..D REPSF(IBSR)
 Q
 ;
HEADER(SR) ; print header for each page
 N HDR,OFFSET,SRT
 I CRT,IBPGC>0,'$D(ZTQUEUED) D EOL I IBPXT Q
 I $D(ZTQUEUED),$$S^%ZTLOAD() S (ZTSTOP,IBPXT)=1 Q
 S IBPGC=IBPGC+1
 W @IOF,!,?1,"Interfacility Ins Update Activity Report"
 S HDR=TSTAMP_"  Page: "_IBPGC,OFFSET=WIDTH-$L(HDR)
 W ?OFFSET,HDR
 S OFFSET=$$CENTER(HDR1)
 W !,?OFFSET,HDR1
 S OFFSET=$$CENTER(HDR2)
 W !,?OFFSET,HDR2
 I IBSD="D" D
 .W !!,?23,"PAT",?30,"Insurance",?57,"Subscriber",?80,"COB",?85,$S(SR="S":"Sending",1:"Receiving"),?117,"Date"
 .W !,?1,"Patient",?23,"ID #",?30,"Company",?57,"ID #",?80,"COB",?85,"Facility",?117,$S(SR="S":"Sent",1:"Received")
 W !,?1,DASHES
 Q
 ;
EHDR(SR) ;HEADER FOR EXCEL
 W !,"Interfacility Ins Update Activity Report"
 W !,HDR1
 W !,HDR2
 I IBSD="D" D
 .S LINE="Patient"_U_"ID #"_U_"Insurance Company"_U_"Subscriber ID #"_U_"COB"
 .S LINE=LINE_U_$S(SR="S":"Sending",1:"Receiving")_" Facility"_U_"Date "_$S(SR="S":"Sent",1:"Received")
 I IBSD="S",IBSRT="F" D
 .S LINE="Facility"_U_"Site #"_U_"Date "_$S(SR="S":"Sent",1:"Received")_U_"Count"
 I IBSD="S",IBSRT="D" D
 .S LINE="Date "_$S(SR="S":"Sent",1:"Received")_U_"Facility"_U_"Site #"_U_"Count"
  W !,LINE
 Q
 ;
REPSD(SR) ;Summary report by Date
 N DATE3,FACILTRT,TREATR,FACILNAM,Z,IBBDT,IBEDT
 S DATE3=0
 F  S DATE3=$O(^TMP($J,IBCNERTN,"IBCN_SUM","D",SR,DATE3)) Q:DATE3=""  D
 .S Z=DATE3
 .S OUTDT=$E(Z,4,5)_"/"_$E(Z,6,7)_"/"_$E(Z,2,3)
 .I SR="R" D
 ..W !!,?1,"DATE RECEIVED:  ",?21,OUTDT
 .I SR="S" D
 ..W !!,?1,"TRANSMITTED DATE:  ",?21,OUTDT
 .S FACILTRT=0
 .F  S FACILTRT=$O(^TMP($J,IBCNERTN,"IBCN_SUM","D",SR,DATE3,FACILTRT)) Q:FACILTRT=""  D
 ..S FACILNAM=$P(FACILTRT,U)
 ..S TREATR=$P(FACILTRT,U,2)
 ..W !,?6,FACILNAM,?33,TREATR,?52,$G(^TMP($J,IBCNERTN,"IBCN_SUM","D",SR,DATE3,FACILTRT))
 .W !,?50,"-----"
 .W !,?52,$G(^TMP($J,IBCNERTN,"IBCN_SUM_SUBTOT","D",SR,DATE3))
 S Z=INCNESPJ("BEGDT")
 S IBBDT=$E(Z,4,5)_"/"_$E(Z,6,7)_"/"_$E(Z,2,3)
 S Z=INCNESPJ("ENDDT")
 S IBEDT=$E(Z,4,5)_"/"_$E(Z,6,7)_"/"_$E(Z,2,3)
 W !!,?1,"Total for Date Range ("_IBBDT_" to "_IBEDT_"):",?52,$G(^TMP($J,IBCNERTN,"IBCN_SUM_TOTAL","D",SR))
 Q
 ;
REPSF(SR) ;Summary report by sending facility
 N FACILTRT,FIRSTFAC,LASTFAC,DATE3,FACILNAM,TREATR
 S FACILTRT=0
 S FIRSTFAC=0
 S LASTFAC=0
 F  S FACILTRT=$O(^TMP($J,IBCNERTN,"IBCN_SUM","F",SR,FACILTRT)) Q:FACILTRT=""  D
 .S FACILNAM=$P(FACILTRT,U)
 .I FIRSTFAC=0 S FIRSTFAC=FACILNAM
 .S LASTFAC=FACILNAM
 .S TREATR=$P(FACILTRT,U,2)
 .W !,?1,"STATION: ",FACILNAM,?33,TREATR
 .S DATE3=0
 .F  S DATE3=$O(^TMP($J,IBCNERTN,"IBCN_SUM","F",SR,FACILTRT,DATE3)) Q:DATE3=""  D
 ..S Z=DATE3
 ..S OUTDT=$E(Z,4,5)_"/"_$E(Z,6,7)_"/"_$E(Z,2,3)
 ..W !,?6,OUTDT,?52,$G(^TMP($J,IBCNERTN,"IBCN_SUM","F",SR,FACILTRT,DATE3))
 .W !,?50,"-----"
 .W !,?52,$G(^TMP($J,IBCNERTN,"IBCN_SUM_SUBTOT","F",SR,FACILTRT))
 W !!,?1,"Total for Facility Range ("_FIRSTFAC_" to "_LASTFAC_"):",?52,$G(^TMP($J,IBCNERTN,"IBCN_SUM_TOTAL","F",SR))
 Q
 ;
REPDD(SR) ; Detail report by Date
 N DATE3,FACILTRT,PAT,DATA,INSPTR
 S DATE3=0
 F  S DATE3=$O(^TMP($J,IBCNERTN,"D",SR,DATE3)) Q:DATE3=""  D
 .S FACILTRT=0
 .F  S FACILTRT=$O(^TMP($J,IBCNERTN,"D",SR,DATE3,FACILTRT)) Q:FACILTRT=""  D
 ..S PAT=0
 ..F  S PAT=$O(^TMP($J,IBCNERTN,"D",SR,DATE3,FACILTRT,PAT)) Q:PAT=""  D
 ...S INSPTR=0
 ...F  S INSPTR=$O(^TMP($J,IBCNERTN,"D",SR,DATE3,FACILTRT,PAT,INSPTR)) Q:INSPTR=""  D
 ....S DATA=$G(^TMP($J,IBCNERTN,"D",SR,DATE3,FACILTRT,PAT,INSPTR))
 ....D PRINT(DATA)
 Q
 ;
REPDF(SR) ; Detail report by receiving facility
 N DATE,FACILTRT,PAT,DATA,INSPTR
 S FACILTRT=0
 F  S FACILTRT=$O(^TMP($J,IBCNERTN,"F",SR,FACILTRT)) Q:FACILTRT=""  D
 .S DATE3=0
 .S FAC=$P(FACILTRT,U)
 .F  S DATE3=$O(^TMP($J,IBCNERTN,"F",SR,FACILTRT,DATE3)) Q:DATE3=""  D
 ..S PAT=0
 ..F  S PAT=$O(^TMP($J,IBCNERTN,"F",SR,FACILTRT,DATE3,PAT)) Q:PAT=""  D
 ...S INSPTR=0
 ...F  S INSPTR=$O(^TMP($J,IBCNERTN,"F",SR,FACILTRT,DATE3,PAT,INSPTR)) Q:INSPTR=""  D
 ....S DATA=$G(^TMP($J,IBCNERTN,"F",SR,FACILTRT,DATE3,PAT,INSPTR))
 ....D PRINT(DATA)
 Q
 ;
EXCSF(SR) ; Excel summary report by receiving facility
 N FACILTRT,DATE2,SUM,OUTDT,LINE,SUB,TOT,Z
 S FACILTRT=0
 F  S FACILTRT=$O(^TMP($J,IBCNERTN,"IBCN_SUM","F",SR,FACILTRT)) Q:FACILTRT=""  D
 .S LINE=""
 .S DATE3=0
 .F  S DATE3=$O(^TMP($J,IBCNERTN,"IBCN_SUM","F",SR,FACILTRT,DATE3)) Q:DATE3=""  D
 ..S SUM=$G(^TMP($J,IBCNERTN,"IBCN_SUM","F",SR,FACILTRT,DATE3))
 ..S Z=DATE3
 ..S OUTDT=$E(Z,4,5)_"/"_$E(Z,6,7)_"/"_$E(Z,2,3)
 ..S LINE=FACILTRT_U_OUTDT_U_SUM
 ..W !,LINE
 .S LINE="",OUTDT="SUB TOTAL",FAC="^"
 .S SUB=$G(^TMP($J,IBCNERTN,"IBCN_SUM_SUBTOT","F",SR,FACILTRT))
 .S LINE=FAC_U_OUTDT_U_SUB
 .W !,LINE
 S TOT=$G(^TMP($J,IBCNERTN,"IBCN_SUM_TOTAL","F",SR))
 S LINE="",OUTDT="TOTAL",FAC="^"
 S LINE=FAC_U_OUTDT_U_TOT
 W !,LINE
 Q
 ;
EXCSD(SR) ; Excel summary report by Date
 N DATE3,FACILTRT,SUM,Z,OUTDT,LINE,SUB,TOT,FACILITY,TREATR
 S DATE3=0
 F  S DATE3=$O(^TMP($J,IBCNERTN,"IBCN_SUM","D",SR,DATE3)) Q:DATE3=""  D
 .S Z=DATE3
 .S OUTDT=$E(Z,4,5)_"/"_$E(Z,6,7)_"/"_$E(Z,2,3)
 .W !,"Transmission Date: ",OUTDT
 .S LINE=""
 .S FACILTRT=0
 .F  S FACILTRT=$O(^TMP($J,IBCNERTN,"IBCN_SUM","D",SR,DATE3,FACILTRT)) Q:FACILTRT=""  D
 ..S SUM=$G(^TMP($J,IBCNERTN,"IBCN_SUM","D",SR,DATE3,FACILTRT))
 ..S LINE=OUTDT_U_FACILTRT_U_SUM
 ..W !,LINE
 .S LINE="",FAC="^SUBTOTAL",OUTDT=""
 .S SUB=$G(^TMP($J,IBCNERTN,"IBCN_SUM_SUBTOT","D",SR,DATE3))
 .S LINE=OUTDT_U_FAC_U_SUB
 .W !,LINE
 S TOT=$G(^TMP($J,IBCNERTN,"IBCN_SUM_TOTAL","D",SR))
 S LINE="",OUTDT="",FAC="^TOTAL"
 S LINE=FAC_U_OUTDT_U_TOT
 W !,LINE
 Q
 ;
EXCDD(SR) ;Excel detail report by Date
 N DATE,FACILTRT,PAT,DATA,LINE
 S DATE3=0
 F  S DATE3=$O(^TMP($J,IBCNERTN,"D",SR,DATE3)) Q:DATE3=""  D
 .S LINE=""
 .S FACILTRT=0
 .F  S FACILTRT=$O(^TMP($J,IBCNERTN,"D",SR,DATE3,FACILTRT)) Q:FACILTRT=""  D
 ..S PAT=0
 ..F  S PAT=$O(^TMP($J,IBCNERTN,"D",SR,DATE3,FACILTRT,PAT)) Q:PAT=""  D
 ...S INSPTR=0
 ...F  S INSPTR=$O(^TMP($J,IBCNERTN,"D",SR,DATE3,FACILTRT,PAT,INSPTR)) Q:INSPTR=""  D
 ....S LINE=$G(^TMP($J,IBCNERTN,"D",SR,DATE3,FACILTRT,PAT,INSPTR))
 ....W !,LINE
 Q
 ;
EXCDF(SR) ;;Excel detail report by receiving facility
 N DATE,FACILTRT,PAT,DATA,LINE,INSPTR
 S FACILTRT=0
 F  S FACILTRT=$O(^TMP($J,IBCNERTN,"F",SR,FACILTRT)) Q:FACILTRT=""  D
 .S LINE=""
 .S DATE3=0
 .F  S DATE3=$O(^TMP($J,IBCNERTN,"F",SR,FACILTRT,DATE3)) Q:DATE3=""  D
 ..S PAT=0
 ..F  S PAT=$O(^TMP($J,IBCNERTN,"F",SR,FACILTRT,DATE3,PAT)) Q:PAT=""  D
 ...S INSPTR=0
 ...F  S INSPTR=$O(^TMP($J,IBCNERTN,"F",SR,FACILTRT,DATE3,PAT,INSPTR)) Q:INSPTR=""  D
 ....S LINE=$G(^TMP($J,IBCNERTN,"F",SR,FACILTRT,DATE3,PAT,INSPTR))
 ....W !,LINE
 Q
 ;
PRINT(DATA) ; Get Print Info
 ; PNAM_U_SSN_U_INSNAMER_U_SUBSCRB_U_COB_U_FACILNAM_U_OUTDT
 N DLINE
 S DLINE=""
 S $E(DLINE,1,20)=$E($P(DATA,U),1,20)  ;PATIENT
 S $E(DLINE,23,27)=$E($P(DATA,U,2),1,5)  ;SSN
 S $E(DLINE,30,54)=$E($P(DATA,U,3),1,25)  ;INSURANCE
 S $E(DLINE,57,76)=$E($P(DATA,U,4),1,20)  ;SUBSCRB
 S $E(DLINE,80,81)=" "_$P(DATA,U,5)  ;COB
 S $E(DLINE,85,114)=$E($P(DATA,U,6),1,30)  ;FACILNAM
 S $E(DLINE,117,124)=$E($P(DATA,U,7),1,8)  ;DATE
 D LINE(DLINE)
 Q
 ;
LINE(LINE) ; Print line of data
 I $Y+1>MAXCNT D HEADER(IBSR) I $G(ZTSTOP)!IBPXT Q
 W !,?1,LINE
 Q
 ;
CENTER(LINE) ; return length of a centered line
 ; LINE - line to center
 N LENGTH,OFFSET
 S LENGTH=$L(LINE),OFFSET=IOM-$L(LINE)\2
 Q OFFSET
