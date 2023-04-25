
_main:

;Ders5.c,1 :: 		void main() {
;Ders5.c,3 :: 		TRISA=0B00000000;
	CLRF       TRISA+0
;Ders5.c,4 :: 		PORTA=0;
	CLRF       PORTA+0
;Ders5.c,5 :: 		CMCON=7; //0x07
	MOVLW      7
	MOVWF      CMCON+0
;Ders5.c,7 :: 		while(1){
L_main0:
;Ders5.c,9 :: 		PORTA.RA0=1;
	BSF        PORTA+0, 0
;Ders5.c,10 :: 		Delay_ms(25);
	MOVLW      65
	MOVWF      R12+0
	MOVLW      238
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	NOP
;Ders5.c,11 :: 		PORTA.RA1=1;
	BSF        PORTA+0, 1
;Ders5.c,12 :: 		Delay_ms(25);
	MOVLW      65
	MOVWF      R12+0
	MOVLW      238
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	NOP
;Ders5.c,13 :: 		PORTA.RA0=0;
	BCF        PORTA+0, 0
;Ders5.c,14 :: 		PORTA.RA1=0;
	BCF        PORTA+0, 1
;Ders5.c,15 :: 		PORTA.RA2=1;
	BSF        PORTA+0, 2
;Ders5.c,16 :: 		Delay_ms(25);
	MOVLW      65
	MOVWF      R12+0
	MOVLW      238
	MOVWF      R13+0
L_main4:
	DECFSZ     R13+0, 1
	GOTO       L_main4
	DECFSZ     R12+0, 1
	GOTO       L_main4
	NOP
;Ders5.c,17 :: 		PORTA.RA2=0;
	BCF        PORTA+0, 2
;Ders5.c,18 :: 		}
	GOTO       L_main0
;Ders5.c,19 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
