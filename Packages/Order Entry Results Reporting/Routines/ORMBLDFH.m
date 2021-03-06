ORMBLDFH ; SLC/MKB - Build outgoing Dietetics ORM msgs ;11/17/00  11:06
 ;;3.0;ORDER ENTRY/RESULTS REPORTING;**73,97,215**;Dec 17, 1997
 ;
HL7DATE(DATE) ; -- FM -> HL7 format
 Q $$FMTHL7^XLFDT(DATE)  ;**97
 ;
PTR(NAME) ; -- Returns ptr value of prompt in Dialog file
 Q $O(^ORD(101.41,"AB",$E(NAME,1,63),0))
 ;
DIET ; -- new Diet order (incl NPO)
 I $P(OR0,U,12)'="I" D OPM Q
 N OI,START,STOP,OR3,TYPE,TEXT,QT,INST,J
 S START=$P($G(^OR(100,IFN,0)),U,8),STOP=$P($G(^(0)),U,9),OR3=$G(^(3))
 S TYPE=$G(ORDIALOG($$PTR("OR GTX DELIVERY"),1))
 S TEXT=$G(ORDIALOG($$PTR("OR GTX FREE TEXT 1"),1))
 S OI=$$PTR("OR GTX ORDERABLE ITEM")
 S QT="^^^"_$$HL7DATE(START)_U_$$HL7DATE(STOP),$P(ORMSG(4),"|",8)=QT
 I $$NPO(OI) S ORMSG(5)="ODS|D||^^^FH-5^NPO^99OTH|"_TEXT Q
 S INST=0,J=4 F  S INST=$O(ORDIALOG(OI,INST)) Q:INST'>0  D
 . S J=J+1,ORMSG(J)="ODS|Z"_TYPE_"||"_$$USID^ORMBLD(ORDIALOG(OI,INST))_"|"_TEXT
 I $P(OR3,U,5) S $P(ORMSG(4),"|",4)=$G(^OR(100,+$P(OR3,U,5),4))_"^FH"
 Q
 ;
NPO(Y) ; -- Returns 1 or 0, if diet ordered is NPO
 N X,I S X=$O(^ORD(101.43,"S.DIET","NPO",0)),I=$O(ORDIALOG(Y,0))
 Q (X=ORDIALOG(Y,I))
 ;
OPM ; -- new Outpatient Meal
 N START,STOP,SCH,DAYS,X,I,QT,OI,MEAL,TEXT,TYPE,DELVRY
 S START=$P($P(OR0,U,8),"."),STOP=$P($P(OR0,U,9),"."),TYPE="D"
 S SCH=$G(ORDIALOG($$PTR("OR GTX SCHEDULE"),1)),DAYS=""
 I '$L(SCH),START=DT,STOP=DT S TYPE="S" ;S=special, D=recurring meal
 I $G(SCH)="ONCE" D  ;reset to day for message
 . S X=$$UP^XLFSTR($$DOW^XLFDT(START))
 . S SCH=$S(X="THURSDAY":"R",X="SUNDAY":"X",1:$E(X))
 I $L(SCH) F I=1:1:$L(SCH) S X=$E(SCH,I),DAYS=DAYS_$S($L(DAYS):"~",1:"")_"QJ"_($F("MTWRFSX",X)-1)
 S QT=U_DAYS_"^^"_$$HL7DATE(START)_U_$$HL7DATE(STOP),$P(ORMSG(4),"|",8)=QT
 S OI=$$PTR("OR GTX ORDERABLE ITEM")
 S MEAL=$G(ORDIALOG($$PTR("OR GTX MEAL"),1)),MEAL=$TR(MEAL,"BNE","135")
 S TEXT=$G(ORDIALOG($$PTR("OR GTX FREE TEXT 1"),1))
 I $$NPO(OI) S ORMSG(5)="ODS|"_TYPE_"|"_MEAL_"|^^^FH-5^NPO^99OTH|"_TEXT Q
 S I=$$PTR("OR GTX DELIVERY"),DELVRY=$S($D(ORDIALOG(I,1)):$$EXT^ORCD(I,1),1:"")
 S ORMSG(5)="ODS|"_TYPE_"|"_MEAL_"|"_$$USID^ORMBLD(ORDIALOG(OI,1))_"|"_DELVRY
 Q
 ;
ADDN ; -- new Additional Diet order
 N TEXT D DATES
 S TEXT=$G(ORDIALOG($$PTR("OR GTX FREE TEXT 1"),1))
 S ORMSG(5)="ODS|D||^^^FH-6^ADDITIONAL ORDER^99OTH|"_TEXT
 Q
 ;
DATES ; -- get Start date for order IFN, QT field in msg
 N X,INPT S INPT=$S($P($G(^OR(100,+IFN,0)),U,12)="I":1,1:0)
 S X=$S(INPT:+$E($$NOW^XLFDT,1,12),1:+$G(ORDIALOG($$PTR("OR GTX DATE/TIME"),1)))
 D DATES^ORCSAVE2(+IFN,X) ;Stop date for outpts?
 S $P(ORMSG(4),"|",8)="^^^"_$$HL7DATE(X)
 Q
 ;
TF ; -- new Tubefeeding order
 N OI,STR,QT,TEXT,I,J,TF,X,QUAN,INT,DUR
 S OI=$$PTR("OR GTX ORDERABLE ITEM"),STR=$$PTR("OR GTX STRENGTH FH")
 S QT=$$PTR("OR GTX INSTRUCTIONS") D DATES
 S TEXT=$G(ORDIALOG($$PTR("OR GTX FREE TEXT 1"),1))
 S J=4,I=0 F  S I=$O(ORDIALOG(OI,I)) Q:I'>0  D
 . S TF=$$USID^ORMBLD(ORDIALOG(OI,I)),$P(TF,U,4)=$P(TF,U,4)_"-"_$G(ORDIALOG(STR,I))
 . S J=J+1,ORMSG(J)="ODS|ZE||"_TF_"|"_TEXT
 . S X=$G(ORDIALOG(QT,I)),QUAN=+X_"&"_$E($P(X," ",2))
 . S INT=$P($P(X,"/",2)," "),DUR=$P(X," X ",2)
 . S:DUR DUR=$S(DUR["H":"H",1:"X")_+DUR
 . S J=J+1,ORMSG(J)="ZQT||"_QUAN_U_INT_U_DUR
 Q
 ;
TRAY ; -- new Early/Late Tray order
 N START,STOP,ORL,MEAL,TYPE,OI,X,TIME,SCH,I,DAYS,BAGGED,ORPARAM,ORTIME
 S START=$P($G(^OR(100,IFN,0)),U,8),STOP=$P(^(0),U,9),ORL=$P(^(0),U,10)
 D EN1^FHWOR8(ORL,.ORPARAM),EN2^ORCDFH
 S MEAL=$G(ORDIALOG($$PTR("OR GTX MEAL"),1))
 S OI=$G(ORDIALOG($$PTR("OR GTX ORDERABLE ITEM"),1)),TYPE=$P($P($G(^ORD(101.43,+OI,0)),U)," ")
 S TIME=$G(ORDIALOG($$PTR("OR GTX MEAL TIME"),1)),TIME=+$G(ORTIME(OI,MEAL,"C",TIME))
 S:$G(ORDIALOG($$PTR("OR GTX YES/NO"),1)) BAGGED="bagged"
 S SCH=$G(ORDIALOG($$PTR("OR GTX SCHEDULE"),1)),DAYS="ONCE"
 I $L(SCH) S DAYS="" F I=1:1:$L(SCH) S X=$E(SCH,I),DAYS=DAYS_$S($L(DAYS):"~",1:"")_"QJ"_($F("MTWRFSX",X)-1)
 S $P(ORMSG(4),"|",8)=U_DAYS_"^^"_$$HL7DATE(START)_U_$$HL7DATE(STOP)
 S ORMSG(5)="ODT|"_$$UP^XLFSTR(TYPE)_"|^^^"_MEAL_$E(TYPE)_TIME_"^^99FHS"_"|"_$G(BAGGED)
 Q
 ;
IP ; -- new Isolation/Precaution order
 N NOW,IP S NOW=+$E($$NOW^XLFDT,1,12) D DATES^ORCSAVE2(+IFN,NOW)
 S $P(ORMSG(4),"|",8)="^^^"_$$HL7DATE(NOW)
 S IP=+$G(ORDIALOG($$PTR("OR GTX ISOLATION TYPE"),1))
 S ORMSG(5)="OBR||||||||||||^^^"_IP_U_$P($G(^FH(119.4,IP,0)),U)_"^99FHI"
 Q
 ;
CANCEL(TIME,DFN,LOC,PROV) ; -- Cancel outpatient meal time(s) where
 ;    TIME(n) = date.time
 N ORMSG,ORNOW,I,J S ORNOW=$$FMTHL7^XLFDT($$NOW^XLFDT)
 S ORMSG(1)=$$MSH^ORMBLD("ORM","FH")
 S ORMSG(2)=$$PID^ORMBLD(+$G(DFN))
 S ORMSG(3)=$$PV1^ORMBLD(+$G(DFN),"O",$G(LOC)),J=3
 S I=0 F  S I=$O(TIME(I)) Q:I<1  S X=TIME(I),J=J+1,ORMSG(J)="ORC|CA||"_X_"^FH||||||"_ORNOW_"|"_$G(DUZ)_"||"_$G(PROV)_"|||"_ORNOW
 D MSG^XQOR("OR EVSEND FH",.ORMSG)
 Q
