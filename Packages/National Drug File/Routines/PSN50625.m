PSN50625 ;BIR/LDT - API FOR INFORMATION FROM FILE 50.625; 5 Sep 03
 ;;4.0; NATIONAL DRUG FILE;**80,94**; 30 Oct 98
 ;
DATA(PSNIEN,LIST) ;
 ;PSNIEN - IEN of entry in WARNING LABEL-ENGLISH file (#50.625).
 ;LIST - Subscript of ^TMP array in the form ^TMP($J,LIST,Field Number where Field Number is the
 ;       Field Number of the data piece being returned.
 N DIERR,ZZERR,PSN50625,PSN,CNT
 I $G(LIST)']"" Q
 K ^TMP($J,LIST)
 I +$G(PSNIEN)'>0 S ^TMP($J,LIST,0)=-1_"^"_"NO DATA FOUND" Q
 I $G(PSNIEN)]"",+$G(PSNIEN)'>0 S ^TMP($J,LIST,0)=-1_"^"_"NO DATA FOUND" Q
 I $G(PSNIEN)]"" N PSNIEN2 S PSNIEN2=$$FIND1^DIC(50.625,"","B","`"_PSNIEN,,,"") D
 .I +PSNIEN2'>0 S ^TMP($J,LIST,0)=-1_"^"_"NO DATA FOUND" Q
 .S ^TMP($J,LIST,0)=1
 .S PSNIEN=PSNIEN2 I $O(^PS(50.625,+PSNIEN,1,0)),'$P(^PS(50.625,+PSNIEN,1,0),U,2) D SETHDR
 .D GETS^DIQ(50.625,+PSNIEN,"**","IE","PSN50625") S PSN(1)=0
 .F  S PSN(1)=$O(PSN50625(50.625,PSN(1))) Q:'PSN(1)  D
 ..S (CNT,PSN(2))=0 F  S PSN(2)=$O(PSN50625(50.625,PSN(1),1,PSN(2))) Q:'PSN(2)  D SETTXT S CNT=CNT+1
 ..S ^TMP($J,LIST,+PSN(1),"WLT",0)=$S(+CNT>0:CNT,1:-1_"^"_"NO DATA FOUND")
 K ^TMP("DILIST",$J)
 Q
SETTXT ;
 S ^TMP($J,LIST,+PSN(1),.01)=$G(PSN50625(50.625,PSN(1),.01,"I"))
 S ^TMP($J,LIST,+PSN(1),2)=$S($G(PSN50625(50.625,PSN(1),2,"I"))]"":$G(PSN50625(50.625,PSN(1),2,"I"))_"^"_$G(PSN50625(50.625,PSN(1),2,"E")),1:"")
 S ^TMP($J,LIST,+PSN(1),"WLT",+PSN(2),.01)=$G(PSN50625(50.625,PSN(1),1,PSN(2)))
 Q
SETHDR ;
 S $P(^PS(50.625,+PSNIEN,1,0),"^",2)="50.6251"
 Q
