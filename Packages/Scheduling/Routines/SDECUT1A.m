SDECUT1A ;ALB/SAT - VISTA SCHEDULING RPCS ;MAR 15, 2017
 ;;5.3;Scheduling;**627,658**;Aug 13, 1993;Build 23
 ;
 Q
 ;
A(STA,SDCL,SDBEG,SDSI,SDCLS) ;get array of start times
 N HR,HR1,MIN,NOD,OFFSET,SDAY,SDI,SDTDAY,SDTDONE,SDTAR
 S SDTDONE=0
 S SDTDAY=$$GETDAY^SDECUTL1($P(SDBEG,".",1))
 S SDAY=$$FMADD^XLFDT(SDBEG,1) F  S SDAY=$O(^SC(SDCL,"T",SDAY),-1) Q:SDAY'>0  D  Q:+SDTDONE
 .Q:$$GETDAY^SDECUTL1(SDAY)'=SDTDAY
 .I SDAY'=$P(SDBEG,".",1),$D(^SC(SDCL,"ST",SDAY,9)) Q
 .K SDTAR
 .M SDTAR=^SC(SDCL,"T",SDAY)
 .S SDTDONE=1
 D @("A"_SDSI)
 Q
A1 ;
 S SDI=0 F  S SDI=$O(SDTAR(2,SDI)) Q:SDI=""  D
 .S OFFSET=""   ;alb/sat 658 initialize OFFSET for each iteration
 .S NOD=SDTAR(2,SDI,0)
 .S HR=$E($P(NOD,U,1),1,2)
 .S MIN=$E($P(NOD,U,1),3,4)
 .I +MIN'<0,+MIN<15 S OFFSET=+MIN
 .I OFFSET="",+MIN'<15,+MIN<30 S OFFSET=(+MIN)-15
 .I OFFSET="",+MIN'<30,+MIN<45 S OFFSET=(+MIN)-30
 .I OFFSET="",+MIN'<45,+MIN'>59 S OFFSET=(+MIN)-45
 .D B1(.STA,HR,OFFSET)
 S HR1=""
 S HR="" F  S HR=$O(STA(HR)) Q:HR=""  D
 .I HR1="" S HR1=HR
 .E  S:+HR<+HR1 HR1=HR
 I SDCLS<(+HR1) D  ;fill in gaps
 .S HR=HR1
 .F  Q:SDCLS=+HR  D
 ..S HR=(+HR)-1
 ..S HR=$S($L(HR)=1:0_HR,1:HR)
 ..D B1(.STA,HR,OFFSET)
 Q
B1(STA,HR,OFFSET) ;
 N MIN
 S MIN=15+OFFSET
 S STA(HR,4)=MIN_U_$S($E(MIN,2)=0:$E(MIN,1),1:MIN)
 S MIN=30+OFFSET
 S STA(HR,6)=MIN_U_$S($E(MIN,2)=0:$E(MIN,1),1:MIN)
 S MIN=45+OFFSET
 S STA(HR,0)=MIN_U_$S($E(MIN,2)=0:$E(MIN,1),1:MIN)
 S MIN=+OFFSET
 S STA(HR,2)=$S(+MIN=0:"00",1:$S($L(MIN)=1:"0"_MIN,1:MIN))_U_$S(+MIN=0:"",$L(MIN)=1:"0"_MIN,$E(MIN,2)=0:$E(MIN,1),1:MIN)
 Q
A2 ;
 ;S OFFSET=""
 S SDI=0 F  S SDI=$O(SDTAR(2,SDI)) Q:SDI=""  D
 .S OFFSET=""   ;alb/sat 658 initialize OFFSET for each iteration
 .S NOD=SDTAR(2,SDI,0)
 .S HR=$E($P(NOD,U,1),1,2)
 .S MIN=$E($P(NOD,U,1),3,4)
 .I +MIN'<0,+MIN<15 S OFFSET=+MIN
 .I OFFSET="",+MIN'<15,+MIN<30 S OFFSET=(+MIN)-15
 .I OFFSET="",+MIN'<30,+MIN<45 S OFFSET=(+MIN)-30
 .I OFFSET="",+MIN'<45,+MIN'>59 S OFFSET=(+MIN)-45
 .D B2(.STA,HR,OFFSET)
 S HR1=""
 S HR="" F  S HR=$O(STA(HR)) Q:HR=""  D
 .I HR1="" S HR1=HR
 .E  S:+HR<+HR1 HR1=HR
 I SDCLS<(+HR1) D  ;fill in gaps
 .S HR=HR1
 .F  Q:SDCLS=+HR  D
 ..S HR=(+HR)-1
 ..S HR=$S($L(HR)=1:0_HR,1:HR)
 ..D B2(.STA,HR,OFFSET)
 Q
B2(STA,HR,OFFSET) ;
 N MIN
 S MIN=15+OFFSET
 S STA(HR,4)=MIN_U_$S($E(MIN,2)=0:$E(MIN,1),1:MIN)
 S MIN=30+OFFSET
 S STA(HR,6)=MIN_U_$S($E(MIN,2)=0:$E(MIN,1),1:MIN)
 S MIN=45+OFFSET
 S STA(HR,0)=MIN_U_$S($E(MIN,2)=0:$E(MIN,1),1:MIN)
 S MIN=+OFFSET
 S STA(HR,2)=$S(+MIN=0:"00",1:$S($L(MIN)=1:"0"_MIN,1:MIN))_U_$S(+MIN=0:"",$L(MIN)=1:"0"_MIN,$E(MIN,2)=0:$E(MIN,1),1:MIN)
 Q
A3 ;get array of start times
 N HR,HR1,MIN,NOD,OFFSET,SDAY,SDI,SDTDAY,SDTDONE
 S SDTDONE=0
 S SDTDAY=$$GETDAY^SDECUTL1($P(SDBEG,".",1))
 S SDAY=$$FMADD^XLFDT(SDBEG,1) F  S SDAY=$O(^SC(SDCL,"T",SDAY),-1) Q:SDAY'>0  D  Q:+SDTDONE
 .Q:$$GETDAY^SDECUTL1(SDAY)'=SDTDAY
 .I SDAY'=$P(SDBEG,".",1),$D(^SC(SDCL,"ST",SDAY,9)) Q
 .K SDTAR
 .M SDTAR=^SC(SDCL,"T",SDAY)
 .S SDTDONE=1
 ;S OFFSET=""
 S SDI=0 F  S SDI=$O(SDTAR(2,SDI)) Q:SDI=""  D
 .S OFFSET=""   ;alb/sat 658 initialize OFFSET for each iteration
 .S NOD=SDTAR(2,SDI,0)
 .S HR=$E($P(NOD,U,1),1,2)
 .S MIN=$E($P(NOD,U,1),3,4)
 .I +MIN'<0,+MIN<20 S OFFSET=+MIN
 .I OFFSET="",+MIN'<20,+MIN<40 S OFFSET=(+MIN)-20   ; S STA(HR,0)=MIN_U_$S($E(MIN,2)=0:$E(MIN,1),1:MIN)
 .I OFFSET="",+MIN'<40,+MIN'>59 S OFFSET=(+MIN)-40 S STA(HR,2)=MIN_U_$S(MIN="00":"",$E(MIN,2)=0:$E(MIN,1),1:MIN)
 .D B3(.STA,HR,OFFSET)
 S HR1=""
 S HR="" F  S HR=$O(STA(HR)) Q:HR=""  D
 .I HR1="" S HR1=HR
 .E  S:+HR<+HR1 HR1=HR
 I SDCLS<(+HR1) D  ;fill in gaps
 .S HR=HR1
 .F  Q:SDCLS=+HR  D
 ..S HR=(+HR)-1
 ..S HR=$S($L(HR)=1:0_HR,1:HR)
 ..D B3(.STA,HR,OFFSET)
 Q
B3(STA,HR,OFFSET) ;
 N MIN
 S MIN=20+OFFSET
 S STA(HR,4)=MIN_U_$S($E(MIN,2)=0:$E(MIN,1),1:MIN)
 S MIN=40+OFFSET
 S STA(HR,0)=MIN_U_$S($E(MIN,2)=0:$E(MIN,1),1:MIN)
 S MIN=+OFFSET
 S STA(HR,2)=$S(+MIN=0:"00",1:$S($L(MIN)=1:"0"_MIN,1:MIN))_U_$S(+MIN=0:"",$L(MIN)=1:"0"_MIN,$E(MIN,2)=0:$E(MIN,1),1:MIN)
 Q
A4 ;
 ;S OFFSET=""
 S SDI=0 F  S SDI=$O(SDTAR(2,SDI)) Q:SDI=""  D
 .S OFFSET=""   ;alb/sat 658 initialize OFFSET for each iteration
 .S NOD=SDTAR(2,SDI,0)
 .S HR=$E($P(NOD,U,1),1,2)
 .S MIN=$E($P(NOD,U,1),3,4)
 .I +MIN'<0,+MIN<15 S OFFSET=+MIN
 .I OFFSET="",+MIN'<15,+MIN<30 S OFFSET=(+MIN)-15
 .I OFFSET="",+MIN'<30,+MIN<45 S OFFSET=(+MIN)-30
 .I OFFSET="",+MIN'<45,+MIN'>59 S OFFSET=(+MIN)-45
 .D B4(.STA,HR,OFFSET)
 S HR1=""
 S HR="" F  S HR=$O(STA(HR)) Q:HR=""  D
 .I HR1="" S HR1=HR
 .E  S:+HR<+HR1 HR1=HR
 I SDCLS<(+HR1) D  ;fill in gaps
 .S HR=HR1
 .F  Q:SDCLS=+HR  D
 ..S HR=(+HR)-1
 ..S HR=$S($L(HR)=1:0_HR,1:HR)
 ..D B4(.STA,HR,OFFSET)
 Q
B4(STA,HR,OFFSET) ;
 N MIN
 S MIN=15+OFFSET
 S STA(HR,4)=MIN_U_$S($E(MIN,2)=0:$E(MIN,1),1:MIN)
 S MIN=30+OFFSET
 S STA(HR,6)=MIN_U_$S($E(MIN,2)=0:$E(MIN,1),1:MIN)
 S MIN=45+OFFSET
 S STA(HR,0)=MIN_U_$S($E(MIN,2)=0:$E(MIN,1),1:MIN)
 S MIN=+OFFSET
 S STA(HR,2)=$S(+MIN=0:"00",1:$S($L(MIN)=1:"0"_MIN,1:MIN))_U_$S(+MIN=0:"",$L(MIN)=1:"0"_MIN,$E(MIN,2)=0:$E(MIN,1),1:MIN)
 Q
A6 ;
 ;S OFFSET=""
 S SDI=0 F  S SDI=$O(SDTAR(2,SDI)) Q:SDI=""  D
 .S OFFSET=""   ;alb/sat 658 initialize OFFSET for each iteration
 .S NOD=SDTAR(2,SDI,0)
 .S HR=$E($P(NOD,U,1),1,2)
 .S MIN=$E($P(NOD,U,1),3,4)
 .I +MIN'<0,+MIN<10 S OFFSET=+MIN
 .I OFFSET="",+MIN'<10,+MIN<20 S OFFSET=(+MIN)-10
 .I OFFSET="",+MIN'<20,+MIN<30 S OFFSET=(+MIN)-20
 .I OFFSET="",+MIN'<30,+MIN<40 S OFFSET=(+MIN)-30
 .I OFFSET="",+MIN'<40,+MIN<50 S OFFSET=(+MIN)-40
 .I OFFSET="",+MIN'<50,+MIN'>59 S OFFSET=(+MIN)-50
 .D B6(.STA,HR,OFFSET)
 S HR1=""
 S HR="" F  S HR=$O(STA(HR)) Q:HR=""  D
 .I HR1="" S HR1=HR
 .E  S:+HR<+HR1 HR1=HR
 I SDCLS<(+HR1) D  ;fill in gaps
 .S HR=HR1
 .F  Q:SDCLS=+HR  D
 ..S HR=(+HR)-1
 ..S HR=$S($L(HR)=1:0_HR,1:HR)
 ..D B6(.STA,HR,OFFSET)
 Q
B6(STA,HR,OFFSET) ;
 N MIN
 S MIN=10+OFFSET
 S STA(HR,4)=MIN_U_$S($E(MIN,2)=0:$E(MIN,1),1:MIN)
 S MIN=20+OFFSET
 S STA(HR,6)=MIN_U_$S($E(MIN,2)=0:$E(MIN,1),1:MIN)
 S MIN=30+OFFSET
 S STA(HR,8)=MIN_U_$S($E(MIN,2)=0:$E(MIN,1),1:MIN)
 S MIN=40+OFFSET
 S STA(HR,10)=MIN_U_$S($E(MIN,2)=0:$E(MIN,1),1:MIN)
 S MIN=50+OFFSET
 S STA(HR,0)=MIN_U_$S($E(MIN,2)=0:$E(MIN,1),1:MIN)
 S MIN=+OFFSET
 S STA(HR,2)=$S(+MIN=0:"00",1:$S($L(MIN)=1:"0"_MIN,1:MIN))_U_$S(+MIN=0:"",$L(MIN)=1:"0"_MIN,$E(MIN,2)=0:$E(MIN,1),1:MIN)
 Q
MAKE(SDBLKS,SDI,START,STOP,SLOT)  ;make block
 N SDATAV,SDATUN
 S SDATAV=$O(^SDEC(409.823,"B","AVAILABLE",0))
 S SDATUN=$O(^SDEC(409.823,"B","UNAVAILABLE",0))
 S SDI=SDI+1 S SDBLKS(SDI)=START_U_STOP_U_SLOT_U_$S(+SLOT:SDATAV,1:SDATUN)
 Q
 ;
RESNB(SDAB,SDBLKS,SDCL,SDAY,SDRES)  ;create/update access blocks for 1 day
 N SDI,SDJ,SDNOD,SDRESP
 Q:'$D(SDBLKS)
 Q:$G(SDAY)'?7N
 S SDRESP=$G(SDRES)
 ;delete all related access blocks
 ;build new access blocks with calls to RESNB1
 S SDI="" F  S SDI=$O(SDBLKS(SDI)) Q:SDI=""  D
 .S SDNOD=SDBLKS(SDI)
 .Q:$P($P(SDNOD,U,1),".",1)'=SDAY
 .D RESNB1(SDAB,SDCL,$P(SDNOD,U,1),$P(SDNOD,U,2),$P(SDNOD,U,3),$P(SDNOD,U,4))
 Q
 ;
RESNBD(SDCL,SDAY,SDRESP) ;delete access blocks for the day
 Q
 ;
RESNB1(SDAB,SDCL,SDSTART,SDSTOP,SDSLOTS,SDAT,SDRES)  ;create/update 1 access block
 ;INPUT:
 ; SDAB    - global name for access blocks - "^TMP("_$J_",""SDEC"",""BLKS"")"
 ; SDCL    - clinic ID pointer to HOSPITAL LOCATION file
 ;           not used if SDRES is passed in
 ; SDSTART - start time in FM format
 ; SDSTOP  - stop time in FM format
 ; SDSLOTS - number of slots
 ; SDAT    - access type ID pointer to SDEC ACCESS TYPE file
 ; SDRES   - resource ID pointer to SDEC RESOURCE file
 ;           only update this resource if passed in
 ;           calling routine needs to make sure SDRES belongs to the proper HOSPITAL LOCATION (sdcl)
 S SDRES=$G(SDRES)
 D RESNBR
 Q
 ;only update passed in resource
 I SDRES'="" I $D(^SDEC(409.831,"ALOC",SDCL,SDRES)) D RESNBR  Q
 ;update all resources if no resource passed in
 I SDRES="" S SDRES=0 F  S SDRES=$O(^SDEC(409.831,"ALOC",SDCL,SDRES)) Q:SDRES'>0  D RESNBR
 Q
RESNBR  ;create access block for 1 resource
 N SDCNT,SDFDA,SDIEN,SDIENS,SDMSG
 S (SDCNT,@SDAB@("CNT"))=$G(@SDAB@("CNT"))+1
 S @SDAB@(SDCNT)=SDRES_U_SDSTART_U_SDSTOP_U_SDSLOTS_U_SDAT
 Q
 ;
DAY ;;^SUN^MON^TUES^WEDNES^THURS^FRI^SATUR
 ;
GETDAY(DATE)  ;return day of the week
 N DOW,RET
 S RET=""
 S DATE=$P($G(DATE),".",1)
 Q:DATE'?7N RET
 S DOW="S %=$E(DATE,1,3),I=$E(DATE,4,5),I=I>2&'(%#4)+$E(""144025036146"",I) X ""F %=%:-1:281 S I=%#4=1+1+I"" S RET=$P(""SUN^MON^TUES^WEDNES^THURS^FRI^SATUR"",U,$E(DATE,6,7)+I#7+1)_""DAY"""
 X DOW
 Q RET
