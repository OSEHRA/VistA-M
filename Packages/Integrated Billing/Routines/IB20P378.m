IB20P378 ;DAY/RRA - DSS CLINIC STOP CODES IB*2.0*378 PRE-INIT ; 3/13/07 12:55pm
 ;;2.0;INTEGRATED BILLING;**378**;21-MAR-94;Build 6
 ;;Per VHA Directive 10-93-142, this routine should not be modified.
 ;
EN ;
 N IBEFFDT,U
 S U="^"
 D START,ADD,UPDATE,FINISH
 Q
 ;
START D BMES^XPDUTL("DSS Clinic Stop Codes, Post-Install Starting")
 Q
 ;
FINISH D BMES^XPDUTL("DSS Clinic Stop Codes, Post-Install Complete")
 Q
 ;
 ;
ADD ;add a new code
 N Y,IBC,IBT,IBX,IBY,IBCODE,IBTYPE,IBDES,IBOVER
 D BMES^XPDUTL(" Adding new codes to file 352.5")
 S IBC=0
 F IBX=1:1 S IBT=$P($T(NCODE+IBX),";",3) Q:'$L(IBT)  D
 . S IBCODE=+$P(IBT,U)
 . S IBTYPE=$P(IBT,U,2)
 . S IBDES=$E($P(IBT,U,3),1,30)
 . S IBOVER=$P(IBT,U,4)
 . S IBY=$P(IBT,U,5)
 . I $D(^IBE(352.5,"AEFFDT",IBCODE,-IBY)) D  Q
 . . D BMES^XPDUTL(" Duplication of stop code "_IBCODE)
 . S Y=+$$ADD3525(IBCODE,IBY,IBTYPE,IBDES,IBOVER) S:Y>0 IBC=IBC+1
 D BMES^XPDUTL("     "_IBC_$S(IBC<2:" entry",1:" entries")_" added to 352.5")
 Q
 ;
UPDATE ;update an old code
 N Y,IB1,IBC,IBT,IBX,IBCODE,IBMSG,IBTYPE,IBDES,IBOVER,IBLSTDT
 S (IBC,IBMSG(1),IBMSG(2),IBMSG(3))=0
 D BMES^XPDUTL(" Updating Stop Code entries in file 352.5")
 F IBX=1:1 S IBT=$P($T(OCODE+IBX),";",3) Q:'$L(IBT)  D
 . S IBCODE=+$P(IBT,U)
 . S IBY=$P(IBT,U,5)
 . I $D(^IBE(352.5,"AEFFDT",IBCODE,-IBY)) D  Q 
 . . D BMES^XPDUTL(" Duplication of stop code "_IBCODE)
 . S IBLSTDT=$O(^IBE(352.5,"AEFFDT",IBCODE,-9999999))
 . I +IBLSTDT=0 D  Q
 . . D BMES^XPDUTL(" Code "_IBCODE_" not found in file 352.5")
 . S IB1=$O(^IBE(352.5,"AEFFDT",IBCODE,IBLSTDT,0))
 . S IB1=$G(^IBE(352.5,IB1,0))
 . S IBTYPE=$S($P(IBT,U,2)'="":$P(IBT,U,2),1:$P(IB1,U,3))
 . S IBDES=$S($P(IBT,U,3)'="":$E($P(IBT,U,3),1,30),1:$P(IB1,U,4))
 . S IBOVER=$S($P(IBT,U,4)'="":$P(IBT,U,4),1:$P(IB1,U,5))
 . S Y=+$$ADD3525(IBCODE,IBY,IBTYPE,IBDES,IBOVER) S:Y>0 IBC=IBC+1
 D BMES^XPDUTL("     "_IBC_$S(IBC<2:" update",1:" updates")_" added to file 352.5")
 Q
 ;
ADD3525(IBCODE,IBEFFDT,IBTYPE,IBDES,IBOVER) ;
 ;add a new entry
 D BMES^XPDUTL("   "_IBCODE_"  "_IBDES)
 N IBIENS,IBFDA,IBER,IBRET
 S IBRET=""
 S IBIENS="+1,"
 S IBFDA(352.5,IBIENS,.01)=IBCODE
 S IBFDA(352.5,IBIENS,.02)=IBEFFDT
 S IBFDA(352.5,IBIENS,.03)=IBTYPE
 S IBFDA(352.5,IBIENS,.04)=IBDES
 S:IBOVER IBFDA(352.5,IBIENS,.05)=1
 D UPDATE^DIE("","IBFDA","IBRET","IBER")
 I $D(IBER) D BMES^XPDUTL(IBER("DIERR",1,"TEXT",1))
 Q $G(IBRET(1))
 ;
 ;new non-billable type data
NCODE ;;code^billable type^description^override flag
 ;;184^0^CARE/CASE MANAGER^^3071001
 ;;185^0^PHYSICIAN EXTENDER (NP)^^3021001
 ;;186^0^PHYSICIAN EXTENDER (PA)^^3021001
 ;;187^0^PHYSICIAN EXTENDER (CNS)^^3021001
 ;;188^0^PHYSICIAN RESIDENT^^3021001
 ;;337^2^HEPATOLOGY CLINIC^^3071001
 ;;349^2^SLEEP MEDICINE^^3071001
 ;;434^2^NON-OR ANESTHESIA PROC^^3071001
 ;;534^1^MENTAL HEALTH INTEGRATED CARE^^3071001
 ;;591^0^INCARCERATED VETERANS RE-ENTRY^1^3071001
 ;;476^0^LOCAL CREDIT PAIR^^3021001
 ;;477^0^LOCAL CREDIT PAIR^^3021001
 ;;482^0^LOCAL CREDIT PAIR^^3021001
 ;;484^0^LOCAL CREDIT PAIR^^3021001
 ;;485^0^LOCAL CREDIT PAIR^^3021001
 ;
 ;codes update
OCODE ;;code^billable type^description^override flag
 ;;116^1^^^3071001
 ;;119^0^^^3071001
 ;;179^1^^^3071001
 ;;211^^AMPUTATION FOLLOW-UP CLINIC^^3071001
 ;;309^2^^^3071001
 ;;331^1^^^3071001
 ;;371^^^1^3071001
 ;;432^1^^^3071001
 ;;454^^LOCAL CREDIT PAIR^^3041001
 ;;456^^LOCAL CREDIT PAIR^^3041001
 ;;459^^LOCAL CREDIT PAIR^^3041001
 ;;460^^LOCAL CREDIT PAIR^^3041001
 ;;461^^LOCAL CREDIT PAIR^^3041001
 ;;479^^LOCAL CREDIT PAIR^^3071001
 ;;519^^SUBSTANCE USE DISORDER/PTSD TM^^3071001
 ;;525^1^^^3071001
 ;;550^^MENTAL HEALTH CLINIC (GROUP)^^3071001
 ;;552^^MH INTENSIVE CASE MGMT (MHICM)^^3071001
 ;;602^^ASSISTED HEMODIALYSIS^^3071001
 ;;606^^CONT AMB PERIT DIALYSIS (CAPD)^^3071001
 ;;607^^LMTD SELF CARE CONT AMB PERT^^3071001
 ;;710^^^0^3071001
 ;;351^1^HOSPICE AND PALLITIVE CARE^^3071001
 ;;610^1^^^3071001
 ;;692^^^0^3071001
 ;;693^^^0^3071001
 ;;695^^^0^3071001
 ;;696^^^0^3071001
 ;;697^^^1^3071001
 ;
