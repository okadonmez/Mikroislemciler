
_main:

;_rnek1.c,1 :: 		void main() {
;_rnek1.c,3 :: 		TRISB=0;
	CLRF       TRISB+0
;_rnek1.c,5 :: 		while(1){
L_main0:
;_rnek1.c,6 :: 		PORTB.b1=1;
	BSF        PORTB+0, 1
;_rnek1.c,7 :: 		}
	GOTO       L_main0
;_rnek1.c,8 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
