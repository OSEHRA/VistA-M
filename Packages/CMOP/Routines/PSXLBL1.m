PSXLBL1 ;BIR/HTW,BAB-CMOP Host Label Print..Set Up Variables ; [ 07/21/98  7:27 AM ]
 ;;2.0;CMOP;**13,18**;11 Apr 97
 S ^PSX(553,1,"P")="R"
 S:$D(ZTQUEUED) ZTREQ="@"
A S B="|",S="\S\",F="\F\",R="\R\",A="" S X=158 X ^%ZOSF("RM")
NTE S ^PSX(552.1,"APR",BATREF)=""
 F G=0:0 S G=$O(^PSX(552.1,N514,"S",G)) Q:'G  D
 .S NTE=^PSX(552.1,N514,"S",G,0),NZ=$P(NTE,B,2)
 .I NZ=1 S SITE=+$P(NTE,B,4),SNAME=$P($P(NTE,B,4),S,2)
 .I  S SADD=$P(NTE,F,2),L=1,STEL=$P(NTE,F,3)
 .I  F M="SADD1","SADD2","SCITY","SSTATE","SZIP" S @M=$P(SADD,S,L),L=L+1
 .I NZ=2 S Q=$S($G(Q):Q+1,1:1),N=$P(NTE,B,4) D STRIP S N2(Q)=N Q
 .I NZ=3 S V=$S($G(V):V+1,1:1),N=$P(NTE,B,4) D STRIP S N3(V)=N Q
 .I NZ=4 S C=$S($G(C):C+1,1:1),N=$P(NTE,B,4) D STRIP S N4(C)=N Q
 S SADD3=SCITY_" "_SSTATE_" "_SZIP I $G(SADD2)="" S SADD2=SADD3,SADD3=""
 ;Combine REFILL/NON-REFILL/COPAY NARRATIVES
 S CT=1
 F P=0:0 S P=$O(N2(P)) Q:'P  S NARR(CT)=N2(P),CT=CT+1
 S NARR(CT)="" S CT=CT+1
 F P=0:0 S P=$O(N3(P)) Q:'P  S NARR(CT)=N3(P),CT=CT+1
 S NARR(CT)="COPAY" S CT=CT+1
 F P=0:0 S P=$O(N4(P)) Q:'P  S NARR(CT)=N4(P),CT=CT+1
 K Q,V,C,L,N,NTE,NZ,CT,N2,N3,N4
 G:$G(PSXBLR) PRINT^PSXLBLU
 S A1=PSXBEG-1
 F  S A1=$O(^PSX(552.2,PSXREF,BATREF,A1)) Q:'A1!(A1>PSXEND)  S ZA2=A1-1 D MAIN
END G F514^PSXLBLU
 Q
MAIN F  S ZA2=$O(^PSX(552.2,ZA2)) Q:'ZA2!(ZA2>A1)  D RX,^PSXLBLT S DA=ZA2,DR="1////5",DIE="^PSX(552.2," D ^DIE K DIE,DA,DR
 Q
RX F C=1:0 S C=$O(^PSX(552.2,ZA2,"T",C)) Q:'C  S J=^(C,0) D
 .I $P(^PSX(552.2,ZA2,0),"^")'[BATREF Q
 .S J1=$P(J,B),J2=$P(J,B,2)
 .I J1="PID" D  Q
 ..S (SSN,SSN1)=$E($P(J,B,4),1,9),S1=$E(SSN,1,3),S2=$E(SSN,4,5),S3=$E(SSN,6,9)
 ..S SSN=S1_"-"_S2_"-"_S3
 ..S PNAME=$TR($P(J,B,6),"^",",")
 ..S PA=$P(J,B,12),L=1
 ..F M="PADD1","PADD2","PCITY","PSTATE","PZIP" S @M=$P(PA,U,L),L=L+1
 ..K S1,S2,S3,L,PA,M
 .I J2=5 S C5=$S($G(C5):C5+1,1:1) D STRIPF S MRX(C5)=$P(P2,B,4) K P2 Q
 .I J2=6 S C6=$S($G(C6):C6+1,1:1) D STRIPF S SRX(C6)=$P(P2,B,4) K P2 Q
 .I J1="RX1" D  Q
 ..S CRX=$S($G(CRX):CRX+1,1:1),RX(CRX)=$P(J,B,13)
 ..F X=15,20,21,22,25,26,27,31 S RX(CRX)=RX(CRX)_U_$P(J,B,X)
 ..K X Q
 .I J1="ZX1" K CNTE D  Q
 ..S ZX(CRX)=$P(J,B,2) F X=3:1:19 S ZX(CRX)=ZX(CRX)_U_$P(J,B,X)
 ..K X
 .I J2=7 S CNTE=$S($G(CNTE):CNTE+1,1:2) S RX(CRX,CNTE)=$P(J,B,4) Q
 .I J2=8 S TEMP=$P(J,B,4) D
 ..S PTEMP=$S($P(TEMP,F)=1:$P(TEMP,F,2),1:"")
 ..S PADD3=$P($G(TEMP),F,3)
 ..I $G(PTEMP) S PTEMP=$E(PTEMP,5,6)_"/"_$E(PTEMP,7,8)_"/"_$E(PTEMP,1,4)
 ..K TEMP
PADD I $G(PADD2)="" S PADD2=PCITY_", "_PSTATE_"  "_PZIP G CLN1
 I $G(PADD3)="" S PADD3=PCITY_", "_PSTATE_"  "_PZIP G CLN1
 S PADD4=PCITY_", "_PSTATE_"  "_PZIP G CLN1
CLN1 ;
 K C5,C6,CRX,P,P1,P2,J,J1,J2,G,SADD,M,L,Q,V,C,N,S1,S2,S3,PA,X
 K CNTE,NTE,CT
SET F C=0:0 S C=$O(RX(C)) Q:'C  D  I '$G(RESET)!($G(RESET)<C)!($G(RESET)="TOP") D ^PSXLBL2
 .S C2=1 F C1="QTY","ID","TRUG","SPARE","REFCT","ISD","REFREM","EXPDT","REFLST","RX","SIG" S @C1=$P(RX(C),U,C2),C2=C2+1
 .S Z50=$O(^PSDRUG("AQ1",ID,"")) I $G(Z50) D
 ..S Z1=$P($G(^PSDRUG(Z50,"ND")),"^"),Z2=$P($G(^("ND")),"^",3) I $G(Z2) D
 ...;S VADU=$P($G(^PSNDF(Z1,5,Z2,2)),"^",4)
 ...S ZZX=$$PROD2^PSNAPIS(Z1,Z2),VADU=$P(ZZX,"^",4) K ZZX
 .S ISD1=ISD
 .F ZZT="ISD","EXPDT" S @ZZT=@ZZT-17000000 S:@ZZT'>0 @ZZT="" I +(@ZZT)>0 S:ZZT="EXPDT" EXPDT1=EXPDT S Y=@ZZT X ^DD("DD") S @ZZT=Y K Y
 .I $G(REFLST)>0 S REFLST=$E(REFLST,5,6)_"/"_$E(REFLST,7,8)_"/"_$E(REFLST,1,4)
 .S RX(C,1)=SIG K SIG S C2=1 F C1="RX1","SITE","MAILID","Z","RXCT","RFTXT" S @C1=$P(ZX(C),U,C2),C2=C2+1
 .F C1="PHYS","REGMAIL","CLKRPH","FDT","COPAY","RENW" S @C1=$P(ZX(C),U,C2),C2=C2+1
 .F C1="CAP","TAYS","Z","BAR","WARN","PSTAT","CLINIC" S @C1=$P(ZX(C),U,C2),C2=C2+1
 .S FDT=FDT-17000000 S:FDT'>0 FDT="" I FDT>0 S Y=FDT X ^DD("DD") S FDT=Y
 .S CLERK=$P($P(CLKRPH,"/"),"(",2),VERPHARM=$P($P(CLKRPH,"/",2),")") I $G(WARN)]"" S WARN=$TR(WARN,"~",",")
 .S RFTXT=$P($P(RFTXT,"(",2),")"),R=$P(RFTXT,"of"),V=$P(RFTXT,"of",2),RFTXT=R_" of "_V
 .S COPAY=$S($G(COPAY)<1:"NO COPAY",1:"COPAY") I COPAY="COPAY" S COPAY(C)=RX_U_TRUG_U_TAYS,COPAYES=1
 .F N=0:0 S N=$O(RX(C,N)) Q:'N  S SIGN=N
 .I $G(RX(C,SIGN))["Exp:" S NURSE=$G(RX(C,SIGN)) K RX(C,SIGN),SIGN,N
 .S Y=DT X ^DD("DD") S TODAY=Y K ^UTILITY($J,"W") S DIWL=1,DIWR=48,DIWF="C48" F N=0:0 S N=$O(RX(C,N)) Q:'N  S X=RX(C,N) D ^DIWP
 .F N=0:0 S N=$O(^UTILITY($J,"W",1,N)) Q:'N  S SIG(N)=^(N,0),SIGN=N
 .K ^UTILITY($J),N,SPARE,Z,Y,R,V,N,N1,Z50,Z1,Z2
 Q
STRIPF S P=$L(J,"\F\"),P2="" F I=1:1:P S P1=$P(J,"\F\",I),P2=P2_U_P1
 K P,P1,I Q
STRIP Q:N'["\R\"  S P=$L(N,"\R\"),P2="" F I=1:1:P S P1=$P(N,"\R\",I),P2=P2_" "_P1
 S N=P2 K P,P1,P2
 Q