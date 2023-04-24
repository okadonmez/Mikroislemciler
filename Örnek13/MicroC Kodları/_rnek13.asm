
_interrupt:
	MOVWF      R15+0
	SWAPF      STATUS+0, 0
	CLRF       STATUS+0
	MOVWF      ___saveSTATUS+0
	MOVF       PCLATH+0, 0
	MOVWF      ___savePCLATH+0
	CLRF       PCLATH+0

;_rnek13.c,3 :: 		void interrupt(){
;_rnek13.c,5 :: 		SAY=SAY+1;
	INCF       _SAY+0, 1
	BTFSC      STATUS+0, 2
	INCF       _SAY+1, 1
;_rnek13.c,6 :: 		PORTC=SAY;
	MOVF       _SAY+0, 0
	MOVWF      PORTC+0
;_rnek13.c,7 :: 		TMR0=0;
	CLRF       TMR0+0
;_rnek13.c,8 :: 		INTCON.t0if=0;
	BCF        INTCON+0, 2
;_rnek13.c,9 :: 		}
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

;_rnek13.c,11 :: 		void main(){
;_rnek13.c,13 :: 		TRISC=0;
	CLRF       TRISC+0
;_rnek13.c,14 :: 		OPTION_REG.T0CS=0;
	BCF        OPTION_REG+0, 5
;_rnek13.c,15 :: 		OPTION_REG.PSA=0;
	BCF        OPTION_REG+0, 3
;_rnek13.c,16 :: 		OPTION_REG.PS0=0;
	BCF        OPTION_REG+0, 0
;_rnek13.c,17 :: 		OPTION_REG.PS1=1;
	BSF        OPTION_REG+0, 1
;_rnek13.c,18 :: 		OPTION_REG.PS2=1;
	BSF        OPTION_REG+0, 2
;_rnek13.c,20 :: 		INTCON.GIE=1;
	BSF        INTCON+0, 7
;_rnek13.c,21 :: 		INTCON.T0IE=1;
	BSF        INTCON+0, 5
;_rnek13.c,22 :: 		TMR0=0;
	CLRF       TMR0+0
;_rnek13.c,24 :: 		while(1){}
L_main0:
	GOTO       L_main0
;_rnek13.c,25 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
