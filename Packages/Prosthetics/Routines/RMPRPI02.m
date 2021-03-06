RMPRPI02 ;HINCIO/ODJ - PIP Report APIs ;9/18/02  15:13
 ;;3.0;PROSTHETICS;**61**;Feb 09, 1996
 ;
 Q
 ;
 ; LBAL - returns a ^TMP array structured as follows:-
 ;        ^TMP($J,N,L,H,I,D,S)=data (^ delimiter)
 ;
 ;        where N = ^TMP array name (eg. RMPRPI01)
 ;              L = Location (NAME)
 ;              H = HCPCS code (eg. L5000)
 ;              I = Item number (eg. 1)
 ;              D = full FM date (eg. 3010309.135415)
 ;              S = Source (C - comercial, V - VA)
 ;
 ;      data pc 1 = Quantity on hand
 ;              2 = Value
 ;              3 = Unit Cost
 ;              4 = Vendor Desc.
 ;              5 = HCPCS Item description
 ;              6 = Location Desc.
 ;              7 = Re-Order level
 ;
 ; Inputs:
 ;    RMPRNM   - Name for ^TMP array
 ;    RMPRSTN  - Station number (ptr. ^DIC(4))
 ;    RMPRLOCA - Array of Location iens, or * for all Locations.
 ;
 ; Outputs:
 ;    RMPRERR  - 0 if no errors, +ve int. if errors
 ;    ^TMP     - (see above)
 ;
LBAL(RMPRNM,RMPRSTN,RMPRLOCA) ;
 N RMPRERR,RMPRH,RMPR,RMPROLD,RMPREOF,RMPRE,RMPRT,RMPR6E,RMPR11E,RMPR6I
 N RMPR4,RMPR5
 S RMPRERR=0
 I $G(RMPRNM)="" S RMPRNM="RMPRPI02"
 I $G(RMPRSTN)="" S RMPRERR=1 G LBALX
 I '$D(RMPRLOCA)="" S RMPRLOCA="*"
 K ^TMP($J,RMPRNM)
 S RMPR("STATION")=RMPRSTN
 I $G(RMPRLOCA)="*" G LBAL2
 S RMPRH=""
LBAL1 S RMPRH=$O(RMPRLOCA(RMPRH))
 I RMPRH="" G LBALX
 K RMPR
 S RMPR("STATION")=RMPRSTN
 S RMPR("LOCATION")=RMPRH
LBAL2 S RMPRERR=$$NEXT^RMPRPIXE(.RMPR,"XSLHIDS","",1,.RMPROLD,.RMPREOF)
 I RMPRERR W !,"*** ERROR IN RMPRPIXE ROUTINE!!!",! G LBALX
 I RMPREOF G LBAL1
 I $G(RMPRLOCA)'="*",RMPROLD("LOCATION")'=RMPR("LOCATION") G LBAL1
 I RMPROLD("STATION")'=RMPR("STATION") G:$G(RMPRLOCA)="*" LBALX G LBAL1
 K RMPRE S RMPRE("IEN")=RMPR("IEN")
 S RMPRERR=$$GET^RMPRPIX7(.RMPRE)
 I RMPRERR W !,"*** ERROR IN RMPRPIX7 ROUTINE!!!",! G LBALX
 K RMPR6E
 S RMPR6E("HCPCS")=RMPR("HCPCS")
 S RMPR6E("ITEM")=RMPR("ITEM")
 S RMPR6E("DATE&TIME")=RMPR("DATE&TIME")
 S RMPRERR=$$GET^RMPRPIX6(.RMPR6E)
 K RMPR11E
 S RMPR11E("HCPCS")=RMPR("HCPCS")
 S RMPR11E("ITEM")=RMPR("ITEM")
 S RMPR11E("STATION")=RMPR("STATION")
 S RMPRERR=$$GET^RMPRPIX1(.RMPR11E)
 I RMPRERR W !,"*** ERROR IN RMPRPIX1 ROUTINE!!!",! G LBALX
 K RMPR11I
 S RMPRERR=$$ETOI^RMPRPIX1(.RMPR11E,.RMPR11I)
 I RMPRERR W !,"*** ERROR IN RMPRPIX1 ROUTINE!!!",! G LBALX
 S RMPRT=""
 S $P(RMPRT,"^",1)=RMPRE("QUANTITY")
 S $P(RMPRT,"^",2)=RMPRE("VALUE")
 I +RMPRE("QUANTITY") D
 . S $P(RMPRT,"^",3)=$J(RMPRE("VALUE")/RMPRE("QUANTITY"),0,2)
 . Q
 S $P(RMPRT,"^",4)=RMPR6E("VENDOR")
 S $P(RMPRT,"^",5)=RMPR11E("DESCRIPTION")
 S $P(RMPRT,"^",6)=RMPRE("LOCATION")
 K RMPR4
 S RMPR4("IEN")=$O(^RMPR(661.4,"ASLHI",RMPR11I("STATION"),RMPR("LOCATION"),RMPR11I("HCPCS"),RMPR11I("ITEM"),""))
 ;next line added
 G:RMPR4("IEN")="" LBALX
 S RMPRERR=$$GET^RMPRPIX4(.RMPR4,,)
 S $P(RMPRT,"^",7)=RMPR4("RE-ORDER QTY")
 S ^TMP($J,RMPRNM,RMPRE("LOCATION"),RMPR("HCPCS"),RMPR("ITEM"),RMPR("DATE&TIME"),RMPR11I("SOURCE"))=RMPRT
 G LBAL2
LBALX Q RMPRERR
 ;
PROC(RMSUB,RS,RMPRI) ;
 N RMDAT,RMPRH,RMPR,RMPROLD,RMPREOF,RMPRE,RMPRT,RMPR6E,RMPR11E,RMPR6I
 N RMST2,RMTY,RM6,RM11,RMIT2,RMLOC2,RMII,I,J,K,RMIDES,RMINS,RM11DA
 I $G(RMPRI)="*" D ALL
 D LOC
NOINV ;
 ;check for other items not currently in the inventory but previously in.
 S I=""
 F  S I=$O(^RMPR(661.11,"ASHI",RS,I)) Q:I=""  F J=0:0 S J=$O(^RMPR(661.11,"ASHI",RS,I,J)) Q:J'>0  D
 .F K=0:0 S K=$O(^RMPR(661.11,"ASHI",RS,I,J,K)) Q:K'>0  D
 ..Q:'$D(^RMPR(661.11,K,0))
 ..S RM11=$G(^RMPR(661.11,K,0))
 ..Q:RM11=""
 ..Q:$D(^TMP($J,"RMTMP",I,J))
 ..S RMIDES=$P(RM11,U,3)
 ..Q:($P(RM11,U,9))=1
 ..;check what location this HCCPS/ITEM belongs to previously. 
 ..F RMII=0:0 S RMII=$O(^RMPR(661.6,"B",I,RMII)) Q:RMII'>0  D
 ...Q:'$D(^RMPR(661.6,RMII,0))
 ...S RM6=$G(^RMPR(661.6,RMII,0)),RMIT2=$P(RM6,U,11)
 ...S RMTY=$P(RM6,U,4),RMST2=$P(RM6,U,13),RMLOC2=$P(RM6,U,14)
 ...Q:'$G(RMLOC2)
 ...I $G(RMPRI)'="*",'$D(RMPRI(RMLOC2)) Q
 ...Q:(RMST2'=RS)!(RMIT2'=J)!(RMTY'=1)!(RMLOC2="")
 ...Q:'$D(^RMPR(661.5,RMLOC2,0))
 ...S RMLOC2N=$P(^RMPR(661.5,RMLOC2,0),U,1)
 ...Q:$D(^TMP($J,RMSUB,RMLOC2N,I,J,1))
 ...S ^TMP($J,RMSUB,RMLOC2N,I,J,1)="^^^^"_RMIDES
 ;EXIT
 Q
 ;
ALL ;process all LOCATION in a station
 S I=""
 F  S I=$O(^RMPR(661.7,"B",I)) Q:I=""  F J=0:0 S J=$O(^RMPR(661.7,"B",I,J)) Q:J'>0  D CRE
 Q
LOC ;process certain LOCATION.
 F I=0:0 S I=$O(RMPRI(I)) Q:I'>0  F J=0:0 S J=$O(^RMPR(661.7,"C",I,J)) Q:J'>0  D CRE
 Q
 ;
CRE ;create the tmp global
 S RMDAT=$G(^RMPR(661.7,J,0))
 Q:RS'=$P(RMDAT,U,5)
 S RMUNIT=""
 S RMHC=$P(RMDAT,U,1)
 S RMDT=$P(RMDAT,U,2)
 S RMSE=$P(RMDAT,U,3)
 S RMHI=$P(RMDAT,U,4)
 S RMST=$P(RMDAT,U,5)
 S RMLO=$P(RMDAT,U,6)
 S RMQU=$P(RMDAT,U,7)
 S RMVA=$P(RMDAT,U,8)
 S RMUN=$P(RMDAT,U,9)
 S:$G(RMUN) RMUNIT=$$GETUNI^RMPRPIU0(RMUN)
 S RMUC=RMVA
 I RMVA,RMQU S RMUC=RMVA/RMQU
 S RMRO=0
 S RMSO="**"
 S (RMVEN,RMLOC,RMIDES)="         "
 I $G(RMLO),$D(^RMPR(661.5,RMLO,0)) S RMLOC=$P(^RMPR(661.5,RMLO,0),U,1)
 S RM11=$O(^RMPR(661.11,"ASHI",RS,RMHC,RMHI,0))
 Q:'$G(RM11)
 Q:'$D(^RMPR(661.11,RM11,0))
 S RM11DA=$G(^RMPR(661.11,RM11,0))
 S RMSO=$P(RM11DA,U,5),RMIDES=$P(RM11DA,U,3),RMINS=$P(RM11DA,U,9)
 Q:RMINS=1
 S RM4=$O(^RMPR(661.4,"ASLHI",RS,RMLO,RMHC,RMHI,0))
 I $G(RM4),$D(^RMPR(661.4,RM4,0)) S RMRO=$P(^RMPR(661.4,RM4,0),U,4)
 S RMHCIEN=$O(^RMPR(661.1,"B",RMHC,0))
 I RMHCIEN,$D(^RMPR(661.1,RMHCIEN,0)) S RMHDES=$P(^RMPR(661.1,RMHCIEN,0),U,2)
 F K=0:0 S K=$O(^RMPR(661.6,"C",RMDT,K)) Q:K'>0  S RM6=$G(^RMPR(661.6,K,0)) D
 .Q:RMHC'=$P(RM6,U,1)
 .I (RMHC=$P(RM6,U,1)),(RMSE=$P(RM6,U,3)) S RMV=$P(RM6,U,12)
 .S:$G(RMV) RMVEN=$$GETVEN^RMPRPIU0(RMV)
 S RMPRT=RMQU_"^"_RMVA_"^"_RMUC_"^"_RMVEN_"^"_RMIDES_"^"_RMLOC_"^"_RMRO
 S ^TMP($J,RMSUB,RMLOC,RMHC,RMHI,RMDT)=RMPRT_"^"_RMUNIT_"^"_RMSO
 S ^TMP($J,"RMTMP",RMHC,RMHI)=""
 Q
