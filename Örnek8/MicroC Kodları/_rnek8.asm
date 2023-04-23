
_main:

;_rnek8.c,20 :: 		void main() {
;_rnek8.c,22 :: 		Lcd_Init(); // Initializes LCD module
	CALL       _Lcd_Init+0
;_rnek8.c,24 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;_rnek8.c,25 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;_rnek8.c,26 :: 		Lcd_Out(1,1,"Merhaba Dünya"); // 1. Satirda baslayalim
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1__rnek8+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;_rnek8.c,27 :: 		delay_ms(50);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main0:
	DECFSZ     R13+0, 1
	GOTO       L_main0
	DECFSZ     R12+0, 1
	GOTO       L_main0
	NOP
	NOP
;_rnek8.c,28 :: 		Lcd_Out(2,1,"Bye"); // 2. Satiri da kullanalim
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr2__rnek8+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;_rnek8.c,29 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
