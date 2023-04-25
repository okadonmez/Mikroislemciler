
_main:

;_dev4t.c,45 :: 		void main() {
;_dev4t.c,47 :: 		ANSEL = 0;
	CLRF       ANSEL+0
;_dev4t.c,48 :: 		ANSELH = 0;
	CLRF       ANSELH+0
;_dev4t.c,49 :: 		TRISD = 0;
	CLRF       TRISD+0
;_dev4t.c,50 :: 		PORTD = 0x0F;
	MOVLW      15
	MOVWF      PORTD+0
;_dev4t.c,52 :: 		while(1){
L_main0:
;_dev4t.c,54 :: 		PORTD = 0x08;
	MOVLW      8
	MOVWF      PORTD+0
;_dev4t.c,55 :: 		delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	DECFSZ     R11+0, 1
	GOTO       L_main2
	NOP
;_dev4t.c,56 :: 		PORTD = 0x0C;
	MOVLW      12
	MOVWF      PORTD+0
;_dev4t.c,57 :: 		delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
	NOP
;_dev4t.c,58 :: 		PORTD = 0x04;
	MOVLW      4
	MOVWF      PORTD+0
;_dev4t.c,59 :: 		delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main4:
	DECFSZ     R13+0, 1
	GOTO       L_main4
	DECFSZ     R12+0, 1
	GOTO       L_main4
	DECFSZ     R11+0, 1
	GOTO       L_main4
	NOP
;_dev4t.c,60 :: 		PORTD = 0x06;
	MOVLW      6
	MOVWF      PORTD+0
;_dev4t.c,61 :: 		delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	DECFSZ     R11+0, 1
	GOTO       L_main5
	NOP
;_dev4t.c,62 :: 		PORTD = 0x02;
	MOVLW      2
	MOVWF      PORTD+0
;_dev4t.c,63 :: 		delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
	DECFSZ     R11+0, 1
	GOTO       L_main6
	NOP
;_dev4t.c,64 :: 		PORTD = 0x03;
	MOVLW      3
	MOVWF      PORTD+0
;_dev4t.c,65 :: 		delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main7:
	DECFSZ     R13+0, 1
	GOTO       L_main7
	DECFSZ     R12+0, 1
	GOTO       L_main7
	DECFSZ     R11+0, 1
	GOTO       L_main7
	NOP
;_dev4t.c,66 :: 		PORTD = 0x01;
	MOVLW      1
	MOVWF      PORTD+0
;_dev4t.c,67 :: 		delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main8:
	DECFSZ     R13+0, 1
	GOTO       L_main8
	DECFSZ     R12+0, 1
	GOTO       L_main8
	DECFSZ     R11+0, 1
	GOTO       L_main8
	NOP
;_dev4t.c,68 :: 		PORTD = 0x09;
	MOVLW      9
	MOVWF      PORTD+0
;_dev4t.c,69 :: 		delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main9:
	DECFSZ     R13+0, 1
	GOTO       L_main9
	DECFSZ     R12+0, 1
	GOTO       L_main9
	DECFSZ     R11+0, 1
	GOTO       L_main9
	NOP
;_dev4t.c,70 :: 		}
	GOTO       L_main0
;_dev4t.c,71 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
