PRCFACR0 ;WISC@ALTOONA/CTB-CONTINUATION OF PRCFACR ;4/30/93  3:05 PM
V ;;5.1;IFCAP;;Oct 20, 2000
 ;Per VHA Directive 10-93-142, this routine should not be modified.
 I '$D(^PRCF(421.2,"AD",PRCFKEY)) W !!,"NO BATCHES SELECTED  OPTION ABORTED",$C(7) G OUT
 F I=1:1 S PBATN=$O(^PRCF(421.2,"AD","Y",0)) Q:+PBATN=0  S PBAT=$P(^PRCF(421.2,PBATN,0),"^") D BLIST K ^PRCF(421.2,"AD","Y",PBATN) S I=1
 S ZTSAVE("PRCFRT")="",ZTSAVE("PRCFASYS")="",ZTSAVE("PRCFKEY")="",ZTRTN="^PRCFACR1",ZTDESC="TRANSMIT "_$S(PRCFASYS["LOG":"LOG ",PRCFASYS["ISM":"ISM ",PRCFASYS["EDI":"EDI ",1:"")_"CODE SHEETS" D ^PRCFQ
OUT K %,%DT,%H,%Y,A,B,C,DIC,DIJ,DQTIME,ER,FAIL,I,N,POP,POK,PTR,PTRN,PBAT,PBATN,PFLAG,RT,X,X1,XMDUZ,XMDT,XMM,XMKK,XMLOCK,XMR,XMSUB,XMT,XMTEXT,IOX,IOY,XMZ,Y,^PRCF("LIST") Q
 F I=1:1 S PBATN=$O(^PRCF(421.2,"AD","Y",0)) Q:+PBATN=0  S PBAT=$P(^PRCF(421.2,PBATN,0),"^") D BLIST K ^PRCF(421.2,"AD","Y",PBATN) S I=1
BLIST I $D(^PRCF(423,"AD",PBAT)) S N=0 F I=1:1 S N=$O(^PRCF(423,"AD",PBAT,N)) Q:N'=+N  S ^PRCF(423,"AK","Y",N)="",$P(^PRCF(423,N,"TRANS"),"^",11)="Y" W "."
 I +PBATN>0 S DA=PBATN D Q15
 Q
Q15 I '$D(PRC("PER")) D DUZ^PRCFSITE Q:'%
 S:$D(P) PX=P
 D NOW^%DTC
 S XDT=%
 S X1=$P(PRC("PER"),"^",2)
 S $P(^PRCF(421.2,DA,0),"^",4+PRCFRT)=XDT
 K XDT
 S MESSAGE=""
 I PRCFRT=0 D ENCODE^PRCFAES1(DA,DUZ,.MESSAGE)
 I PRCFRT=3 D ENCODE^PRCFAES2(DA,DUZ,.MESSAGE)
 K MESSAGE
 K P S:$D(PX) P=PX Q
 Q
