DICA1 ;SEA/TOAD-VA FileMan: Updater, Pre-Processor ;13MAR2014
 ;;22.2;VA FileMan;;Jan 05, 2016;Build 42
 ;;Per VA Directive 6402, this routine should not be modified.
 ;;Submitted to OSEHRA 5 January 2015 by the VISTA Expertise Network.
 ;;Based on Medsphere Systems Corporation's MSC FileMan 1051.
 ;;Licensed under the terms of the Apache License, Version 2.0.
 ;
CHECK(DIFLAGS,DIFDA,DINUMS,DIRULE,DIOK) ;
 ; ENTRY POINT--check out the FDA
 ; subroutine, DIFLAGS passed by value
 N DIC,DIEN,DIFILE,DIFLD,DIN,DINODE,DINT,DINUM,DIOP
 N DIOUT1,DIOUT2,DIOUT3,DIRID,DIRIGHT,DISEQ,DITYPE,DIVAL
 N DIKEYEX
FILES ;
 S DIFILE=0,DIOUT1=0 F  D  Q:DIOUT1!$G(DIERR)
 . S DIFILE=$O(@DIFDA@(DIFILE))
 . I 'DIFILE S DIOUT1=1 Q
 . S DINODE=$G(^DD(DIFILE,.01,0))
 . I DINODE="" D  Q
 . . D ERR^DICA3($S('$D(^DD(DIFILE)):401,1:406),DIFILE)
 . I $P(DINODE,U,2)["W" D  Q
 . . D ERR^DICA3(407,DIFILE)
 . S DIRID=$$RID^DICU(DIFILE)
 . ;
 . ;If we're using primary keys for lookup, get key info
 . S DIKEYEX=$D(^DD("KEY","F",DIFILE))
 . I $G(DIFLAGS)["K",DIKEYEX D GETPKEY^DIEVK1(DIFILE)
 . ;
IENS . ;
 . S DIEN="",DIOUT2=0 F  D  Q:DIOUT2!$G(DIERR)
 . . S DIEN=$O(@DIFDA@(DIFILE,DIEN))
 . . I DIEN="" S DIOUT2=1 Q
 . . N DIDA D IEN^DICA2(.DIFILE,DIEN,.DIDA,DIRULE,.DIOK) Q:$G(DIERR)
 . . I 'DIOK S DIOUT1=1,DIOUT2=1 D  Q
 . . . I $E(DIEN,$L(DIEN))'="," D ERR^DICA3(304,"",DIEN) Q
 . . . D ERR^DICA3(202,"","","","IENS")
 . . Q:'$$RID(DIFILE,DIEN,DIFDA,DIRID,DIFLAGS,DIKEYEX)
 . . I $D(@DIFDA@(DIFILE,DIEN,.001))#2 D
 . . . N DIENS S DIENS=@DIFDA@(DIFILE,DIEN,.001)
 . . . I $D(@DINUMS@(@DIRULE@("NUM")))[0 D
 . . . . S @DINUMS@(@DIRULE@("NUM"))=DIENS
 . . . S @DIRULE@("SAVE",$J,DIFILE,DIEN,.001)=DIENS
 . . . K @DIFDA@(DIFILE,DIEN,.001)
VALUES . . ;
 . . I DIFLAGS'["E",$G(DIFLAGS)["U"!'DIKEYEX Q
 . . S DIFLD="",DIOUT3=0 F  D  Q:DIOUT3!$G(DIERR)
 . . . S DIFLD=$O(@DIFDA@(DIFILE,DIEN,DIFLD))
 . . . I DIFLD="" S DIOUT3=1 Q
 . . . I $G(DIFLAGS)'["U",DIKEYEX D BLDFLD^DIEVK1(DIFILE,DIEN,DIFLD) Q:DIFLAGS'["E"
 . . . I $E(DIEN)="?",$E(DIEN,2)'="+" Q:DIFLD=.01&(DIFLAGS'["K")  I DIFLAGS["K",$D(^TMP("DIKK",$J,"P",DIFILE,DIFILE,DIFLD))#2 Q
 . . . S DIVAL=$G(@DIFDA@(DIFILE,DIEN,DIFLD))
 . . . D DTYP^DIOU(DIFILE,DIFLD,.DITYPE)
 . . . I DITYPE=5 S DINT=DIVAL
CONVERT . . . ;
 . . . I DITYPE'=5 D  Q:$G(DIERR)
 . . . . I DIEN["?"!(DIEN["+") D  Q:$G(DIERR)
 . . . . . I "@"[DIVAL D  Q
 . . . . . . I DIEN["?",$P($G(^DD(DIFILE,DIFLD,0)),U,2)["R" D  Q
 . . . . . . . D ERR712(DIFILE,DIFLD)
 . . . . . . S DINT=DIVAL
 . . . . . I DIFLAGS["K",$E(DIEN)'="+",$P($G(^DD(DIFILE,DIFLD,0)),U,5,999)["DINUM",$D(^TMP("DIKK",$J,"P",DIFILE)),$D(^(DIFILE,DIFLD))[0 D  Q
 . . . . . . D ERR^DICA3(520,DIFILE,"",DIFLD,"DINUMed")
 . . . . . N DA M DA=DIDA
 . . . . . N DIARG S DIARG="D0"
 . . . . . N DIMAX S DIMAX=$O(DA(""),-1)
 . . . . . N DIVAR F DIVAR=1:1:DIMAX S DIARG=DIARG_",D"_DIVAR
 . . . . . N @DIARG F DIVAR=0:1:DIMAX-1 S @("D"_DIVAR)=DA(DIMAX-DIVAR)
 . . . . . S:DIMAX @("D"_DIMAX)=DA
 . . . . . N DIDA D CHK^DIE(DIFILE,DIFLD,"N",DIVAL,.DINT)
 . . . . E  D  Q:$G(DIERR)
 . . . . . N DIVALFLG S DIVALFLG="RU"_$E("Y",DIFLAGS["Y")
 . . . . . D VAL^DIE(DIFILE,DIEN,DIFLD,DIVALFLG,DIVAL,.DINT)
 . . . . Q:$D(DINUM)[0
 . . . . S @DINUMS@(@DIRULE@("NUM"))=DINUM K DINUM
 . . . S @DIRULE@("FDA",DIFILE,DIEN,DIFLD)=DINT
CLEANUP ;
 I $G(DIERR)!'DIOK K @DIRULE Q
 K @DIRULE@("L"),@DIRULE@("NUM"),@DIRULE@("OP"),@DIRULE@("ROOT")
 K @DIRULE@("SEQ"),@DIRULE@("TEMP"),@DIRULE@("UP")
 S DIN=$NA(@DIRULE@("ORDER")),DIC=0,@DIRULE@("THE END")=""
 F  S DIN=$Q(@DIN) Q:DIN=""!($P(DIN,",",3)'="""ORDER""")  D
 . S DIC=DIC+1,@DIRULE@("NEXT",DIC)=@DIN
 K @DIRULE@("ORDER"),@DIRULE@("THE END")
 I DIFLAGS["E" S DIFDA=$NA(@DIRULE@("FDA"))
 Q
 ;
RID(DIFILE,DIEN,DIFDA,DIRID,DIFLAGS,DIKEYEX) ;
 N DIC,DIK,DIOK,DIP,DIR
 ;
 ;Check required ids
 S DIP=$P(DIEN,","),DIOK=1
 F DIC=1:1 S DIR=$P(DIRID,U,DIC) Q:DIR=""  D
 . I DIR=.01 D
 . . I DIP'?1P.E
 . . E  I DIP["+" D:"@"[$G(@DIFDA@(DIFILE,DIEN,.01))
 . . . S DIOK=0 D ERR^DICA3(352,DIFILE,DIEN)
 . . E  I DIFLAGS'["K" D:"@"[$G(@DIFDA@(DIFILE,DIEN,.01))
 . . . S DIOK=0 D ERR^DICA3(351,DIFILE,DIEN)
 . E  I DIP["+" D:"@"[$G(@DIFDA@(DIFILE,DIEN,DIR))
 . . S DIOK=0 D ERR^DICA3(312,DIFILE) ;"The list of fields is missing a required identifier for FILE #---"
 . E  D:"@"[$G(@DIFDA@(DIFILE,DIEN,DIR),0)
 . . S DIOK=0 D ERR712(DIFILE,DIR)
 ;
 ;Check that the FDA contains the appropriate key fields
 Q:'$G(DIKEYEX,1) DIOK
 ;
 ;If appropriate, ensure all primary and secondary keys are provided
 I DIFLAGS'["U",DIP["+" D
 . S DIR=0 F  S DIR=$O(^DD("KEY","F",DIFILE,DIR)) Q:'DIR  D
 . . D:"@"[$G(@DIFDA@(DIFILE,DIEN,DIR))
 . . . S DIK=0 F  S DIK=$O(^DD("KEY","F",DIFILE,DIR,DIK)) Q:'DIK  D
 . . . . S DIOK=0 D ERR744^DIEVK1(DIFILE,DIR,DIK,DIEN)
 ;
 ;If appropriate, ensure at least one key field is provided
 E  I $G(DIFLAGS)["K",$E(DIEN)="?",$E(DIEN,2)'="+"!($G(DIFLAGS)["U") D
 . S:'$$KFLD^DIEVK1(DIFILE,DIEN,DIFDA) DIOK=0
 Q DIOK
 ;
ERR712(DIFILE,DIFIELD) ;
 N DIFILNAM S DIFILNAM=$$FILENAME^DIALOGZ(DIFILE) S:DIFILNAM?." " DIFILNAM="#"_DIFILE ;**CCO/NI
 N DIFLDNAM S DIFLDNAM=$$FLDNM^DIEFU(DIFILE,DIFIELD)
 D ERR^DICA3(712,DIFILE,"",DIFIELD,DIFLDNAM,DIFILNAM)
 Q
