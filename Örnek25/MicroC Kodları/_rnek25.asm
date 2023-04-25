
_main:

;_rnek25.c,4 :: 		void main() {
;_rnek25.c,6 :: 		INTCON = 0;
	CLRF       INTCON+0
;_rnek25.c,7 :: 		TRISA = 0x04;
	MOVLW      4
	MOVWF      TRISA+0
;_rnek25.c,8 :: 		TRISC = 0;
	CLRF       TRISC+0
;_rnek25.c,9 :: 		PORTC = 0;
	CLRF       PORTC+0
;_rnek25.c,10 :: 		PWM1_Init(1000);
	BSF        T2CON+0, 0
	BSF        T2CON+0, 1
	MOVLW      124
	MOVWF      PR2+0
	CALL       _PWM1_Init+0
;_rnek25.c,11 :: 		ADCON1 = 0X82;
	MOVLW      130
	MOVWF      ADCON1+0
;_rnek25.c,12 :: 		Delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main0:
	DECFSZ     R13+0, 1
	GOTO       L_main0
	DECFSZ     R12+0, 1
	GOTO       L_main0
	DECFSZ     R11+0, 1
	GOTO       L_main0
	NOP
	NOP
;_rnek25.c,13 :: 		PWM1_Start();
	CALL       _PWM1_Start+0
;_rnek25.c,15 :: 		while(1){
L_main1:
;_rnek25.c,17 :: 		adc_rd = ADC_Read(2);
	MOVLW      2
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+0, 0
	MOVWF      _adc_rd+0
	MOVF       R0+1, 0
	MOVWF      _adc_rd+1
;_rnek25.c,18 :: 		Delay_ms(50);
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
;_rnek25.c,19 :: 		division = adc_rd / 4;
	MOVF       _adc_rd+0, 0
	MOVWF      R0+0
	MOVF       _adc_rd+1, 0
	MOVWF      R0+1
	RRF        R0+1, 1
	RRF        R0+0, 1
	BCF        R0+1, 7
	RRF        R0+1, 1
	RRF        R0+0, 1
	BCF        R0+1, 7
	MOVF       R0+0, 0
	MOVWF      _division+0
	MOVF       R0+1, 0
	MOVWF      _division+1
;_rnek25.c,20 :: 		PWM1_Set_Duty(division);
	MOVF       R0+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;_rnek25.c,21 :: 		Delay_ms(100);
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
;_rnek25.c,22 :: 		}
	GOTO       L_main1
;_rnek25.c,23 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
