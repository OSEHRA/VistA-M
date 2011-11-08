%ZISG3 ;SFISC/AC -- Device Handler Prototype
 ;;8.0T3
B2 ;VADIMS M@WAPI/KWAPI INTERFACE
 I '@XGWIN@("ZISGTRM","G","SUBTYPE","VISIBLE") D
 .S SUB=@XGWIN@("ZISGTRM","G","SUB","VALUE")
 .I SUB]"" D
 ..S ITEM=$$SUBITEM(SUB)
 ..I ITEM]"" D
 ...D S^XG("ZISGTRM","G","SUBTYPE","VALUE",ITEM,"")
 ...D S^XG("ZISGTRM","G","SUBTYPE","TOPSHOW",ITEM)
 .;S ^$W("ZISGTRM","G","MARGIN","ACTIVE")=0
 .D S^XG("ZISGTRM","G","SUBTYPE","VISIBLE",1)
 E  D
 .D S^XG("ZISGTRM","G","SUBTYPE","VISIBLE",0)
 .;S ^$W("ZISGTRM","G","MARGIN","ACTIVE")=1
 .S ITEM=$O(@XGWIN@("ZISGTRM","G","SUBTYPE","VALUE",""))
 .I ITEM D S^XG("ZISGTRM","G","SUB","VALUE",@XGWIN@("ZISGTRM","G","SUBTYPE","CHOICE",ITEM))
 I $D(^$EVENT("ELEMENT")),^$EVENT("ELEMENT")["SUBTYPE" D
 .N SUB
 .S SUB=@XGWIN@("ZISGTRM","G","SUBTYPE","CHOICE",ITEM)
 .D SUBCHG(SUB)
 Q
SUB ; Callback for SUB item
 S SUB=^$W("ZISGTRM","G","SUB","VALUE")
 I SUB]"" D  D SUBCHG(SUB)
 .N %,%1
 .K ^$W("ZISGTRM","G","SUBTYPE","VALUE")
 .F %=1:1 Q:'$D(^$W("ZISGTRM","G","SUBTYPE","CHOICE",%))!(SUB="")  D
 ..S %1=^$W("ZISGTRM","G","SUBTYPE","CHOICE",%)
 ..I %1=SUB S ^$W("ZISGTRM","G","SUBTYPE","VALUE",%)="" S SUB="" Q
 ..I %1]SUB S ^$W("ZISGTRM","G","SUBTYPE","TOPSHOW")=% S SUB="" Q
 Q
SUBITEM(X) ;
 N %,%1,Y S Y=""
 .F %=1:1 Q:'$D(^$W("ZISGTRM","G","SUBTYPE","CHOICE",%))!(X="")  D
 .S %1=^$W("ZISGTRM","G","SUBTYPE","CHOICE",%)
 .I %1=X!(%1]X S Y=% S X="" Q
 Q Y
SUBCHG(X) ;Change in subtype
 ;This sub-routine triggers appropriate values to the
 ;relevant MWAPI fields(MARGIN and PAGE LENGTH).
 W !,"SUBCHG(X) has been called!!!"
 N %,RM,SL Q:$G(X)=""
 S %=$O(^%ZIS(2,"B",X,0)) Q:%'>0
 I '($D(^%ZIS(2,+%,0))#2) Q
 W !,"X==>>"_X
 Q:$P($G(^(0)),"^")'=X
 S RM=$P($G(^(1)),"^"),SL=$P($G(^(1)),"^",3)
 W !,"RM==>>"_RM
 I RM=80!(RM=132!(RM=255)) D
 .W !,"SETTING VALUE INTO ZMARGIN"
 .S ^$W("ZISGTRM","G","ZMARGIN","VALUE")=$S(RM=80:1,RM=132:2,RM=255:3,1:4)
 .W !,"SETTING MARGINVAL TO INACTIVE"
 .S ^$W("ZISGTRM","G","MARGINVAL","ACTIVE")=0
 E  D
 .S ^$W("ZISGTRM","G","ZMARGIN","VALUE")=4
 .S ^$W("ZISGTRM","G","MARGINVAL","ACTIVE")=1
 S ^$W("ZISGTRM","G","MARGINVAL","VALUE")=RM
 I SL=24!(SL=66!(SL=88!(SL=96))) D
 .S ^$W("ZISGTRM","G","ZPAGELENGTH","VALUE")=$S(SL=24:1,SL=66:2,SL=88:3,SL=96:4,1:5)
 .S ^$W("ZISGTRM","G","PAGELENGTHVAL","ACTIVE")=0
 E  D
 .S ^$W("ZISGTRM","G","ZPAGELENGTH","VALUE")=5
 .S ^$W("ZISGTRM","G","PAGELENGTHVAL","ACTIVE")=1
 S ^$W("ZISGTRM","G","PAGELENGTHVAL","VALUE")=SL
 Q
CHGRAD ;CHANGE IN MARGIN
 N REF
 ;S REF="^$W("""_^$EVENT("WINDOW")_""",""G"")"
 ;S REF=@XGWIN_"("""_@XGEVENT@("WINDOW")_""",""G"")"
 S REF=XGWIN_"("""_@XGEVENT@("WINDOW")_""",""G"")"
 ;S GADGET=$P(^$EVENT("ELEMENT"),",",2)
 S GADGET=$P(@XGEVENT@("ELEMENT"),",",2)
 S ITEM=@REF@(GADGET,"VALUE")
 S VALUE=@REF@(GADGET,"CHOICE",ITEM)
 S GADVAL=$E(GADGET,2,$L(GADGET))_"VAL"
 I VALUE="OTHER" D
 .S @REF@(GADVAL,"ACTIVE")=1
 E  D
 .S @REF@(GADVAL,"VALUE")=VALUE
 .S @REF@(GADVAL,"ACTIVE")=0
 ;S ^$W("ZISGTRM","G","MARGINVAL","VALUE")=^$EVENT("CHOICE")
 Q