
_main:

;ders4.c,50 :: 		void main(){
;ders4.c,52 :: 		CMCON=0x07;
	MOVLW      7
	MOVWF      CMCON+0
;ders4.c,53 :: 		VRCON=0;
	CLRF       VRCON+0
;ders4.c,55 :: 		TRISA=0b00000000;
	CLRF       TRISA+0
;ders4.c,56 :: 		TRISB=0x00;
	CLRF       TRISB+0
;ders4.c,57 :: 		PORTA=0;
	CLRF       PORTA+0
;ders4.c,58 :: 		PORTB=0;
	CLRF       PORTB+0
;ders4.c,59 :: 		led=1;
	MOVLW      1
	MOVWF      _led+0
;ders4.c,61 :: 		while(1){
L_main0:
;ders4.c,63 :: 		for(i=1; i<8; i++){
	MOVLW      1
	MOVWF      _i+0
L_main2:
	MOVLW      8
	SUBWF      _i+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main3
;ders4.c,65 :: 		PORTB=led;
	MOVF       _led+0, 0
	MOVWF      PORTB+0
;ders4.c,66 :: 		led=led<<1;
	RLF        _led+0, 1
	BCF        _led+0, 0
;ders4.c,67 :: 		Delay_ms(30);
	MOVLW      39
	MOVWF      R12+0
	MOVLW      245
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
;ders4.c,63 :: 		for(i=1; i<8; i++){
	INCF       _i+0, 1
;ders4.c,68 :: 		}
	GOTO       L_main2
L_main3:
;ders4.c,70 :: 		for(i=1; i<8; i++){
	MOVLW      1
	MOVWF      _i+0
L_main6:
	MOVLW      8
	SUBWF      _i+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main7
;ders4.c,72 :: 		PORTB=led;
	MOVF       _led+0, 0
	MOVWF      PORTB+0
;ders4.c,73 :: 		led=led>>1;
	RRF        _led+0, 1
	BCF        _led+0, 7
;ders4.c,74 :: 		Delay_ms(30);
	MOVLW      39
	MOVWF      R12+0
	MOVLW      245
	MOVWF      R13+0
L_main9:
	DECFSZ     R13+0, 1
	GOTO       L_main9
	DECFSZ     R12+0, 1
	GOTO       L_main9
;ders4.c,70 :: 		for(i=1; i<8; i++){
	INCF       _i+0, 1
;ders4.c,75 :: 		}
	GOTO       L_main6
L_main7:
;ders4.c,76 :: 		}
	GOTO       L_main0
;ders4.c,77 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
