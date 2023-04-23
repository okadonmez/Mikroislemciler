
_main:

;_rnek6.c,6 :: 		void main() {
;_rnek6.c,8 :: 		TRISC=0;
	CLRF       TRISC+0
;_rnek6.c,10 :: 		while(1){
L_main0:
;_rnek6.c,22 :: 		int i=0;
	CLRF       main_i_L1+0
	CLRF       main_i_L1+1
;_rnek6.c,24 :: 		while(i<10){
L_main2:
	MOVLW      128
	XORWF      main_i_L1+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main6
	MOVLW      10
	SUBWF      main_i_L1+0, 0
L__main6:
	BTFSC      STATUS+0, 0
	GOTO       L_main3
;_rnek6.c,26 :: 		PORTC=seg[i];
	MOVF       main_i_L1+0, 0
	MOVWF      R0+0
	MOVF       main_i_L1+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      _seg+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTC+0
;_rnek6.c,27 :: 		delay_ms(30);
	MOVLW      78
	MOVWF      R12+0
	MOVLW      235
	MOVWF      R13+0
L_main4:
	DECFSZ     R13+0, 1
	GOTO       L_main4
	DECFSZ     R12+0, 1
	GOTO       L_main4
;_rnek6.c,28 :: 		i++;
	INCF       main_i_L1+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_i_L1+1, 1
;_rnek6.c,29 :: 		}
	GOTO       L_main2
L_main3:
;_rnek6.c,30 :: 		}
	GOTO       L_main0
;_rnek6.c,31 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
