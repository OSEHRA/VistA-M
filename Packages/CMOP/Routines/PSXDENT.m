PSXDENT ;BIR/WRT-Set Xref for ID ;[ 10/19/98  7:13 AM ]
 ;;2.0;CMOP;**18,19**;11 Apr 97
 D START K PSXB,PSXID,PSXNDF,PSXVAPN
 Q
START F PSXB=0:0 S PSXB=$O(^PSDRUG("AQ",PSXB)) Q:'PSXB  I $P(^PSDRUG(PSXB,3),"^",1)=1 S PSXNDF=$P(^PSDRUG(PSXB,"ND"),"^",1),PSXVAPN=$P(^PSDRUG(PSXB,"ND"),"^",3),ZX=$$PROD2^PSNAPIS(PSXNDF,PSXVAPN),PSXID=$P($G(ZX),"^",2) K ZX D SETT
 Q
SETT S $P(^PSDRUG(PSXB,"ND"),"^",10)=PSXID,^PSDRUG("AQ1",PSXID,PSXB)=""
 Q
