PSO525AP ;BHAM ISC/SAB- encap II API to return suspended Rx data ; 04/07/05 10:30 am
 ;;7.0;OUTPATIENT PHARMACY;**213,229**;DEC 1997
 ;
SUS(LIST,DFN,IEN,RX,SDATE,EDATE) ;
 ;
 ;LIST: Subscript name used in ^TMP global [REQUIRED]
 ;DFN: Patient's IEN 
 ;IEN: Internal record number [optional]
 ;RX #: Pointer to Prescription file (#52) [optional]
 ;SDATE: Starting Suspense Date [optional]
 ;EDATE: Ending Suspense Date [optional]
 ;
 Q:$G(LIST)=""
 N DA,DR,PSOPOST,DIC,DIQ,ND,LK K ^TMP($J,LIST)
 I $G(IEN) D  G CLEAN
 .I $G(^PS(52.5,IEN,0))']"" S ^TMP($J,LIST,IEN,0)="-1^NO DATA FOUND" Q
 .D PROCESS
 I $G(RX)]"",'$G(IEN) S IEN=$O(^PS(52.5,"B",RX,0)) D  G CLEAN
 .I 'IEN Q
 .D PROCESS
 I $G(SDATE)!($G(EDATE)) D DATE G CLEAN
 I $G(DFN) F IEN=0:0 S IEN=$O(^PS(52.5,"AF",DFN,IEN)) Q:'IEN  D
 .I DFN'=$P($G(^PS(52.5,IEN,0)),"^",3) S ^TMP($J,LIST,IEN,0)="-1^NO DATA FOUND (MISMATCHED PATIENT)" Q
 .D PROCESS
 I '$G(DFN) F DFN=0:0 S DFN=$O(^PS(52.5,"AF",DFN)) Q:'DFN  F IEN=0:0 S IEN=$O(^PS(52.5,"AF",DFN,IEN)) Q:'IEN  D PROCESS
CLEAN I $G(DFN),'$O(^TMP($J,LIST,DFN,0)) S ^TMP($J,LIST,DFN,0)="-1^NO DATA FOUND"
 I '$G(DFN),'$O(^TMP($J,LIST,0)) S ^TMP($J,LIST,0)="-1^NO DATA FOUND"
 K DA,DR,DIC,PSOPOST,DIQ,LDATE
 Q
PROCESS ;
 I $G(^PS(52.5,IEN,0))']"" S ^TMP($J,LIST,IEN,0)="-1^NO DATA FOUND" Q
 I $G(DFN),DFN'=$P($G(^PS(52.5,IEN,0)),"^",3) Q
 K PSOPOST S DIC=52.5,DA=IEN,DR=".01;.02;.03;.05;2;3;9",DIQ="PSOPOST",DIQ(0)="IE" D EN^DIQ1
 F DR=.01,.02,.03,.05,2,3,9 D
 .I DR=.01 S ^TMP($J,LIST,"B",PSOPOST(52.5,DA,DR,"I"),IEN)=""
 .I DR=.03 S ^TMP($J,LIST,PSOPOST(52.5,DA,.03,"I"),0)=$G(^TMP($J,LIST,PSOPOST(52.5,DA,.03,"I"),0))+1
 .I PSOPOST(52.5,DA,DR,"E")'=PSOPOST(52.5,DA,DR,"I") S ^TMP($J,LIST,PSOPOST(52.5,DA,.03,"I"),IEN,DR)=PSOPOST(52.5,DA,DR,"I")_"^"_PSOPOST(52.5,DA,DR,"E") Q
 .S ^TMP($J,LIST,PSOPOST(52.5,DA,.03,"I"),IEN,DR)=PSOPOST(52.5,DA,DR,"I")
 K DA,DR,PSOPOST,DIC,DIQ
 Q
DATE ;date range
 I $G(SDATE) S LDATE=SDATE-1 D  Q
 .I $G(EDATE) F  S LDATE=$O(^PS(52.5,"C",LDATE)) Q:'LDATE!(LDATE>EDATE)  F IEN=0:0 S IEN=$O(^PS(52.5,"C",LDATE,IEN)) Q:'IEN  D PROCESS
 .I '$G(EDATE) F  S LDATE=$O(^PS(52.5,"C",LDATE)) Q:'LDATE  F IEN=0:0 S IEN=$O(^PS(52.5,"C",LDATE,IEN)) Q:'IEN  D PROCESS
 I $G(EDATE) S LDATE=0 F  S LDATE=$O(^PS(52.5,"C",LDATE)) Q:'LDATE!(LDATE>EDATE)  F IEN=0:0 S IEN=$O(^PS(52.5,"C",LDATE,IEN)) Q:'IEN  D PROCESS
 Q
