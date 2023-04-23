
_main:

;_rnek7.c,6 :: 		void main() {
;_rnek7.c,11 :: 		ANSEL=ANSELH=0;
	CLRF       ANSELH+0
	CLRF       ANSEL+0
;_rnek7.c,13 :: 		TRISA=1;
	MOVLW      1
	MOVWF      TRISA+0
;_rnek7.c,14 :: 		TRISB=1;
	MOVLW      1
	MOVWF      TRISB+0
;_rnek7.c,15 :: 		TRISC=0;
	CLRF       TRISC+0
;_rnek7.c,16 :: 		TRISD=0;
	CLRF       TRISD+0
;_rnek7.c,18 :: 		PORTC=0;
	CLRF       PORTC+0
;_rnek7.c,19 :: 		PORTD=0;
	CLRF       PORTD+0
;_rnek7.c,21 :: 		birler=0;
	CLRF       R3+0
	CLRF       R3+1
;_rnek7.c,22 :: 		onlar=0;
	CLRF       R5+0
	CLRF       R5+1
;_rnek7.c,24 :: 		while(1){
L_main0:
;_rnek7.c,26 :: 		PORTC=rakam[onlar];
	MOVF       R5+0, 0
	MOVWF      R0+0
	MOVF       R5+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      _rakam+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTC+0
;_rnek7.c,27 :: 		PORTD=rakam[birler];
	MOVF       R3+0, 0
	MOVWF      R0+0
	MOVF       R3+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      _rakam+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTD+0
;_rnek7.c,30 :: 		if(PORTA.b0==1){
	BTFSS      PORTA+0, 0
	GOTO       L_main2
;_rnek7.c,32 :: 		birler++;
	INCF       R3+0, 1
	BTFSC      STATUS+0, 2
	INCF       R3+1, 1
;_rnek7.c,33 :: 		delay_ms(50);
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
;_rnek7.c,34 :: 		}
L_main2:
;_rnek7.c,36 :: 		if(birler==10){
	MOVLW      0
	XORWF      R3+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main9
	MOVLW      10
	XORWF      R3+0, 0
L__main9:
	BTFSS      STATUS+0, 2
	GOTO       L_main4
;_rnek7.c,38 :: 		birler=0;
	CLRF       R3+0
	CLRF       R3+1
;_rnek7.c,39 :: 		onlar++;
	INCF       R5+0, 1
	BTFSC      STATUS+0, 2
	INCF       R5+1, 1
;_rnek7.c,40 :: 		}
L_main4:
;_rnek7.c,43 :: 		if(PORTB.b0==1){
	BTFSS      PORTB+0, 0
	GOTO       L_main5
;_rnek7.c,45 :: 		birler--;
	MOVLW      1
	SUBWF      R3+0, 1
	BTFSS      STATUS+0, 0
	DECF       R3+1, 1
;_rnek7.c,46 :: 		delay_ms(50);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
	NOP
	NOP
;_rnek7.c,47 :: 		}
L_main5:
;_rnek7.c,49 :: 		if(birler==-1){
	MOVLW      255
	XORWF      R3+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main10
	MOVLW      255
	XORWF      R3+0, 0
L__main10:
	BTFSS      STATUS+0, 2
	GOTO       L_main7
;_rnek7.c,51 :: 		birler=9;
	MOVLW      9
	MOVWF      R3+0
	MOVLW      0
	MOVWF      R3+1
;_rnek7.c,52 :: 		onlar=9;
	MOVLW      9
	MOVWF      R5+0
	MOVLW      0
	MOVWF      R5+1
;_rnek7.c,53 :: 		}
L_main7:
;_rnek7.c,54 :: 		}
	GOTO       L_main0
;_rnek7.c,55 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
