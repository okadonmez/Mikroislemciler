
_interrupt:
	MOVWF      R15+0
	SWAPF      STATUS+0, 0
	CLRF       STATUS+0
	MOVWF      ___saveSTATUS+0
	MOVF       PCLATH+0, 0
	MOVWF      ___savePCLATH+0
	CLRF       PCLATH+0

;_rnek12.c,3 :: 		void interrupt(){
;_rnek12.c,5 :: 		SAY++;
	INCF       _SAY+0, 1
	BTFSC      STATUS+0, 2
	INCF       _SAY+1, 1
;_rnek12.c,6 :: 		PORTC=SAY;
	MOVF       _SAY+0, 0
	MOVWF      PORTC+0
;_rnek12.c,7 :: 		INTCON.INTF=0;
	BCF        INTCON+0, 1
;_rnek12.c,8 :: 		}
L_end_interrupt:
L__interrupt3:
	MOVF       ___savePCLATH+0, 0
	MOVWF      PCLATH+0
	SWAPF      ___saveSTATUS+0, 0
	MOVWF      STATUS+0
	SWAPF      R15+0, 1
	SWAPF      R15+0, 0
	RETFIE
; end of _interrupt

_main:

;_rnek12.c,10 :: 		void main(){
;_rnek12.c,12 :: 		ansel=0;
	CLRF       ANSEL+0
;_rnek12.c,13 :: 		anselh=0;
	CLRF       ANSELH+0
;_rnek12.c,14 :: 		TRISC=0x00;
	CLRF       TRISC+0
;_rnek12.c,15 :: 		TRISB=0xFF;
	MOVLW      255
	MOVWF      TRISB+0
;_rnek12.c,17 :: 		INTCON.GIE=1;
	BSF        INTCON+0, 7
;_rnek12.c,18 :: 		INTCON.INTE=1;
	BSF        INTCON+0, 4
;_rnek12.c,19 :: 		OPTION_REG.INTEDG=1;
	BSF        OPTION_REG+0, 6
;_rnek12.c,20 :: 		PORTC=0;
	CLRF       PORTC+0
;_rnek12.c,22 :: 		while(1){}
L_main0:
	GOTO       L_main0
;_rnek12.c,23 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
