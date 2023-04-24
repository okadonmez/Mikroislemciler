
_main:

;_rnek23.c,4 :: 		void main() {
;_rnek23.c,6 :: 		ANSEL = ANSELH = 0;
	CLRF       ANSELH+0
	CLRF       ANSEL+0
;_rnek23.c,8 :: 		TRISB = 0xFF;
	MOVLW      255
	MOVWF      TRISB+0
;_rnek23.c,9 :: 		TRISC = 0x00;
	CLRF       TRISC+0
;_rnek23.c,11 :: 		PWM1_Init(500);
	BSF        T2CON+0, 0
	BSF        T2CON+0, 1
	MOVLW      249
	MOVWF      PR2+0
	CALL       _PWM1_Init+0
;_rnek23.c,12 :: 		PWM2_Init(1000);
	BSF        T2CON+0, 0
	BSF        T2CON+0, 1
	MOVLW      124
	MOVWF      PR2+0
	CALL       _PWM2_Init+0
;_rnek23.c,14 :: 		PWM1_Start();
	CALL       _PWM1_Start+0
;_rnek23.c,15 :: 		PWM2_Start();
	CALL       _PWM2_Start+0
;_rnek23.c,17 :: 		PWM1_Set_Duty(duty_1);
	MOVF       _duty_1+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;_rnek23.c,18 :: 		PWM2_Set_Duty(duty_2);
	MOVF       _duty_2+0, 0
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;_rnek23.c,20 :: 		while(1){
L_main0:
;_rnek23.c,22 :: 		if(!PORTB.F0){
	BTFSC      PORTB+0, 0
	GOTO       L_main2
;_rnek23.c,24 :: 		Delay_ms(200);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      8
	MOVWF      R12+0
	MOVLW      119
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
;_rnek23.c,26 :: 		duty_1 = duty_1 + 8;
	MOVLW      8
	ADDWF      _duty_1+0, 0
	MOVWF      R0+0
	MOVF       R0+0, 0
	MOVWF      _duty_1+0
;_rnek23.c,28 :: 		PWM1_Set_Duty(duty_1);
	MOVF       R0+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;_rnek23.c,29 :: 		}
L_main2:
;_rnek23.c,31 :: 		if(!PORTB.F1){
	BTFSC      PORTB+0, 1
	GOTO       L_main4
;_rnek23.c,33 :: 		Delay_ms(200);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      8
	MOVWF      R12+0
	MOVLW      119
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	DECFSZ     R11+0, 1
	GOTO       L_main5
;_rnek23.c,35 :: 		duty_1 = duty_1 - 8;
	MOVLW      8
	SUBWF      _duty_1+0, 0
	MOVWF      R0+0
	MOVF       R0+0, 0
	MOVWF      _duty_1+0
;_rnek23.c,37 :: 		PWM1_Set_Duty(duty_1);
	MOVF       R0+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;_rnek23.c,38 :: 		}
L_main4:
;_rnek23.c,40 :: 		if(!PORTB.F2){
	BTFSC      PORTB+0, 2
	GOTO       L_main6
;_rnek23.c,42 :: 		Delay_ms(200);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      8
	MOVWF      R12+0
	MOVLW      119
	MOVWF      R13+0
L_main7:
	DECFSZ     R13+0, 1
	GOTO       L_main7
	DECFSZ     R12+0, 1
	GOTO       L_main7
	DECFSZ     R11+0, 1
	GOTO       L_main7
;_rnek23.c,44 :: 		duty_2 = duty_2 + 8;
	MOVLW      8
	ADDWF      _duty_2+0, 0
	MOVWF      R0+0
	MOVF       R0+0, 0
	MOVWF      _duty_2+0
;_rnek23.c,46 :: 		PWM1_Set_Duty(duty_2);
	MOVF       R0+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;_rnek23.c,47 :: 		}
L_main6:
;_rnek23.c,49 :: 		if(!PORTB.F3){
	BTFSC      PORTB+0, 3
	GOTO       L_main8
;_rnek23.c,51 :: 		Delay_ms(200);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      8
	MOVWF      R12+0
	MOVLW      119
	MOVWF      R13+0
L_main9:
	DECFSZ     R13+0, 1
	GOTO       L_main9
	DECFSZ     R12+0, 1
	GOTO       L_main9
	DECFSZ     R11+0, 1
	GOTO       L_main9
;_rnek23.c,53 :: 		duty_2 = duty_2 - 8;
	MOVLW      8
	SUBWF      _duty_2+0, 0
	MOVWF      R0+0
	MOVF       R0+0, 0
	MOVWF      _duty_2+0
;_rnek23.c,55 :: 		PWM1_Set_Duty(duty_2);
	MOVF       R0+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;_rnek23.c,56 :: 		}
L_main8:
;_rnek23.c,58 :: 		Delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main10:
	DECFSZ     R13+0, 1
	GOTO       L_main10
	DECFSZ     R12+0, 1
	GOTO       L_main10
	NOP
;_rnek23.c,59 :: 		}
	GOTO       L_main0
;_rnek23.c,60 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
