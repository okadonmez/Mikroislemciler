
_main:

;_rnek22.c,19 :: 		void main() {
;_rnek22.c,21 :: 		TRISC = 0x00;
	CLRF       TRISC+0
;_rnek22.c,22 :: 		PWM2_Init(1000);
	BSF        T2CON+0, 0
	BSF        T2CON+0, 1
	MOVLW      124
	MOVWF      PR2+0
	CALL       _PWM2_Init+0
;_rnek22.c,23 :: 		PWM2_Start();
	CALL       _PWM2_Start+0
;_rnek22.c,25 :: 		Lcd_Init();
	CALL       _Lcd_Init+0
;_rnek22.c,26 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;_rnek22.c,27 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;_rnek22.c,29 :: 		while(1){
L_main0:
;_rnek22.c,31 :: 		Lcd_Out(1,1,"25% Duty Cycle");//%50 -- %75 -- %100
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1__rnek22+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;_rnek22.c,32 :: 		PWM2_Set_Duty(63);//127 - 192 -- 255
	MOVLW      63
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;_rnek22.c,33 :: 		Delay_ms(100);
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
;_rnek22.c,34 :: 		}
	GOTO       L_main0
;_rnek22.c,35 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
