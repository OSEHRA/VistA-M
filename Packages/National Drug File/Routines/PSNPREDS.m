PSNPREDS ;BIR/WRT-pre-init routine; 07/14/05 8:30
 ;;4.0; NATIONAL DRUG FILE;**101**; 30 Oct 98
 D PKGCHK,CHEKDD
 Q
PKGCHK I '$$VERSION^XPDUTL("HDI") D BMES^XPDUTL("You must install the HEALTH DATA & INFORMATICS 1.0 package") S XPDQUIT=1
 Q
CHEKDD N PSNOT D FIELD^DID(50.416,99.99,"","LABEL","PSNOT") I $D(PSNOT),PSNOT("LABEL")="VUID" S PSNXXX=$$PROD^XUPROD I PSNXXX=1 D BMES^XPDUTL("You can only install this Build once in a Production UCI.") S XPDQUIT=1
 Q
