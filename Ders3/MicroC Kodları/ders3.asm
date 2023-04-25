
_main:

;ders3.c,20 :: 		void main(){
;ders3.c,22 :: 		TRISA=0B00000000;
	CLRF       TRISA+0
;ders3.c,24 :: 		PORTA=0;//port icerigi temizlendi
	CLRF       PORTA+0
;ders3.c,26 :: 		while(1){
L_main0:
;ders3.c,28 :: 		PORTA.b0=1;    //5volt yolladý bu bacaða picin 17. bacaðýna
	BSF        PORTA+0, 0
;ders3.c,29 :: 		DELAY_ms(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	DECFSZ     R11+0, 1
	GOTO       L_main2
	NOP
	NOP
;ders3.c,31 :: 		LED=0;         //porta nýn 0. bitini 0 yaptýk yani picin 17.bacaðýna 0 volt yolladýk
	BCF        PORTA+0, 0
;ders3.c,32 :: 		DELAY_ms(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
	NOP
	NOP
;ders3.c,33 :: 		}
	GOTO       L_main0
;ders3.c,34 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
