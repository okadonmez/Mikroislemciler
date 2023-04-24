
_main:

;_rnek15.c,3 :: 		void main(){
;_rnek15.c,5 :: 		ANSEL=0;
	CLRF       ANSEL+0
;_rnek15.c,6 :: 		ANSELH=0;
	CLRF       ANSELH+0
;_rnek15.c,7 :: 		TRISA.RA4=1;
	BSF        TRISA+0, 4
;_rnek15.c,8 :: 		TRISD=0;
	CLRF       TRISD+0
;_rnek15.c,9 :: 		PORTD=0;
	CLRF       PORTD+0
;_rnek15.c,10 :: 		PORTA=0;
	CLRF       PORTA+0
;_rnek15.c,12 :: 		OPTION_REG=0b00101000;
	MOVLW      40
	MOVWF      OPTION_REG+0
;_rnek15.c,14 :: 		TMR0=0;
	CLRF       TMR0+0
;_rnek15.c,16 :: 		while(1){
L_main0:
;_rnek15.c,18 :: 		SSD();
	CALL       _SSD+0
;_rnek15.c,19 :: 		}
	GOTO       L_main0
;_rnek15.c,20 :: 		}
L_end_main:
	GOTO       $+0
; end of _main

_SSD:

;_rnek15.c,22 :: 		void SSD(){
;_rnek15.c,27 :: 		0X39,0X5E,0X79,0X71};
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
;_rnek15.c,29 :: 		PORTD=LED[TMR0];
	MOVF       TMR0+0, 0
	ADDLW      SSD_LED_L0+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTD+0
;_rnek15.c,31 :: 		if(TMR0==16){
	MOVF       TMR0+0, 0
	XORLW      16
	BTFSS      STATUS+0, 2
	GOTO       L_SSD2
;_rnek15.c,33 :: 		TMR0=0;
	CLRF       TMR0+0
;_rnek15.c,34 :: 		}
L_SSD2:
;_rnek15.c,35 :: 		}
L_end_SSD:
	RETURN
; end of _SSD
