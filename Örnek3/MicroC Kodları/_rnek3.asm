
_main:

;_rnek3.c,1 :: 		void main() {
;_rnek3.c,3 :: 		TRISA=1;
	MOVLW      1
	MOVWF      TRISA+0
;_rnek3.c,4 :: 		TRISB=0;
	CLRF       TRISB+0
;_rnek3.c,5 :: 		ANSEL=ANSELH=0;
	CLRF       ANSELH+0
	CLRF       ANSEL+0
;_rnek3.c,6 :: 		PORTB.F0=0;
	BCF        PORTB+0, 0
;_rnek3.c,8 :: 		while(1){
L_main0:
;_rnek3.c,10 :: 		if(PORTA.F7==1){
	BTFSS      PORTA+0, 7
	GOTO       L_main2
;_rnek3.c,12 :: 		PORTB.F0=1;
	BSF        PORTB+0, 0
;_rnek3.c,13 :: 		}
L_main2:
;_rnek3.c,15 :: 		if(PORTA.F7==0){
	BTFSC      PORTA+0, 7
	GOTO       L_main3
;_rnek3.c,17 :: 		PORTB.F0=0;
	BCF        PORTB+0, 0
;_rnek3.c,18 :: 		}
L_main3:
;_rnek3.c,19 :: 		}
	GOTO       L_main0
;_rnek3.c,20 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
