PSNPPSNK ;HP/MJE-PPSN NDFK Updates ; 05 Mar 2014  1:20 PM
 ;;4.0;NATIONAL DRUG FILE;**513**; 30 Oct 98;Build 61
 ;
INGRED ;50.416
 Q:PSNATYP'="N"
 N FLD3,X,DIC,DINUM,OINGRED S FLD3=$P(DIA,"^",3)
 I '$D(^TMP("PSN OLDINGRED",$J,$P($P(DIA,"^"),","))) S OINGRED=0 F  S OINGRED=$O(^PSNDF(50.68,$P($P(DIA,"^"),","),2,OINGRED)) Q:OINGRED=""  S ^TMP("PSN OLDINGRED",$J,$P($P(DIA,"^"),","),OINGRED)=""
 I FLD3="99.991,.01" D
 .S (DINUM,X)=+$P(DIA,"^")
 .I NEW'="" I '$D(^NDFK(5000.508,"B",X)) S DIC=5000.508,DIC(0)="LMXZ" D FILE^DICN
 .I NEW="" I '$D(^NDFK(5000.509,"B",X)) S DIC=5000.509,DIC(0)="LMXZ" D FILE^DICN
 Q
 ;
CPTIER(DIA) ;
 N NAME,X,DIC,DIE,DA,DR
 S NAME=$$GET1^DIQ(50.68,+$P(DIA,"^"),.01,"E")
 S X=NAME,DIC=5000.93,DIC(0)="LMXZ" D ^DIC
 S DIE=DIC,DA=+Y K DIC
 S DR="1///^S X="_1  ;Copay action - 0 = delete or 1 = add/edit
 D ^DIE
 Q
 ;
NDFK ;Setting NDFK 5000 series files
 ;
 ;ajf / adding code for 5000 series files
 ;man / adding code for 5000.4 (strength changes) 
 ;
 N FDA,ERROR,FLD3,OLDV,MGFLG,DIC,OLDGEN,VAGEN,VAGENN,NEWPROD,FDAMED S FLD3=$P(DIA,"^",3)
 I FLD3=40 S DIC="^NDFK(5000.92,",DIC(0)="",(X,DINUM)=$P(DIA,"^") D FILE^DICN
 I FLD3=23 D
 .S (DINUM,X)=$P(DIA,"^"),DIC=5000.23,DIC(0)="LMXZ" D FILE^DICN
 .S DIE=DIC,DA=+Y K DIC
 .S DA=+$P(DIA,"^"),DIE="^NDFK(5000.23,",DR="1///"_NEW D ^DIE
 I FLD3="14,.01" S ^TMP("PSNN",$J,$P(DIA,"^"))="" Q
 I FLD3=.01 S (DINUM,X)=$P(DIA,"^") I '$D(^NDFK(5000.506,"B",X)) S DIC=5000.506,DIC(0)="LMXZ" D FILE^DICN Q
 I FLD3=17 S (DINUM,X)=$P(DIA,"^"),DIC=5000.5,DIC(0)="LMXZ" D FILE^DICN Q
 I FLD3=7 S (DINUM,X)=$P(DIA,"^"),DIC=5000.7,DIC(0)="LMXZ" D FILE^DICN Q
 I FLD3=19 K ERROR S (X,DINUM)=$P(DIA,"^"),DIC="^NDFK(5000.9,",DIC(0)="LMXZ" D FILE^DICN
 ;FDA(5000.9,"+1,"_$P(DIA,"^")_",",.01)=X D UPDATE^DIE("","FDA","","ERROR") D ERROR^PSNPPSNU:$D(ERROR("DIERR")) Q
 ;I FLD3=19 K ERROR S X=$P(DIA,"^"),FDA(5000.9,"+1,"_$P(DIA,"^")_",",.01)=X D UPDATE^DIE("","FDA","","ERROR") D ERROR^PSNPPSNU:$D(ERROR("DIERR")) Q
 I FLD3=15 D  Q
 .S NEWPROD=$O(^NDFK(5000.506,"B",$P(DIA,"^"),""))
 .Q:NEWPROD'=""
 .S OLDV=$$GET1^DIQ(50.68,$P(DIA,"^"),15,"I"),VAGEN=$$GET1^DIQ(50.68,$P(DIA,"^"),.05,"I")
 .S VAGENN=$$GET1^DIQ(50.68,$P(DIA,"^"),.05,"E")
 .K FDA
 .;Does not record class/edits on new VA Products same as NDFRR3 & PSSMIGRR routine
 .I OLDV'="",(OLDV'=NEW) D
 ..S (DINUM,X)=$P(DIA,"^"),DIC=5000.8,DIC(0)="LMXZ" D FILE^DICN
 ..S DIE=DIC,DA=$P(DIA,"^"),DIE=5000.8,DR="1////"_OLDV_";2////"_NEW_";3////"_VAGEN_";4////"_VAGENN D ^DIE
 ..K FDA
 ..S FDA(5000.507,"+1,",.01)=$P(DIA,"^")
 ..S FDA(5000.507,"+1,",1)=$$GET1^DIQ(50.68,$P(DIA,"^"),.01)
 ..S FDA(5000.507,"+1,",2)=OLDV
 ..S FDA(5000.507,"+1,",3)=NEW
 ..K ERROR D UPDATE^DIE("","FDA","","ERROR") D ERROR^PSNPPSNU:$D(ERROR("DIERR"))
 I FLD3=2 S (DINUM,X)=$P(DIA,"^"),DIC=5000.4,DIC(0)="LMXZ" D FILE^DICN
 I FLD3=100 D  K FDA Q
 .K FDA,ERROR
 .S MGFLG=0
 .S FDAMED="",FDAMED=$$GET1^DIQ(50.68,$P(DIA,"^"),100)
 .S MGFLG=$S(FDAMED="":"A",NEW="":"D",1:"E")
 .S DIC="^NDFK(5000.91,",DIC(0)="Z",(X,DINUM)=$P(DIA,"^") D FILE^DICN
 .S DIE=DIC,DA=+Y K DIC
 .S DA=IENS,DIE="^NDFK(5000.91,",DA=$P(DIA,"^"),DR="1///"_MGFLG D ^DIE K DIE
 Q
 ;
POSTRUN ;POST RUN FOR 50.628
 D CTRKDL^PSNPPSMS("POSTRUN of PSNPPSNK processing")
 N PSNPS S PSNPS=$P($G(^PS(59.7,1,10)),"^",12)
 K FDA
 I PSNPS="N" S IENS="" F  S IENS=$O(^TMP("PSN PPSN PARSED",$J,"POST_RUN",50.628,50.67,IENS)) Q:IENS=""  D
 . S PRNDC=$G(^TMP("PSN PPSN PARSED",$J,"POST_RUN",50.628,50.67,IENS,1))
 . Q:PRNDC=""
 . K PROUT1 D GETS^DIQ(50.67,IENS_",","*","IE","PROUT1")
 . S PRVPIEN=$G(PROUT1(50.67,IENS_",",5,"I"))
 . S PRTR=$G(PROUT1(50.67,IENS_",",4,"E"))
 . S PRPS=$G(PROUT1(50.67,IENS_",",8,"E"))
 . S PRPT=$G(PROUT1(50.67,IENS_",",9,"E"))
 .;
 . K PROUT2 D GETS^DIQ(50.68,PRVPIEN_",","*","IE","PROUT2")
 . S PRVAGN=$G(PROUT2(50.68,PRVPIEN_",",.05,"E"))
 . S PRDFD=$G(PROUT2(50.68,PRVPIEN_",",1,"E"))
 . S PRDS=$G(PROUT2(50.68,PRVPIEN_",",2,"E"))
 . S PRLN=$G(PROUT2(50.68,PRVPIEN_",",5,"E"))
 . S PRLN25=$G(PROUT2(50.68,PRVPIEN_",",6,"E"))
 . S PRVADC=$G(PROUT2(50.68,PRVPIEN_",",15,"E"))
 . S PRPT=$G(PROUT2(50.68,PRVPIEN_",",9,"E"))
 . S PRPS=$G(PROUT2(50.68,PRVPIEN_",",8,"E"))
 . S PRGCN=$G(PROUT2(50.68,PRVPIEN_",",11,"E"))
 . S PRDC=$G(PROUT2(50.68,PRVPIEN_",",15,"E"))
 .;
 . K PROUT3 D GETS^DIQ(50.606,PRDFD_",","*","IE","PROUT3")
 . S PRDF=$G(PROUT3(50.606,PRDFD_",",.01,"E"))
 .;
 . D GCNSEQ(PRNDC)
 . ;
 . K PRNDC,PROUT1,PROUT2,PROUT3,PRVPIEN,PRPS,PRPT,PRGCN,PRVADC,FDA,PRVAGN,PRDF,PRDS,PRDFD,PRPT,PRPS,PRLN
 . K PRLN25,PRTR,PRDC,FDA,ERROR
 ;
POSTRUN2 ;POST RUN FOR 5000.56
 K IENS
 K FDA,ERROR,DAT56,PROUT4,INACT,STAT,IEN56
 N PSNPS S PSNPS=$P($G(^PS(59.7,1,10)),"^",12)
 Q:PSNPS'="N"
 S IENS="" F  S IENS=$O(^TMP("PSN PPSN PARSED",$J,"POST_RUN",5000.56,56,IENS)) Q:IENS=""  D
 . S (STAT,INACT)="",STAT=$G(^TMP("PSN PPSN PARSED",$J,"POST_RUN",5000.56,56,IENS,.01))
 . S INACT=$$GET1^DIQ(56,IENS_",",7,"I","ERROR") D ERROR^PSNPPSNU:$D(ERROR("DIERR"))
 . S:INACT'="" STAT="I"
 .S DIC="^NDFK(5000.56,",DIC(0)="Z",(X,DINUM)=IENS D FILE^DICN
 .S DIE=DIC,DA=+Y K DIC
 .S DA=IENS,DIE="^NDFK(5000.56,",DR="1///"_STAT D ^DIE K DIE
 ;
 K FDA,DAT56,PROUT4,INACT,STAT,IEN56,ERROR
 ;
 ;POST RUN FOR 5000.608
 K FDA,IENS,DAT1,ORDP,ORDN,VPIEN
 S IENS="" F  S IENS=$O(^TMP("PSN PPSN PARSED",$J,"POST_RUN",5000.608,50.68,IENS)) Q:IENS=""  D
 . S ORDP=$G(^TMP("PSN PPSN PARSED",$J,"POST_RUN",5000.608,50.68,IENS,.01))
 . S DAT1=$G(^TMP("PSN PPSN PARSED",$J,"POST_RUN",5000.608,50.68,IENS,31))
 . S:ORDP="" ORDP=$P(DAT1,"^",1)
 . S ORDN=$P(DAT1,"^",2)
 .; S FDA(5000.608,IENS_",",.01)=IENS
 .; S FDA(5000.608,IENS_",",1)=$G(ORDP)
 .; S FDA(5000.608,IENS_",",2)=$G(ORDN)
 .; K ERROR D UPDATE^DIE("","FDA","","ERROR") D ERROR^PSNPPSNU:$D(ERROR("DIERR"))
 .S DIC="^NDFK(5000.608,",DIC(0)="Z",(X,DINUM)=IENS D FILE^DICN
 .S DIE=DIC,DA=+Y K DIC
 .S DA=IENS,DIE="^NDFK(5000.608,",DR="1///"_$G(ORDP)_";2///"_$G(ORDN) D ^DIE K DIE
 .K DAT,ORDP,ORDN,VPIEN
 ;
 ;POST RUN FOR 5000.508 AND 5000.509 - INGREDIENT ADDS AND DELETES
 N IFLDS,IENS,DAT1,ORDP,ORDN,VPIEN,DIC
 S (IENS,VPIEN)=""
 F  S IENS=$O(^TMP("PSN ADDINGRED",$J,IENS)) Q:IENS=""  D
 .S (DINUM,X)=IENS,DIC=5000.508,DIC(0)="LMXZ" D FILE^DICN
 F  S VPIEN=$O(^TMP("PSN DELINGRED",$J,VPIEN)) Q:VPIEN=""  D
 .S (DINUM,X)=VPIEN,DIC=5000.509,DIC(0)="LMXZ" D FILE^DICN
 ;
 K ^TMP("PSN PPSN PARSED",$J,"POST_RUN"),^TMP("PSN ADDINGRED",$J),^TMP("PSN OLDINGRED",$J),^TMP("PSN DELINGRED",$J)
 Q
 ;
NDFKP ;Purging entries in NDFK file
 N PSNATYP S PSNATYP="",PSNATYP=$P(^PS(59.7,1,10),"^",12)
 Q:PSNATYP'="N"
 N FILE,LOC,DA,DIK,DIAU
 ;S (J,DA)=0 F  S DA=$O(^NDFK(5000,1,1,DA)) Q:'DA  S J=$P(^(DA,0),"^",2)'=$O(^DIA(DA," "),-1)+J
 F FILE=5000.2:0.1:5000.9,5000.23,5000.56,5000.506:0.001:5000.509,5000.608,5000.91,5000.92,5000.93 D
 .S LOC=0 F  S LOC=$O(^NDFK(FILE,LOC)) Q:'LOC  D
 ..S DA="",DA=LOC,DIK="^NDFK("_FILE_"," D ^DIK K DIK,DIAU
 ;
 K ^NDFK(5000.561)
 K ^NDFK(5000,1,2) ;GET THE MESSAGE
 K ^NDFK(5000,1,3) ;AND THE SECOND MESSAGE
 K ^NDFK(5000,1,4) ;GET THE WORD PROCESSING FIELDS
 Q
 ;
GCNSEQ(PRNDC) ;
 N X,DIC,DA,DIE,DR,Y
 S X=PRNDC,DIC="^PS(50.628,",DIC(0)="L",DLAYGO=50.628 D FILE^DICN K DIC,DLAYGO S DA=+Y
 S DIE=50.628,DA=+Y
 S DR="1////"_PRGCN_";2////"_PRVAGN_";3////"_PRDFD_";4////"_PRDS_";5////"_PRLN_";6////"_PRLN25_";7////"_PRTR
 S DR=DR_";9////"_PRDF_";11////"_PRPT_";12////"_PRDS_";13////"_PRDC
 D ^DIE K DR
 Q
 ;
