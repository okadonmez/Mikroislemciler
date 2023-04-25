
_initMain:

;_rnek24.c,3 :: 		void initMain(){
;_rnek24.c,5 :: 		ANSEL = 0;
	CLRF       ANSEL+0
;_rnek24.c,6 :: 		ANSELH = 0;
	CLRF       ANSELH+0
;_rnek24.c,7 :: 		TRISA = 255;
	MOVLW      255
	MOVWF      TRISA+0
;_rnek24.c,8 :: 		TRISD = 0;
	CLRF       TRISD+0
;_rnek24.c,9 :: 		TRISC = 0;
	CLRF       TRISC+0
;_rnek24.c,10 :: 		PORTA = 0;
	CLRF       PORTA+0
;_rnek24.c,11 :: 		PORTD = 0;
	CLRF       PORTD+0
;_rnek24.c,12 :: 		PORTC = 0;
	CLRF       PORTC+0
;_rnek24.c,13 :: 		PWM1_Init(1000);
	BSF        T2CON+0, 0
	BSF        T2CON+0, 1
	MOVLW      124
	MOVWF      PR2+0
	CALL       _PWM1_Init+0
;_rnek24.c,14 :: 		}
L_end_initMain:
	RETURN
; end of _initMain

_main:

;_rnek24.c,16 :: 		void main() {
;_rnek24.c,18 :: 		InitMain();
	CALL       _initMain+0
;_rnek24.c,20 :: 		duty = 128;
	MOVLW      128
	MOVWF      _duty+0
;_rnek24.c,21 :: 		temp_duty = 0;
	CLRF       _temp_duty+0
;_rnek24.c,22 :: 		PWM1_Start();
	CALL       _PWM1_Start+0
;_rnek24.c,24 :: 		while(1){
L_main0:
;_rnek24.c,26 :: 		if(!PORTA.F0){
	BTFSC      PORTA+0, 0
	GOTO       L_main2
;_rnek24.c,28 :: 		duty += 4;
	MOVLW      4
	ADDWF      _duty+0, 1
;_rnek24.c,29 :: 		}
L_main2:
;_rnek24.c,31 :: 		if(!PORTA.F1){
	BTFSC      PORTA+0, 1
	GOTO       L_main3
;_rnek24.c,33 :: 		duty -= 4;
	MOVLW      4
	SUBWF      _duty+0, 1
;_rnek24.c,34 :: 		}
L_main3:
;_rnek24.c,36 :: 		if(temp_duty != duty){
	MOVF       _temp_duty+0, 0
	XORWF      _duty+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main4
;_rnek24.c,38 :: 		PWM1_Set_Duty(duty);
	MOVF       _duty+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;_rnek24.c,40 :: 		temp_duty = duty;
	MOVF       _duty+0, 0
	MOVWF      _temp_duty+0
;_rnek24.c,41 :: 		PORTD = temp_duty;
	MOVF       _duty+0, 0
	MOVWF      PORTD+0
;_rnek24.c,42 :: 		}
L_main4:
;_rnek24.c,44 :: 		Delay_ms(200);
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
;_rnek24.c,45 :: 		}
	GOTO       L_main0
;_rnek24.c,46 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
