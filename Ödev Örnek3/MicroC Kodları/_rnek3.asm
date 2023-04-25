
_main:

;_rnek3.c,3 :: 		void main() {
;_rnek3.c,5 :: 		ANSEL = 1;
	MOVLW      1
	MOVWF      ANSEL+0
;_rnek3.c,6 :: 		ANSELH = 0;
	CLRF       ANSELH+0
;_rnek3.c,7 :: 		PORTC = 0;
	CLRF       PORTC+0
;_rnek3.c,8 :: 		TRISC = 0;
	CLRF       TRISC+0
;_rnek3.c,10 :: 		ADC_Init();
	CALL       _ADC_Init+0
;_rnek3.c,11 :: 		PWM1_Init(1000);
	BSF        T2CON+0, 0
	BSF        T2CON+0, 1
	MOVLW      124
	MOVWF      PR2+0
	CALL       _PWM1_Init+0
;_rnek3.c,12 :: 		PWM1_Start();
	CALL       _PWM1_Start+0
;_rnek3.c,13 :: 		delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main0:
	DECFSZ     R13+0, 1
	GOTO       L_main0
	DECFSZ     R12+0, 1
	GOTO       L_main0
	DECFSZ     R11+0, 1
	GOTO       L_main0
	NOP
;_rnek3.c,15 :: 		while(1){
L_main1:
;_rnek3.c,17 :: 		PORTC.F0 = 1;
	BSF        PORTC+0, 0
;_rnek3.c,18 :: 		PORTC.F1 = 0;
	BCF        PORTC+0, 1
;_rnek3.c,19 :: 		motor_speed = ADC_Read(0);
	CLRF       FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+0, 0
	MOVWF      _motor_speed+0
	MOVF       R0+1, 0
	MOVWF      _motor_speed+1
;_rnek3.c,20 :: 		PWM1_Set_Duty(motor_speed >> 2);
	MOVF       R0+0, 0
	MOVWF      R2+0
	MOVF       R0+1, 0
	MOVWF      R2+1
	RRF        R2+1, 1
	RRF        R2+0, 1
	BCF        R2+1, 7
	RRF        R2+1, 1
	RRF        R2+0, 1
	BCF        R2+1, 7
	MOVF       R2+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;_rnek3.c,21 :: 		delay_ms(50);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	NOP
	NOP
;_rnek3.c,22 :: 		}
	GOTO       L_main1
;_rnek3.c,23 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
