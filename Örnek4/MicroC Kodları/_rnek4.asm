
_main:

;_rnek4.c,1 :: 		void main() {
;_rnek4.c,3 :: 		TRISB=0;
	CLRF       TRISB+0
;_rnek4.c,4 :: 		ANSEL=ANSELH=0;
	CLRF       ANSELH+0
	CLRF       ANSEL+0
;_rnek4.c,5 :: 		PORTB=0b00110000;
	MOVLW      48
	MOVWF      PORTB+0
;_rnek4.c,6 :: 		delay_ms(50);
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
;_rnek4.c,8 :: 		while(1){
L_main1:
;_rnek4.c,10 :: 		PORTB=PORTB<<1;
	MOVF       PORTB+0, 0
	MOVWF      R0+0
	RLF        R0+0, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	MOVWF      PORTB+0
;_rnek4.c,11 :: 		delay_ms(50);
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
;_rnek4.c,13 :: 		if(PORTB>=0b11000000){
	MOVLW      192
	SUBWF      PORTB+0, 0
	BTFSS      STATUS+0, 0
	GOTO       L_main4
;_rnek4.c,15 :: 		PORTB=129;
	MOVLW      129
	MOVWF      PORTB+0
;_rnek4.c,16 :: 		delay_ms(50);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	NOP
	NOP
;_rnek4.c,17 :: 		}
L_main4:
;_rnek4.c,19 :: 		if(PORTB>=0b10000001){
	MOVLW      129
	SUBWF      PORTB+0, 0
	BTFSS      STATUS+0, 0
	GOTO       L_main6
;_rnek4.c,21 :: 		PORTB=3;
	MOVLW      3
	MOVWF      PORTB+0
;_rnek4.c,22 :: 		delay_ms(50);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main7:
	DECFSZ     R13+0, 1
	GOTO       L_main7
	DECFSZ     R12+0, 1
	GOTO       L_main7
	NOP
	NOP
;_rnek4.c,23 :: 		}
L_main6:
;_rnek4.c,24 :: 		}
	GOTO       L_main1
;_rnek4.c,25 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
