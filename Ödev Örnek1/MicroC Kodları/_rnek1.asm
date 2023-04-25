
_main:

;_rnek1.c,1 :: 		void main() {
;_rnek1.c,3 :: 		ansel = 0;
	CLRF       ANSEL+0
;_rnek1.c,4 :: 		anselh = 0;
	CLRF       ANSELH+0
;_rnek1.c,5 :: 		TRISC = 0x00;
	CLRF       TRISC+0
;_rnek1.c,6 :: 		PORTC = 0x00;
	CLRF       PORTC+0
;_rnek1.c,8 :: 		while(1){
L_main0:
;_rnek1.c,10 :: 		PORTC.B0 = 1;
	BSF        PORTC+0, 0
;_rnek1.c,11 :: 		PORTC.B1 = 0;
	BCF        PORTC+0, 1
;_rnek1.c,12 :: 		}
	GOTO       L_main0
;_rnek1.c,13 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
