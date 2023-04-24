
_interrupt:
	MOVWF      R15+0
	SWAPF      STATUS+0, 0
	CLRF       STATUS+0
	MOVWF      ___saveSTATUS+0
	MOVF       PCLATH+0, 0
	MOVWF      ___savePCLATH+0
	CLRF       PCLATH+0

;_rnek21.c,3 :: 		void interrupt(){
;_rnek21.c,5 :: 		if(say==30){
	MOVF       _say+0, 0
	XORLW      30
	BTFSS      STATUS+0, 2
	GOTO       L_interrupt0
;_rnek21.c,7 :: 		ADCON0.GO=1;
	BSF        ADCON0+0, 1
;_rnek21.c,9 :: 		delay_us(100);
	MOVLW      66
	MOVWF      R13+0
L_interrupt1:
	DECFSZ     R13+0, 1
	GOTO       L_interrupt1
	NOP
;_rnek21.c,11 :: 		PORTC=ADRESH;
	MOVF       ADRESH+0, 0
	MOVWF      PORTC+0
;_rnek21.c,13 :: 		say=0;
	CLRF       _say+0
;_rnek21.c,15 :: 		if(PORTC<64){
	MOVLW      64
	SUBWF      PORTC+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_interrupt2
;_rnek21.c,17 :: 		PORTD=0b00000001;
	MOVLW      1
	MOVWF      PORTD+0
;_rnek21.c,18 :: 		}
L_interrupt2:
;_rnek21.c,20 :: 		if(PORTC>89){
	MOVF       PORTC+0, 0
	SUBLW      89
	BTFSC      STATUS+0, 0
	GOTO       L_interrupt3
;_rnek21.c,22 :: 		PORTD=0b00001000;
	MOVLW      8
	MOVWF      PORTD+0
;_rnek21.c,23 :: 		}
L_interrupt3:
;_rnek21.c,25 :: 		if(PORTC>64 && PORTC<89){
	MOVF       PORTC+0, 0
	SUBLW      64
	BTFSC      STATUS+0, 0
	GOTO       L_interrupt6
	MOVLW      89
	SUBWF      PORTC+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_interrupt6
L__interrupt9:
;_rnek21.c,27 :: 		PORTD=0b00000000;
	CLRF       PORTD+0
;_rnek21.c,28 :: 		}
L_interrupt6:
;_rnek21.c,29 :: 		}
L_interrupt0:
;_rnek21.c,32 :: 		say++;
	INCF       _say+0, 1
;_rnek21.c,33 :: 		}
L_end_interrupt:
L__interrupt11:
	MOVF       ___savePCLATH+0, 0
	MOVWF      PCLATH+0
	SWAPF      ___saveSTATUS+0, 0
	MOVWF      STATUS+0
	SWAPF      R15+0, 1
	SWAPF      R15+0, 0
	RETFIE
; end of _interrupt

_main:

;_rnek21.c,35 :: 		void main(){
;_rnek21.c,37 :: 		ANSEL=1;
	MOVLW      1
	MOVWF      ANSEL+0
;_rnek21.c,38 :: 		ANSELH=0;
	CLRF       ANSELH+0
;_rnek21.c,39 :: 		TRISA=1;
	MOVLW      1
	MOVWF      TRISA+0
;_rnek21.c,40 :: 		TRISC=0;
	CLRF       TRISC+0
;_rnek21.c,41 :: 		TRISD=0;
	CLRF       TRISD+0
;_rnek21.c,42 :: 		PORTC=0;
	CLRF       PORTC+0
;_rnek21.c,43 :: 		PORTD=0;
	CLRF       PORTD+0
;_rnek21.c,44 :: 		adcon1=0b00000000;
	CLRF       ADCON1+0
;_rnek21.c,45 :: 		adcon0=0b11000001;
	MOVLW      193
	MOVWF      ADCON0+0
;_rnek21.c,47 :: 		option_reg=0b00000111;
	MOVLW      7
	MOVWF      OPTION_REG+0
;_rnek21.c,49 :: 		intcon.GIE=1;
	BSF        INTCON+0, 7
;_rnek21.c,50 :: 		intcon.T0IE=1;
	BSF        INTCON+0, 5
;_rnek21.c,52 :: 		while(1){}
L_main7:
	GOTO       L_main7
;_rnek21.c,53 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
