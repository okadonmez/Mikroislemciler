
_main:

;_rnek2.c,5 :: 		void main() {
;_rnek2.c,7 :: 		TRISB=0;
	CLRF       TRISB+0
;_rnek2.c,8 :: 		ANSEL=ANSELH=0; //~ operatoru icin gerekli
	CLRF       ANSELH+0
	CLRF       ANSEL+0
;_rnek2.c,12 :: 		PORTB=0b11110000;
	MOVLW      240
	MOVWF      PORTB+0
;_rnek2.c,13 :: 		delay_ms(50);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main0:
	DECFSZ     R13+0, 1
	GOTO       L_main0
	DECFSZ     R12+0, 1
	GOTO       L_main0
	NOP
	NOP
;_rnek2.c,15 :: 		while(1){
L_main1:
;_rnek2.c,17 :: 		PORTB=~PORTB; //tersleme operatoru mesela 0->1 veya 1->0
	COMF       PORTB+0, 1
;_rnek2.c,18 :: 		delay_ms(50);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	NOP
	NOP
;_rnek2.c,19 :: 		}
	GOTO       L_main1
;_rnek2.c,20 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
