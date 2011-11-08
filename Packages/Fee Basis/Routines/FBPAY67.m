FBPAY67 ;AISC/DMK,TET-CH/CNH PAYMENT HISTORY SORT ;7/9/2001
 ;;3.5;FEE BASIS;**4,32,55,69**;JAN 30, 1995
 ;;Per VHA Directive 10-93-142, this routine should not be modified.
EN ;entry to sort
 I FBSORT S DFN=FBIEN,FBPID=FBID,FBPNAME=FBNAME
 I 'FBSORT S FBVI=FBIEN,FBVID=FBID,FBVNAME=$E(FBNAME,1,23)
FBAAC ;check ^fbaac("an" (file 162)
 S FBOUT=0 I $D(^FBAAC("AN",FBPI)) D AN  I $G(FBPIFLG) S FBPI=7 D AN S FBPI=6
 S I=FBBEG,FBIX=$S(FBSORT:"AG",1:"AF")
SORT ;sort programs 6 & 7 (civil hos & cnh)
 F FBM=FBBEG-.1:0 S FBM=$O(^FBAAI(FBIX,FBIEN,FBM)) Q:FBM'>0!(FBM>FBEND)  F FBI=0:0 S FBI=$O(^FBAAI(FBIX,FBIEN,FBM,FBI)) Q:FBI'>0  I $G(^FBAAI(FBI,"FBREJ"))']"" D SET S FBPI=FBPISV
KILL ;kill variables set in routine and in FBPAY2, sort/set sections
 K A1,A2,A3,D,D2,FBAACPTC,FBBN,FBCNT,FBCP,FBDT,FBDT1,FBDX,FBDX1,FBI,FBIN,FBIX,FBM,FBOB,FBPDX,FBPISV,FBPROC,FBPROC1,FBSC,FBTA,FBVEN,FBVENID,FBVP,I,J,K,L,M,Y,FBDT2
 K:FBSORT FBVNAME,FBVID K:'FBSORT FBPNAME,FBPID
 D KILL^FBPAY2
 Q
SET ;set string, also called by fbchdi (fblistc or fbaanq set if called by fbchdi)
 N FBY2,FBY3,FBCDAYS,FBCSID,FBFPPSC,FBFPPSL,FBX,FBADJLR,FBADJLA,FBRRMKL,FBAARCE,FBX
 S FBPISV=$G(FBPI),FBIN=$G(^FBAAI(FBI,0)) Q:FBIN']""  S FBPI=+$P(FBIN,U,12)
 I 'FBPROG,'$D(FBPROG(+$P(FBIN,U,12))) Q
 I '$D(FBPIFLG) Q:+$P(FBIN,U,12)'=FBPI
 I $D(FBPIFLG),'FBPROG Q:'$D(FBPROG(+$P(FBIN,U,12)))
 S FBY2=$G(^FBAAI(FBI,2))
 S FBY3=$G(^FBAAI(FBI,3))
 ; if user wants just mill bill or just non-mill bill then check payment
 ;   and skip if associated with an mill bill claim
 I "^M^N^"[(U_$G(FB1725R)_U) S FB1725=$S($P(FBIN,U,5)["FB583":+$P($G(^FB583(+$P(FBIN,U,5),0)),U,28),1:0) I $S(FB1725R="M"&'FB1725:1,FB1725R="N"&FB1725:1,1:0) Q
 F J=1,2,3,6,7,8,9,10,11,13,14 S FBIN(J)=$P(FBIN,"^",J)
 S:FBSORT FBIN(5)=$P(FBIN,U,5) I 'FBSORT S FBIN(4)=$P(FBIN,U,4),DFN=FBIN(4) Q:DFN']""  S FBPID=$$SSN^FBAAUTL(DFN),FBPNAME=$P($G(^DPT(+DFN,0)),U)
 I FBSORT S FBVNAME=$G(^FBAAV(FBIN(3),0)) Q:FBVNAME']""  S FBVID=$P(FBVNAME,U,2),FBVNAME=$E($P(FBVNAME,U),1,23)
 S FBIN(2)=$$DATX^FBAAUTL(FBIN(2)),FBVEN=FBVNAME_";"_FBVID,FBPAT=FBPNAME_";"_DFN
 S FBIN(6)=$$DATX^FBAAUTL(FBIN(6)),FBIN(7)=$$DATX^FBAAUTL(FBIN(7))
 D FBCKI^FBAACCB1(FBI)
SETTMP S ^TMP($J,"FB",+$P(FBIN,U,12),FBVEN,FBPAT,FBM,FBI)=FBIN(2)_U_$J(FBIN(8),8,2)_U_$J(FBIN(9),8,2)_U_FBIN(11)_U_$J(FBIN(1),8)_U_FBIN(6)_U_FBIN(7)_U_FBIN(13)_U_FBIN(14)_U_FBIN(10)
 S ^TMP($J,"FB",+$P(FBIN,U,12),FBVEN,FBPAT,FBM,FBI,"FBCK")="^"_FBCK_"^"_FBCKDT_"^"_FBCANDT_"^"_FBCANR_"^"_FBCAN_"^"_FBDIS_"^"_FBCKINT
 S FBCDAYS=$P(FBY2,U,10) ; covered days
 S FBCSID=$P(FBY2,U,11) ; patient control number
 S FBFPPSC=$P(FBY3,U) ; fpps claim id
 S FBFPPSL=$P(FBY3,U,2) ; fpps line item
 S FBX=$$ADJLRA^FBCHFA(FBI_",")
 S FBADJLR=$P(FBX,U) ;adjustment reason
 S FBADJLA=$P(FBX,U,2) ;adjustment amount
 S FBRRMKL=$$RRL^FBCHFR(FBI_",") ;remittance remarks
 S ^TMP($J,"FB",+$P(FBIN,U,12),FBVEN,FBPAT,FBM,FBI,"FBINV")=FBCDAYS_"^"_FBCSID_"^"_FBFPPSC_"^"_FBFPPSL_"^"_FBADJLR_"^"_FBADJLA_"^"_FBRRMKL
 S FBDX=$G(^FBAAI(FBI,"DX")) I FBDX]"" S FBDX1="" F I=1:1:5 S:$P(FBDX,U,I) FBDX1=FBDX1_$$ICD9^FBCSV1($P(FBDX,U,I),+$P($G(FBIN),U,6))_U
 I FBDX]"" S FBDX1=$P(FBDX1,U,1,($L(FBDX1,U)-1)),^TMP($J,"FB",$P(FBIN,U,12),FBVEN,FBPAT,FBM,FBI,"DX")=FBDX1
 S FBPROC=$G(^FBAAI(FBI,"PROC")) I FBPROC]"" S FBPROC1="" F I=1:1:5 S:$P(FBPROC,U,I) FBPROC1=FBPROC1_$$ICD0^FBCSV1($P(FBPROC,U,I),+$P($G(FBIN),U,6))_U
 I FBPROC]"" S FBPROC1=$P(FBPROC1,U,1,($L(FBPROC1,U)-1)),^TMP($J,"FB",$P(FBIN,U,12),FBVEN,FBPAT,FBM,FBI,"PROC")=FBPROC1
 D ANC(FBM,FBI):FBSORT&($D(^TMP($J,"FB",FBPI,FBVEN,FBPAT,FBM,FBI)))
 Q
AN ;get data from an xref - called at tag fbaac in pay3 & pay67
 I FBSORT G AN1
 S FBVEN=FBVNAME_";"_FBVID,DFN=0 F  S DFN=$O(^FBAAC("AN",FBPI,DFN)) Q:'DFN  S FBPAT=$G(^DPT(DFN,0)),FBPNAME=$P(FBPAT,U),FBPID=$$SSN^FBAAUTL(DFN),FBPAT=FBPNAME_";"_DFN D OTH
 Q
AN1 S FBPAT=FBPNAME_";"_FBPID,FBVI=0 F  S FBVI=$O(^FBAAC("AN",FBPI,DFN,FBVI)) Q:'FBVI  S FBVNAME=$E($$VNAME^FBNHEXP(FBVI),1,23),FBVID=$$VID^FBNHEXP(FBVI),FBVEN=FBVNAME_";"_FBVID D OTH
 Q
OTH ;other fee programs - if 'fbsort (by vendor)
 Q:'$O(^FBAAC("AN",FBPI,DFN,FBVI,0))
 N J,K,L,M,Y,FBDT1 S J=DFN,K=FBVI
 S L=0 F  S L=$O(^FBAAC("AN",FBPI,J,K,L)) Q:'L  S FBDT1=$P($G(^FBAAC(J,1,K,1,L,0)),U) I FBDT1]""&(FBDT1'<FBBDATE&(FBDT1'>FBEDATE)) D  S:FBOUT FBOUT=0
 .S M=0 F  S M=$O(^FBAAC("AN",FBPI,J,K,L,M)) Q:'M  S Y=$G(^FBAAC(J,1,K,1,L,1,M,0)) I Y]"" D
 ..S FBOUT=0 D EN1^FBPAY2 Q:FBOUT  D EN^FBPAY21
 ..S ^TMP($J,"FB",FBPI_"O",FBVEN,FBPAT,(9999999.9999-FBDT1),L,M)=$G(FBR)_$$DATX^FBAAUTL(FBDT1)_U_FBAACPTC_FBCP_$S($G(FBMODLE)]"":"-"_FBMODLE,1:"")_U_A1_U_A2_U_T_U_FBBN_U_FBIN_U_D2_U_FBSC_U_FBPDX_U_FBOB
 ..S ^TMP($J,"FB",FBPI_"O",FBVEN,FBPAT,(9999999.9999-FBDT1),L,M,"FBCK")="^"_FBCK_"^"_FBCKDT_"^"_FBCANDT_"^"_FBCANR_"^"_FBCAN_"^"_FBDIS_"^"_FBCKINT
 ..S ^TMP($J,"FB",FBPI_"O",FBVEN,FBPAT,(9999999.9999-FBDT1),L,M,"FBADJ")=TAMT_U_FBUNITS_U_FBADJLR_U_FBADJLA_U_FBRRMKL_U_FBCSID_U_FBFPPSC_U_FBFPPSL_U_FBAARCE
 Q
ANC(FBM,FBI) ;ancillary payments - if fbsort (by patient)
 N J,K,L,M,Y,FBDT1,FBVID
 N FBCSID,FBADJLA,FBADJLR,FBRRMKL,FBUNITS,TAMT,T,FBADJ,FBFPPSC,FBFPPSL,FBAARCE
 S J=FBIEN,FBCNT=0 I J,+FBIN(5),$D(^FBAAC("AM",FBIN(5),J)) D
 .F K=0:0 S K=$O(^FBAAC("AM",FBIN(5),J,K)) Q:'K  S L=0 F  S L=$O(^FBAAC("AM",FBIN(5),J,K,L)) Q:'L  D
 ..N FBOUT
 ..S FBDT1=$P($G(^FBAAC(J,1,K,1,L,0)),U) I FBDT1]"" S FBDT2=(9999999.9999-FBDT1),FBDT1=$$DATX^FBAAUTL(FBDT1)
 ..S M=0 F  S M=$O(^FBAAC("AM",FBIN(5),J,K,L,M)) Q:'M  S Y=$G(^FBAAC(J,1,K,1,L,1,M,0)) I Y]"" D
 ...D EN1^FBPAY2 Q:'$D(FBAACPTC)!($G(FBOUT))  S FBCNT=FBCNT+1 D EN^FBPAY21
 ...S ^TMP($J,"FB",FBPI,FBVEN,FBPAT,"A",K,L,M)=$G(FBR)_FBDT1_U_FBAACPTC_FBCP_$S($G(FBMODLE)]"":"-"_FBMODLE,1:"")_U_A1_U_A2_U_T_U_FBBN_U_FBIN_U_D2_U_FBSC_U_FBPDX_U_FBOB_U_FBVNAME_U_FBVID
 ...S ^TMP($J,"FB",FBPI,FBVEN,FBPAT,"A",K,L,M,"FBCK")="^"_FBCK_"^"_FBCKDT_"^"_FBCANDT_"^"_FBCANR_"^"_FBCAN_"^"_FBDIS_"^"_FBCKINT
 ...S ^TMP($J,"FB",FBPI,FBVEN,FBPAT,"A",K,L,M,"FBADJ")=TAMT_U_FBUNITS_U_FBADJLR_U_FBADJLA_U_FBRRMKL_U_FBCSID_U_FBFPPSC_U_FBFPPSL_U_FBAARCE
 ...I $D(^TMP($J,"FB",FBPI_"O",FBVNAME_";"_FBVID,$P(FBPAT,";")_";"_$$SSN^FBAAUTL($P(FBPAT,";",2)),FBDT2)) K ^TMP($J,"FB",FBPI_"O",FBVNAME_";"_FBVID,$P(FBPAT,";")_";"_$$SSN^FBAAUTL($P(FBPAT,";",2)),FBDT2)
 Q