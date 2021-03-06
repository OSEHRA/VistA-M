PRCPHLUT ;WISC/CC-Process activity information from file 447.1 ;4/00
V ;;5.1;IFCAP;**1,24**;Oct 20, 2000
 ;Per VHA Directive 10-93-142, this routine should not be modified.
 ;
PROCESS(PRCPDA,PRCPDONE) ;
 N %,ERR,ITEM,ITEMDATA,PRCPAMT,PRCPDATA,PRCPHLUT,PRCPITDA
 N PRCPITEM,PRCPITNM,PRCPLEFT,PRCPREAS,PRCPREC,PRCPSEC,PRCPSSFL,PRCPTIME
 N PRCPUSER,TRANORDR,TYPE
 ;
 S PRCPDONE=0
 S PRCPDATA=^PRCP(447.1,PRCPDA,0)
 S PRCPHL7=$P(PRCPDATA,"^",6)_".447.1"
 S PRCPSEC=$P(PRCPDATA,"^",3)
 S PRCPTIME=$P(PRCPDATA,"^",8)
 S PRCPREC=$P(PRCPDATA,"^",9)
 S PRCPUSER=$P(PRCPDATA,"^",10)
 S PRCPREAS=$P(PRCPDATA,"^",11)
 S PRCPACTV=$P(PRCPREAS,"~",1)
 ;
 S PRCPITDA=0
 S PRCPITDA=$O(^PRCP(447.1,PRCPDA,1,PRCPITDA)) I '+PRCPITDA S ERR="6F" G ERR ; no item info
 S PRCPDATA=^PRCP(447.1,PRCPDA,1,PRCPITDA,0)
 S PRCPAMT=$P(PRCPDATA,"^",3) ; REFILL QTY - patient issue units
 I PRCPACTV="USGE"!(PRCPACTV="DISP")!(PRCPACTV="ADJD") S PRCPAMT=-PRCPAMT
 S PRCPITEM=$P(PRCPDATA,"^",1)
 S PRCPITNM=$P(PRCPDATA,"^",4)
 S PRCPLEFT=$P(PRCPDATA,"^",2) ; patient issue units
 ;
 I '$D(^PRCP(445,PRCPSEC)) S ERR="3A" G ERR ; secondary not in GIP
 I $P(^PRCP(445,PRCPSEC,0),"^",3)'="S" S ERR="3B" G ERR ; not a secondary
 I '$D(^PRCP(445,PRCPSEC,1,PRCPITEM)) S ERR="6C" G ERR
 I $P(^PRCP(445,PRCPSEC,1,PRCPITEM,0),"^",9)'>0 S ERR="6D" G ERR ; is item a supply station item?
 I $P($G(^PRCP(445,PRCPSEC,5)),"^",1)']"" S ERR="3F" G ERR ; not a supply station secondary
 ; compare name in 445 to name sent, CONTINUE
 S PRCPSSFL=$P(^PRCP(445.5,$P(^PRCP(445,PRCPSEC,5),"^",1),0),"^",2)
 I PRCPSSFL="O",$P(^PRC(441,PRCPITEM,0),"^",2)'=PRCPITNM D NAME^PRCPHL70(PRCPSEC,PRCPITEM,PRCPITNM,PRCPSSFL,PRCPHL7)
 I PRCPSSFL="S",$G(^PRCP(445,PRCPSEC,1,PRCPITEM,6))'=PRCPITNM D NAME^PRCPHL70(PRCPSEC,PRCPITEM,PRCPITNM,PRCPSSFL,PRCPHL7)
 ;
UPDATE S ITEMDATA=$G(^PRCP(445,PRCPSEC,1,PRCPITEM,0))
 I ITEMDATA="" S ERR="6C" G ERR ; send message
 S TYPE="U"
 I $E($P(PRCPREAS,"~",1),1,3)="ADJ"!($P(PRCPREAS,"~")="DISP") S TYPE="A"
 S PRCPHLUT("INVVAL")=$J(PRCPAMT*$P(ITEMDATA,"^",22),0,2)
 S PRCPHLUT("DATE")=PRCPTIME
 S PRCPHLUT("ITEM")=ITEMDATA
 S PRCPHLUT("REASON")=$P(PRCPREAS,"~",1)_":"_$P(PRCPREAS,"~",2)
 S PRCPHLUT("RECIPIENT")=$TR(PRCPREC,"abcdefghijklmnopqrstuvwxyz","ABCDEFGHIJKLMNOPQRSTUVWXYZ")
 S PRCPHLUT("USER")=PRCPUSER
 S PRCPHLUT("SELVAL")=PRCPHLUT("INVVAL")
 S PRCPHLUT("QTY")=PRCPAMT
 ;
 ; save values into GIP files
 D UPDATE^PRCPHL1(PRCPSEC,PRCPITEM,PRCPLEFT,.PRCPHLUT,TYPE)
 ;
 ; check expected qty remaining 
 S ITEMDATA=$G(^PRCP(445,PRCPSEC,1,PRCPITEM,0))
 I $P(ITEMDATA,"^",7)'=PRCPLEFT D
 . D QTYDISC^PRCPHL70(PRCPSEC,PRCPITEM,PRCPITNM,$P(ITEMDATA,"^",7),PRCPLEFT,PRCPHL7)
 ;
 ;
Q S PRCPDONE=1
 Q
 ;
ERR ;
 N NUMBER
 S NUMBER=ERR
 S PRCPHLUT("SIPNAME")="" I $D(PRCPSEC) S PRCPHLUT("SIPNAME")=$$INVNAME^PRCPUX1(PRCPSEC)
 S PRCPHLUT("ITEM")="" I $D(PRCPITEM) S PRCPHLUT("ITEM")=PRCPITEM
 S PRCPHLUT("NAME")="" I $D(PRCPITNM) S PRCPHLUT("NAME")=PRCPITNM
 S PRCPHLUT("QTY")="" I $D(PRCPAMT) S PRCPHLUT("QTY")=PRCPAMT
 S PRCPHLUT("LEFT")="" I $D(PRCPLEFT) S PRCPHLUT("LEFT")=PRCPLEFT
 S PRCPHLUT("ACTIVITY")=""
 I $D(PRCPREAS) S PRCPHLUT("ACTIVITY")=$E(PRCPREAS,1,4)
 ; . I $E(PRCPREAS,1,4)="USGE" S PRCPHLUT("ACTIVITY")="USAGE"
 ; . I $E(PRCPREAS,1,4)="RTRN" S PRCPHLUT("ACTIVITY")="RETURNED ITEM"
 ; . I $E(PRCPREAS,1,4)="DISP" S PRCPHLUT("ACTIVITY")="DISPOSED ITEM"
 ; . I $E(PRCPREAS,1,4)="ADJI" S PRCPHLUT("ACTIVITY")="ADJUSTED INVENTORY UP"
 ; . I $E(PRCPREAS,1,4)="ADJD" S PRCPHLUT("ACTIVITY")="ADJUSTED INVENTORY DOWN"
 S PRCPHLUT("RECIPIENT")="an unspecified patient" I $D(PRCPREC) S PRCPHLUT("RECIPIENT")=PRCPREC
 S PRCPHLUT("USER")="" I $D(PRCPUSER) S PRCPHLUT("USER")=PRCPUSER
 D ERR^PRCPHLM0(ERR,"PRCP_BAD_ACTIVITY",PRCPSEC,.PRCPHLUT,PRCPHL7)
 G Q
