PXHFSM ;SLC/PKR - Health Factor ScreenMan routines ;12/14/2017
 ;;1.0;PCE PATIENT CARE ENCOUNTER;**211**;Aug 12, 1996;Build 244
 ;
 ;===================================
CATBPRE(IEN) ;PX HF CATEGORY form pre-action.
 ;If no health factors belong to the category, allow editing of
 ;Entry Type.
 Q
 I $D(^AUTTHF("AC",IEN))=0 D UNED^DDSUTL("ENTRY TYPE","PX HF CATEGORY MAIN BLOCK",1,0,IEN_",")
 Q
 ;
 ;===================================
CATNDVAL(NAME) ;Name data validation for PX HF CATEGORY.
 I NAME="" Q
 N L3C,LEN
 S LEN=$L(NAME),L3C=$E(NAME,(LEN-2),LEN)
 I L3C="[C]" Q
 D HLP^DDSUTL("Category names must end with '[C]'")
 S DDSERROR=1
 Q
 ;
 ;===================================
CODEPAOC(DA) ;Code Post-Action On Change.
 N CODE,CODESYS,NEWCODE,SAVEDDS
 S CODESYS=$$GET^DDSVAL(9999999.66,.DA,.01)
 S CODE=$$GET^DDSVAL(9999999.66,.DA,1)
 ;DBIA #5746 covers kill and set of DDS.
 I $D(DDS) S SAVEDDS=DDS K DDS
 ;Call the Lexicon search.
 S NEWCODE=$$GETCODE^PXLEXS(CODESYS,CODE,DT,0)
 ;Reset the screen so ScreenMan displays properly.
 I $D(SAVEDDS) D
 . N IOAWM0,X
 . S DDS=SAVEDDS
 . S X=0 X ^%ZOSF("RM"),^%ZOSF("TYPE-AHEAD")
 . S X="IOAWM0" D ENDR^%ZISS W IOAWM0
 . D REFRESH^DDSUTL
 D PUT^DDSVAL(9999999.66,.DA,1,NEWCODE)
 Q
 ;
 ;===================================
CODEPRE(DA) ;Code pre-action.
 N CODESYS,TEXT
 S CODESYS=$$GET^DDSVAL(9999999.66,.DA,.01)
 ;DBIA #5679
 S CODESYS=$P($$CSYS^LEXU(CODESYS),U,4)
 S TEXT(1)="Input a search term or a "_CODESYS_" code."
 D EN^DDIOL(.TEXT)
 Q
 ;
 ;===================================
DELPAOC(X,DA) ;Delete field post action on change.
 N IENS
 I X=1 S IENS=$$IENS^DILF(.DA),^TMP($J,"UNLINK",9999999.64,IENS)=""
 Q
 ;
 ;===================================
DELPRE ;Delete field pre-action.
 N TEXT
 S TEXT(1)="Enter 'Y' if you want to delete this code mapping."
 S TEXT(2)="Warning - a deletion will remove all mapped source entries created"
 S TEXT(3)="as a result of this code mapping."
 D EN^DDIOL(.TEXT)
 Q
 ;
 ;===================================
FDATAVAL(IEN) ;Form Data Validation.
 ;If either MINIMUM VALUE or MAXIMUM VALUE is defined, they both must be.
 N MAX,MIN,TEXT
 S MIN=$$GET^DDSVAL(9999999.64,IEN,220)
 S MAX=$$GET^DDSVAL(9999999.64,IEN,221)
 I (MIN=""),(MAX'="") D  Q
 . S TEXT(1)="The Maximum Value is "_MAX_", but the Minimum Value is undefined."
 . S TEXT(2)="Set a Minimum Value or delete the Maximum Value."
 . D HLP^DDSUTL(.TEXT)
 . S DDSBR="MINIMUM VALUE",DDSERROR=1
 I (MIN'=""),(MAX="") D  Q
 . S TEXT(1)="The Minimum Value is "_MIN_", but the Maximum Value is undefined."
 . S TEXT(2)="Set a Maximum Value or delete the Minimum Value."
 . D HLP^DDSUTL(.TEXT)
 . S DDSBR="MAXIMUM VALUE",DDSERROR=1
 I MAX<MIN D  Q
 . S TEXT(1)="The Maximum Value cannot be less than the Minimum Value."
 . D HLP^DDSUTL(.TEXT)
 . S DDSBR="MAXIMUM VALUE",DDSERROR=1
 Q
 ;
 ;===================================
FPOSTACT(IEN) ;Form Post-Action
 N INACTIVE,INUSE,OUTPUT
 ;If the change was a deletion there is nothing else to do.
 I '$D(^AUTTHF(D0)) Q
 ;If the exam was inactivated check to see if it is being used.
 ;Need a new FileMan API to do this.
 S INACTIVE=$$GET^DDSVAL(9999999.64,IEN,"INACTIVE FLAG")
 Q
 ;S INUSE=$S(INACTIVE:$$INUSE^PXRMTAXD(D0,"INACT"),1:0)
 ;I INUSE D HLP^DDSUTL("$$EOP")
 Q
 ;
 ;===================================
FPOSTSAV(IEN) ;Form Post-Save.
 ;Check for mapped codes to link.
 D MCLINK^PXMCLINK(9999999.64,IEN)
 ;Check for mappings to delete and unlink.
 I $D(^TMP($J,"UNLINK",9999999.64)) D MCUNLINK^PXMCLINK(9999999.64,IEN)
 Q
 ;
 ;===================================
FPREACT(DA) ;Form pre-action
 Q
 ;
 ;===================================
LINKED(DA) ;This is the display for the Linked column, the field is uneditable.
 I DA="" Q " "
 N LINKDT
 S LINKDT=$$GET^DDSVAL(9999999.66,.DA,"DATE LINKED")
 Q $S(LINKDT'="":"Y",1:"N")
 ;
 ;===================================
MCBLKPRE(DA) ;Mapped codes block pre-action.
 ;Make any mapped codes uneditable.
 N IENS,IND
 S IEN=DA(1),IND=0
 F  S IND=+$O(^AUTTHF(IEN,210,IND)) Q:IND=0  D
 . I $P(^AUTTHF(IEN,210,IND,0),U,2)="" Q
 . S IENS=IND_","_IEN_","
 . D UNED^DDSUTL("CODING SYSTEM","PX HF CODE MAPPINGS BLOCK",1,1,IENS)
 . D UNED^DDSUTL("CODE","PX HF CODE MAPPINGS BLOCK",1,1,IENS)
 . D UNED^DDSUTL("DELETE","PX HF CODE MAPPINGS BLOCK",1,0,IENS)
 Q
 ;
 ;===================================
SMANEDIT(IEN,NEW) ;ScreenMan edit for entry IEN.
 N CLASS,DA,DDSCHANG,DDSFILE,DDSPARM,DDSSAVE,DEL,DIDEL,DIMSG,DR,DTOUT
 N ETYPE,HASH256,OCLOG,NATOK,SHASH256
 S CLASS=$P(^AUTTHF(IEN,100),U,1)
 S NATOK=$S(CLASS'="N":1,1:($G(PXNAT)=1)&($G(DUZ(0))="@"))
 I 'NATOK D  Q
 . W !,"National health factors cannot be edited."
 . H 2
 . S VALMBCK="R"
 S ETYPE=$$GET^DDSVAL(9999999.64,IEN,.1)
 S DR=$S(ETYPE="C":"[PX HF CATEGORY EDIT]",$D(^XUSEC("PX CODE MAPPING",DUZ)):"[PX HEALTH FACTOR EDIT]",1:"[PX HEALTH FACTOR EDIT NCM]")
 S (DDSFILE,DIDEL)=9999999.64,DDSPARM="CS"
 S NEW=$G(NEW)
 S SHASH256=$$FILE^XLFSHAN(256,9999999.64,IEN)
 S DA=IEN
 D ^DDS
 I $D(DIMSG) H 2
 ;If the entry is new and the user did not save, delete it.
 I NEW,$G(DDSSAVE)'=1 D DELETE^PXRMEXFI(9999999.64,IEN) Q
 ;If changes were made update the change log. If the change was a
 ;deletion skip the change log.
 S DEL=$S($D(^AUTTHF(IEN)):0,1:1)
 I DEL D  Q
 . D BLDLIST^PXHFMGR("PXHFL")
 . S VALMBCK="R"
 I NEW S OCLOG=1
 E  S HASH256=$$FILE^XLFSHAN(256,9999999.64,IEN),OCLOG=$S(HASH256=SHASH256:0,1:1)
 I 'OCLOG S VALMBCK="R" Q
 ;Open the Change Log
 N IENS,FDA,FDAIEN,MSG,WPTMP
 S IENS="+1,"_IEN_","
 S FDA(9999999.65,IENS,.01)=$$NOW^XLFDT
 S FDA(9999999.65,IENS,1)=DUZ
 I NEW D
 . S WPTMP(1,1,1)=" Creation."
 . S FDA(9999999.65,IENS,2)="WPTMP(1,1)"
 D UPDATE^DIE("S","FDA","FDAIEN","MSG")
 K DA,DDSFILE
 S DA=FDAIEN(1),DA(1)=IEN
 S DDSFILE=9999999.64,DDSFILE(1)=9999999.65
 S DR="[PX HEALTH FACTOR CHANGE LOG]"
 D ^DDS
 D BLDLIST^PXHFMGR("PXHFL") S VALMBCK="R"
 Q
 ;
 ;===================================
UNLINK(X,DA) ;Unlink form-only field save code.
 N IENS
 I X=1 S IENS=$$IENS^DILF(.DA),^TMP($J,"UNLINK",9999999.64,IENS)=""
 Q
 ;
