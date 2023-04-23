
_main:

;_rnek9.c,24 :: 		void main() {
;_rnek9.c,26 :: 		ANSEL = 0;
	CLRF       ANSEL+0
;_rnek9.c,27 :: 		ANSELH = 0b00010000;
	MOVLW      16
	MOVWF      ANSELH+0
;_rnek9.c,28 :: 		C1ON_bit = 0;
	BCF        C1ON_bit+0, BitPos(C1ON_bit+0)
;_rnek9.c,29 :: 		C2ON_bit = 0;
	BCF        C2ON_bit+0, BitPos(C2ON_bit+0)
;_rnek9.c,31 :: 		TRISB = 0XFF;
	MOVLW      255
	MOVWF      TRISB+0
;_rnek9.c,32 :: 		TRISC = 0;
	CLRF       TRISC+0
;_rnek9.c,33 :: 		TRISD = 0;
	CLRF       TRISD+0
;_rnek9.c,35 :: 		do{
L_main0:
;_rnek9.c,37 :: 		temp = ADC_Read(12);
	MOVLW      12
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+0, 0
	MOVWF      _temp+0
	MOVF       R0+1, 0
	MOVWF      _temp+1
;_rnek9.c,38 :: 		PORTC = temp;
	MOVF       R0+0, 0
	MOVWF      PORTC+0
;_rnek9.c,39 :: 		PORTD = temp >> 8;
	MOVF       R0+1, 0
	MOVWF      R2+0
	CLRF       R2+1
	MOVF       R2+0, 0
	MOVWF      PORTD+0
;_rnek9.c,40 :: 		}while(1);
	GOTO       L_main0
;_rnek9.c,41 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
