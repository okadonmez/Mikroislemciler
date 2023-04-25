
_interrupt:
	MOVWF      R15+0
	SWAPF      STATUS+0, 0
	CLRF       STATUS+0
	MOVWF      ___saveSTATUS+0
	MOVF       PCLATH+0, 0
	MOVWF      ___savePCLATH+0
	CLRF       PCLATH+0

;_rnek2.c,1 :: 		void interrupt(){
;_rnek2.c,3 :: 		delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_interrupt0:
	DECFSZ     R13+0, 1
	GOTO       L_interrupt0
	DECFSZ     R12+0, 1
	GOTO       L_interrupt0
	DECFSZ     R11+0, 1
	GOTO       L_interrupt0
	NOP
;_rnek2.c,4 :: 		PORTC.B0 = ~PORTC.B0;
	MOVLW      1
	XORWF      PORTC+0, 1
;_rnek2.c,5 :: 		PORTC.B1 = ~PORTC.B1;
	MOVLW      2
	XORWF      PORTC+0, 1
;_rnek2.c,6 :: 		INTCON.INTF = 0; //Kesme bayragini sifirlamak yeniden
	BCF        INTCON+0, 1
;_rnek2.c,8 :: 		}
L_end_interrupt:
L__interrupt4:
	MOVF       ___savePCLATH+0, 0
	MOVWF      PCLATH+0
	SWAPF      ___saveSTATUS+0, 0
	MOVWF      STATUS+0
	SWAPF      R15+0, 1
	SWAPF      R15+0, 0
	RETFIE
; end of _interrupt

_main:

;_rnek2.c,10 :: 		void main() {
;_rnek2.c,12 :: 		ansel = 0;
	CLRF       ANSEL+0
;_rnek2.c,13 :: 		anselh = 0;
	CLRF       ANSELH+0
;_rnek2.c,14 :: 		INTCON.GIE = 1;
	BSF        INTCON+0, 7
;_rnek2.c,15 :: 		INTCON.INTE = 1;
	BSF        INTCON+0, 4
;_rnek2.c,16 :: 		TRISC = 0x00;
	CLRF       TRISC+0
;_rnek2.c,17 :: 		PORTC = 0x00;
	CLRF       PORTC+0
;_rnek2.c,18 :: 		TRISB = 0x01;
	MOVLW      1
	MOVWF      TRISB+0
;_rnek2.c,19 :: 		PORTB = 0x00;
	CLRF       PORTB+0
;_rnek2.c,20 :: 		PORTC.B0 = 1;
	BSF        PORTC+0, 0
;_rnek2.c,21 :: 		PORTC.B1 = 0;
	BCF        PORTC+0, 1
;_rnek2.c,23 :: 		while(1){
L_main1:
;_rnek2.c,24 :: 		}
	GOTO       L_main1
;_rnek2.c,25 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
