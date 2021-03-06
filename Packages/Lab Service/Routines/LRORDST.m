LRORDST ;SLC/CJS/WTY - SET THE ORDER AND ACCESSION ;5/16/05
 ;;5.2;LAB SERVICE;**100,107,121,153,202,290,291,359,362**;Sep 27, 1994;Build 11
 ;Called to create orders and accessions from local LROT array
 D DT
 K ZTSK
 I $P(LRPARAM,U,4),'$D(LRNOLABL),'$D(LRTJ),LRORDR="" D ^LRLABLIO
 F LRSAMP=-1:0 S LRSAMP=$O(LROT(LRSAMP)) Q:LRSAMP=""  F LRSPEC=-1:0 S LRSPEC=$O(LROT(LRSAMP,LRSPEC)) Q:LRSPEC=""  D ZX
 ;
 I $D(LRLABLIO),$D(LRLBL) D
 . S ZTRTN="ENT^LRLABLD",ZTDESC="LAB LABELS",ZTDTH=$H
 . S ZTIO=LRLABLIO,ZTSAVE("LRLBL(")=""
 . D ^%ZTLOAD K LRLBL
 ;
 I $D(LRSLIP) F I1=0:0 S I1=$O(LROT(I1)) Q:I1<1  F I2=-1:0 S I2=$O(LROT(I1,I2)) Q:I2=""  S LRSN=LROT(I1,I2,"SN") D WCP
 K LRLBL,ZTSK
 ;Clean-up CIDC variables
 K LRBEX,LRBEY,LRBEAR,LRBERF
 Q
 ;
 ;
ZX K:$G(LRORDR)'="P" LRCOM,LRTCOM
 N I,COMB,LRCPRS
 I $D(LRGCOM) S LRCCOM=LRGCOM D RCS^LRORD2
 S LRSXN=0,I=0
 F  S I=$O(LROT(LRSAMP,LRSPEC,I)) Q:I<1  S LRSXN=LRSXN+1
 L +^LRO(69,LRODT,1)
 S LRSN=1+$P($G(^LRO(69,LRODT,1,0)),U,3)
 S LRSUM=1+$P($G(^LRO(69,LRODT,1,0)),U,4)
ZSN N I
 F  Q:'$D(^LRO(69,LRODT,1,LRSN,0))  S LRSN=LRSN+1
 S ^LRO(69,LRODT,1,LRSN,0)=LRDFN_"^"_DUZ_"^"_(+LRSAMP)_"^"_$S($L($G(LRLWC)):LRLWC,$L(LRORDR):LRORDR,1:"SP")_"^"_LRNT_"^"_LRPRAC_"^"_LRLLOC_"^"_LRODT_$S(+LRORDTIM:"."_LRORDTIM,1:"")_"^"_LROLLOC_"^^"_$G(LRORIFN)
 S ^LRO(69,LRODT,1,LRSN,2,0)="^69.03PA^"_LRSXN_U_LRSXN
 S ^LRO(69,LRODT,1,0)="^69.01PA^"_LRSN_U_LRSUM
 L -^LRO(69,LRODT,1)
 S ^LRO(69,LRODT,1,"AA",LRDFN,LRSN)=""
 S ^LRO(69,LRODT,1,"AC",LRLLOC,LRSN)=""
 S LROT(LRSAMP,LRSPEC,"SN")=LRSN
 S ^LRO(69,"D",LRDFN,LRODT,LRSN)=""
 S COMB=$P($G(^LRO(69,LRODT,1,LRSN,1)),"^",7)
 I $S($G(LRORDR)="":1,$G(LRORDR)="P":1,1:0) D
 . S $P(^LRO(69,LRODT,1,LRSN,1),"^")=$P(LRCDT,"^")
 . S $P(^LRO(69,LRODT,1,LRSN,1),"^",2)=$P(LRCDT,"^",2)
 . S $P(^LRO(69,LRODT,1,LRSN,1),"^",4)="C"
 . S $P(^LRO(69,LRODT,1,LRSN,1),"^",8)=DUZ(2)
 . ;S ^LRO(69,LRODT,1,LRSN,1)=LRCDT_"^^C^^^"_COMB_"^"_DUZ(2)
 . I $G(LRORDR)'="P" S ^LRO(69,"AA",+$G(LRORD),LRODT_"|"_LRSN)=""
 . ; PIECE 4 INDICATED COLLECTED (NOTE: LRCDT HAS 2 PIECES)
 I LRSPEC'="" S ^LRO(69,LRODT,1,LRSN,4,0)="^69.02PA^1^1",^(1,0)=LRSPEC
 S ^LRO(69,LRODT,1,LRSN,.1)=LRORD,^LRO(69,"C",+LRORD,LRODT,LRSN)="",LRJ=0
 F LRTN=1:1 S LRJ=$O(LROT(LRSAMP,LRSPEC,LRJ)) Q:LRJ<1  D ZSN1
 I $D(LRCOM(LRSAMP,LRSPEC)),LRCOM(LRSAMP,LRSPEC) D
 . N I
 . S X=LRCOM(LRSAMP,LRSPEC)
 . S ^LRO(69,LRODT,1,LRSN,6,0)="^69.04W^"_X_U_X
 . F I=1:1:X S ^LRO(69,LRODT,1,LRSN,6,I,0)=LRCOM(LRSAMP,LRSPEC,I)
 D NEW^LR7OB1(LRODT,LRSN,"SN",$G(LRNATURE),.LRCPRS)
 I LRORDR="LC"!(LRORDR="I") D
 . S ION=$P($G(^LAB(69.9,1,3.5,+DUZ(2),0)),U,2)
 . S:ION="" ION=$P($G(^LAB(69.9,1,3)),U,4)
 . I ION'="",(LRORDR="LC"!(LRORDR="I")) D ^LROW2P
 I LRORDR="I" S ION=$P($G(^LAB(69.9,1,7,DUZ(2),0)),U,3) I ION'="" D ^LROW2P
 I $S(LRORDR="":1,LRORDR="P":1,1:0) D ^LRWLST
 Q
 ;
ZSN1 ;
 N LRORIFN
 S LRTSTS=LROT(LRSAMP,LRSPEC,LRJ),LRCPRS(LRTSTS)=""
 S ^LRO(69,LRODT,1,LRSN,2,LRTN,0)=LRTSTS_"^"_$S($D(LROT(LRSAMP,LRSPEC,LRJ,1)):LROT(LRSAMP,LRSPEC,LRJ,1),1:LROUTINE)
 D:+LRDPF=2&($G(LRSS)'="BB")&('$$CHKINP^LRBEBA4(LRDFN,LRODT))  ;CIDC
 .D SACC^LRBEBA2(LRODT,LRSN,LRTN,LRSAMP,LRSPEC,LRTSTS,.LRBEX)
 I $G(LRORIFN) S $P(^LRO(69,LRODT,1,LRSN,2,LRTN,0),"^",7)=LRORIFN ;OE/RR 2.5
 S $P(^LRO(69,LRODT,1,LRSN,2,LRTN,0),"^",9,10)="IP^L"
 S ^LRO(69,LRODT,1,LRSN,2,"B",LRTSTS,LRTN)=""
 S ^LRO(69,"AT",LRDFN,LRTSTS,LRSPEC,LRODT)="",^(-LRODT)=""
 D RCOM:$D(LROT(LRSAMP,LRSPEC,LRJ,2))
 D:$O(LRTCOM(LRTSTS,0)) TCOM^LROW2A(LRTSTS)
 Q
 ;
 ;
RCOM ; Required comment
 N LRTSTN,LRTEST
 S LRTSTN=1,LRTEST(LRTSTN)=LRTSTS
 S LRCCOM="~For Test: "_$P(^LAB(60,LRTSTS,0),U)_"   "_$P(^LAB(62,LRSAMP,0),U) S:$P(^(0),U)'=$P(^LAB(61,LRSPEC,0),U) LRCCOM=LRCCOM_"   "_$P(^LAB(61,LRSPEC,0),U) I $S('$D(DUZ("AG")):1,"ARMYAFN"'[DUZ("AG"):1,1:0) W !,LRCCOM
 S LREXP=LROT(LRSAMP,LRSPEC,LRJ,2)
 D RCS^LRORD2,RCOM^LRORD2
 I $G(LRKIL) S DA(1)=LRODT,DA=LRSN,DIK="^LRO(69,"_DA(1)_",1," D ^DIK Q
 I LRCCOM="",$D(LRCOM(LRSAMP,LRSPEC)) S X=+LRCOM(LRSAMP,LRSPEC) I $D(LRCOM(LRSAMP,LRSPEC,X)),LRCOM(LRSAMP,LRSPEC,X)["~For Test:" K LRCOM(LRSAMP,LRSPEC,X) S LRCOM(LRSAMP,LRSPEC)=X-1
 Q
 ;
 ;
OLD ; to allow unchanged routines to still work, from LROE1, LRPHSET1
 N LRNT
 D DT,NOW^%DTC
 S LRNT=%
 I $P(LRPARAM,U,4),'$D(LRNOLABL),'$D(LRTJ) D ^LRLABLIO
 D ^LRWLST
 Q
 ;
 ;
WCP Q:$D(LRNCWL)
 S:$D(LRORDER) ION=LRORDER
 I '$D(LRORDER) K %ZIS S IOP="HOME",%ZIS="NQ" D ^%ZIS G:POP WCP1 S X=ION,DIC(0)="EQ",DIC=3.5 D ^DIC G:Y<1 WCP1 G:'$D(^%ZIS(1,+Y,99)) WCP1 G:'$L($P(^(99),U)) WCP1 S IOP=$P(^%ZIS(1,$P(^(99),U),0),U),%ZIS="NQ" D ^%ZIS G:POP WCP1 K %ZIS,IOP
WCP2 S LRORDER=ION
 I IO(0)=IO R !!,"Press RETURN to continue...",X:DTIME S IOP=LRORDER,%ZIS="" D ^%ZIS D ENT2^LROW2P Q
 I IO'=IO(0) D ^LROW2P Q
 Q
 ;
 ;
DT S DT=$$DT^XLFDT()
 Q
 ;
 ;
WCP1 S %ZIS="NQ",%ZIS("A")="ORDER COPY DEVICE:"
 D ^%ZIS
 Q:POP
 G WCP2
 ;
 ;
OR ;OE/RR 2.5
 Q  ;Following logic not required - 2.5 is obsolete version
 N LRORDR
 Q:$G(LRORDRR)="R"
 S LRY=$S($D(LROT(LRSAMP,LRSPEC,LRJ,1)):LROT(LRSAMP,LRSPEC,LRJ,1),1:LROUTINE),LRI=1,LRTEST(LRI)=LRTSTS_"^"_LRY,LRORDR=$S($L($G(LRLWC)):LRLWC,1:"")
 D SET^LROR
 Q
