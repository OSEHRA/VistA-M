YTMMP7 ;SLC/DKG-TEST PKG: MMPI FORM R TO BOOKLET ; 10/21/88  17:01 ;
 ;;5.01;MENTAL HEALTH;;Dec 30, 1994
 ;
 F J=2,3 S Y(J)=X(J)
 S F="200,206,211,215,167,227,236,168,240,246,169,249,250,251,255,261,170,262,269,273,279,281,282,287,171,302,305,321,347,349,172,173,364,174"
 S X(2)=$E(X(2),1,166)
 F J=1:1:34 S A=$P(F,",",J),X(2)=X(2)_$S(A>200:$E(Y(3),A-200),1:$E(Y(2),A))
 K F,Y(3)
 S F="6,11,15,27,36,40,46,49,50,51,55,61,62,69,73,79,81,82,87,102,105,121,147,149,164"
 F J=175:1:199 S A=$P(F,",",J-174),X(3)=$E(X(3),1,A-1)_$E(Y(2),J)_$E(X(3),A+1,200)
 K F,A,Y S YSTEST=$O(^YTT(601,"B","MMPI",0)) Q
