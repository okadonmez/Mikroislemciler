
_main:

;_rnek14.c,3 :: 		void main() {
;_rnek14.c,4 :: 		PORTA=0x00;
	CLRF       PORTA+0
;_rnek14.c,5 :: 		PORTB=0x00;
	CLRF       PORTB+0
;_rnek14.c,6 :: 		TRISA.TRISA4=1;
	BSF        TRISA+0, 4
;_rnek14.c,7 :: 		TRISB=0x00;
	CLRF       TRISB+0
;_rnek14.c,8 :: 		OSCCON=0x70;
	MOVLW      112
	MOVWF      OSCCON+0
;_rnek14.c,9 :: 		OPTION_REG.T0CS=1;
	BSF        OPTION_REG+0, 5
;_rnek14.c,10 :: 		OPTION_REG.T0SE=1;
	BSF        OPTION_REG+0, 4
;_rnek14.c,11 :: 		OPTION_REG.PSA=1;
	BSF        OPTION_REG+0, 3
;_rnek14.c,12 :: 		OPTION_REG.PS0=1;
	BSF        OPTION_REG+0, 0
;_rnek14.c,13 :: 		OPTION_REG.PS1=1;
	BSF        OPTION_REG+0, 1
;_rnek14.c,14 :: 		OPTION_REG.PS2=1;
	BSF        OPTION_REG+0, 2
;_rnek14.c,15 :: 		TMR0=0;
	CLRF       TMR0+0
;_rnek14.c,16 :: 		while(1){
L_main0:
;_rnek14.c,18 :: 		SSD();
	CALL       _SSD+0
;_rnek14.c,19 :: 		}
	GOTO       L_main0
;_rnek14.c,20 :: 		}
L_end_main:
	GOTO       $+0
; end of _main

_SSD:

;_rnek14.c,22 :: 		void SSD(){
;_rnek14.c,27 :: 		0x39,0x5E,0x79,0x71};
	MOVLW      63
	MOVWF      SSD_LED_L0+0
	MOVLW      6
	MOVWF      SSD_LED_L0+1
	MOVLW      91
	MOVWF      SSD_LED_L0+2
	MOVLW      79
	MOVWF      SSD_LED_L0+3
	MOVLW      102
	MOVWF      SSD_LED_L0+4
	MOVLW      109
	MOVWF      SSD_LED_L0+5
	MOVLW      125
	MOVWF      SSD_LED_L0+6
	MOVLW      7
	MOVWF      SSD_LED_L0+7
	MOVLW      127
	MOVWF      SSD_LED_L0+8
	MOVLW      111
	MOVWF      SSD_LED_L0+9
	MOVLW      119
	MOVWF      SSD_LED_L0+10
	MOVLW      124
	MOVWF      SSD_LED_L0+11
	MOVLW      57
	MOVWF      SSD_LED_L0+12
	MOVLW      94
	MOVWF      SSD_LED_L0+13
	MOVLW      121
	MOVWF      SSD_LED_L0+14
	MOVLW      113
	MOVWF      SSD_LED_L0+15
;_rnek14.c,28 :: 		PORTB=LED[TMR0];
	MOVF       TMR0+0, 0
	ADDLW      SSD_LED_L0+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;_rnek14.c,29 :: 		if(TMR0==16){
	MOVF       TMR0+0, 0
	XORLW      16
	BTFSS      STATUS+0, 2
	GOTO       L_SSD2
;_rnek14.c,30 :: 		TMR0=0;
	CLRF       TMR0+0
;_rnek14.c,31 :: 		}
L_SSD2:
;_rnek14.c,32 :: 		}
L_end_SSD:
	RETURN
; end of _SSD
