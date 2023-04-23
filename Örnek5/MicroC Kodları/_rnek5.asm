
_main:

;_rnek5.c,4 :: 		void main() {
;_rnek5.c,6 :: 		TRISB=0;
	CLRF       TRISB+0
;_rnek5.c,7 :: 		ANSEL=ANSELH=0;
	CLRF       ANSELH+0
	CLRF       ANSEL+0
;_rnek5.c,8 :: 		PORTB=0b00110000;
	MOVLW      48
	MOVWF      PORTB+0
;_rnek5.c,9 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main0:
	DECFSZ     R13+0, 1
	GOTO       L_main0
	DECFSZ     R12+0, 1
	GOTO       L_main0
	NOP
;_rnek5.c,11 :: 		while(1){
L_main1:
;_rnek5.c,13 :: 		if(PORTB>=0b11000000&&up==1){
	MOVLW      192
	SUBWF      PORTB+0, 0
	BTFSS      STATUS+0, 0
	GOTO       L_main5
	MOVLW      0
	XORWF      _up+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main22
	MOVLW      1
	XORWF      _up+0, 0
L__main22:
	BTFSS      STATUS+0, 2
	GOTO       L_main5
L__main20:
;_rnek5.c,15 :: 		down=1;
	MOVLW      1
	MOVWF      _down+0
	MOVLW      0
	MOVWF      _down+1
;_rnek5.c,16 :: 		}
L_main5:
;_rnek5.c,18 :: 		if(PORTB>=0b11000000||down==1){
	MOVLW      192
	SUBWF      PORTB+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L__main19
	MOVLW      0
	XORWF      _down+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main23
	MOVLW      1
	XORWF      _down+0, 0
L__main23:
	BTFSC      STATUS+0, 2
	GOTO       L__main19
	GOTO       L_main8
L__main19:
;_rnek5.c,20 :: 		PORTB=PORTB>>1;
	MOVF       PORTB+0, 0
	MOVWF      R0+0
	RRF        R0+0, 1
	BCF        R0+0, 7
	MOVF       R0+0, 0
	MOVWF      PORTB+0
;_rnek5.c,21 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main9:
	DECFSZ     R13+0, 1
	GOTO       L_main9
	DECFSZ     R12+0, 1
	GOTO       L_main9
	NOP
;_rnek5.c,22 :: 		up=0;
	CLRF       _up+0
	CLRF       _up+1
;_rnek5.c,23 :: 		}
L_main8:
;_rnek5.c,26 :: 		if(PORTB<=0b00000011&&down==1){
	MOVF       PORTB+0, 0
	SUBLW      3
	BTFSS      STATUS+0, 0
	GOTO       L_main12
	MOVLW      0
	XORWF      _down+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main24
	MOVLW      1
	XORWF      _down+0, 0
L__main24:
	BTFSS      STATUS+0, 2
	GOTO       L_main12
L__main18:
;_rnek5.c,28 :: 		up=1;
	MOVLW      1
	MOVWF      _up+0
	MOVLW      0
	MOVWF      _up+1
;_rnek5.c,29 :: 		}
L_main12:
;_rnek5.c,31 :: 		if(PORTB<=0b00000000||up==1){
	MOVF       PORTB+0, 0
	SUBLW      0
	BTFSC      STATUS+0, 0
	GOTO       L__main17
	MOVLW      0
	XORWF      _up+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main25
	MOVLW      1
	XORWF      _up+0, 0
L__main25:
	BTFSC      STATUS+0, 2
	GOTO       L__main17
	GOTO       L_main15
L__main17:
;_rnek5.c,33 :: 		PORTB=PORTB<<1;
	MOVF       PORTB+0, 0
	MOVWF      R0+0
	RLF        R0+0, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	MOVWF      PORTB+0
;_rnek5.c,34 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main16:
	DECFSZ     R13+0, 1
	GOTO       L_main16
	DECFSZ     R12+0, 1
	GOTO       L_main16
	NOP
;_rnek5.c,35 :: 		down=0;
	CLRF       _down+0
	CLRF       _down+1
;_rnek5.c,36 :: 		}
L_main15:
;_rnek5.c,37 :: 		}
	GOTO       L_main1
;_rnek5.c,38 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
