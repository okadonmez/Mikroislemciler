
_main:

;_rnek11.c,6 :: 		void main() {
;_rnek11.c,8 :: 		int birler=0;
	CLRF       main_birler_L0+0
	CLRF       main_birler_L0+1
	CLRF       main_onlar_L0+0
	CLRF       main_onlar_L0+1
	CLRF       main_arttir_L0+0
	CLRF       main_arttir_L0+1
	CLRF       main_azalt_L0+0
	CLRF       main_azalt_L0+1
;_rnek11.c,13 :: 		ANSEL=ANSELH=0;
	CLRF       ANSELH+0
	CLRF       ANSEL+0
;_rnek11.c,15 :: 		TRISA=1;
	MOVLW      1
	MOVWF      TRISA+0
;_rnek11.c,16 :: 		TRISB=1;
	MOVLW      1
	MOVWF      TRISB+0
;_rnek11.c,17 :: 		TRISC=0;
	CLRF       TRISC+0
;_rnek11.c,18 :: 		TRISD=0;
	CLRF       TRISD+0
;_rnek11.c,20 :: 		PORTC=0;
	CLRF       PORTC+0
;_rnek11.c,21 :: 		PORTD=0;
	CLRF       PORTD+0
;_rnek11.c,23 :: 		while(1){
L_main0:
;_rnek11.c,25 :: 		PORTC=rakam[onlar];
	MOVF       main_onlar_L0+0, 0
	MOVWF      R0+0
	MOVF       main_onlar_L0+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      _rakam+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTC+0
;_rnek11.c,26 :: 		PORTD=rakam[birler];
	MOVF       main_birler_L0+0, 0
	MOVWF      R0+0
	MOVF       main_birler_L0+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      _rakam+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTD+0
;_rnek11.c,29 :: 		if(PORTA.b0==1&&onlar==0&&birler==0){
	BTFSS      PORTA+0, 0
	GOTO       L_main4
	MOVLW      0
	XORWF      main_onlar_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main31
	MOVLW      0
	XORWF      main_onlar_L0+0, 0
L__main31:
	BTFSS      STATUS+0, 2
	GOTO       L_main4
	MOVLW      0
	XORWF      main_birler_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main32
	MOVLW      0
	XORWF      main_birler_L0+0, 0
L__main32:
	BTFSS      STATUS+0, 2
	GOTO       L_main4
L__main29:
;_rnek11.c,31 :: 		arttir=1;
	MOVLW      1
	MOVWF      main_arttir_L0+0
	MOVLW      0
	MOVWF      main_arttir_L0+1
;_rnek11.c,32 :: 		}
L_main4:
;_rnek11.c,34 :: 		if(arttir==1){
	MOVLW      0
	XORWF      main_arttir_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main33
	MOVLW      1
	XORWF      main_arttir_L0+0, 0
L__main33:
	BTFSS      STATUS+0, 2
	GOTO       L_main5
;_rnek11.c,36 :: 		birler++;
	INCF       main_birler_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_birler_L0+1, 1
;_rnek11.c,37 :: 		Delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
	NOP
;_rnek11.c,38 :: 		}
L_main5:
;_rnek11.c,40 :: 		if(arttir==1&&birler==10&&onlar<10){
	MOVLW      0
	XORWF      main_arttir_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main34
	MOVLW      1
	XORWF      main_arttir_L0+0, 0
L__main34:
	BTFSS      STATUS+0, 2
	GOTO       L_main9
	MOVLW      0
	XORWF      main_birler_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main35
	MOVLW      10
	XORWF      main_birler_L0+0, 0
L__main35:
	BTFSS      STATUS+0, 2
	GOTO       L_main9
	MOVLW      128
	XORWF      main_onlar_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main36
	MOVLW      10
	SUBWF      main_onlar_L0+0, 0
L__main36:
	BTFSC      STATUS+0, 0
	GOTO       L_main9
L__main28:
;_rnek11.c,42 :: 		onlar++;
	INCF       main_onlar_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_onlar_L0+1, 1
;_rnek11.c,43 :: 		birler = 0;
	CLRF       main_birler_L0+0
	CLRF       main_birler_L0+1
;_rnek11.c,44 :: 		}
L_main9:
;_rnek11.c,46 :: 		if(arttir==1&&onlar==9&&birler==9){
	MOVLW      0
	XORWF      main_arttir_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main37
	MOVLW      1
	XORWF      main_arttir_L0+0, 0
L__main37:
	BTFSS      STATUS+0, 2
	GOTO       L_main12
	MOVLW      0
	XORWF      main_onlar_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main38
	MOVLW      9
	XORWF      main_onlar_L0+0, 0
L__main38:
	BTFSS      STATUS+0, 2
	GOTO       L_main12
	MOVLW      0
	XORWF      main_birler_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main39
	MOVLW      9
	XORWF      main_birler_L0+0, 0
L__main39:
	BTFSS      STATUS+0, 2
	GOTO       L_main12
L__main27:
;_rnek11.c,48 :: 		arttir=0;
	CLRF       main_arttir_L0+0
	CLRF       main_arttir_L0+1
;_rnek11.c,49 :: 		}
L_main12:
;_rnek11.c,53 :: 		if(PORTB.b0==1&&onlar==9&&birler==9){
	BTFSS      PORTB+0, 0
	GOTO       L_main15
	MOVLW      0
	XORWF      main_onlar_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main40
	MOVLW      9
	XORWF      main_onlar_L0+0, 0
L__main40:
	BTFSS      STATUS+0, 2
	GOTO       L_main15
	MOVLW      0
	XORWF      main_birler_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main41
	MOVLW      9
	XORWF      main_birler_L0+0, 0
L__main41:
	BTFSS      STATUS+0, 2
	GOTO       L_main15
L__main26:
;_rnek11.c,55 :: 		azalt=1;
	MOVLW      1
	MOVWF      main_azalt_L0+0
	MOVLW      0
	MOVWF      main_azalt_L0+1
;_rnek11.c,56 :: 		}
L_main15:
;_rnek11.c,58 :: 		if(azalt==1){
	MOVLW      0
	XORWF      main_azalt_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main42
	MOVLW      1
	XORWF      main_azalt_L0+0, 0
L__main42:
	BTFSS      STATUS+0, 2
	GOTO       L_main16
;_rnek11.c,60 :: 		birler--;
	MOVLW      1
	SUBWF      main_birler_L0+0, 1
	BTFSS      STATUS+0, 0
	DECF       main_birler_L0+1, 1
;_rnek11.c,61 :: 		Delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main17:
	DECFSZ     R13+0, 1
	GOTO       L_main17
	DECFSZ     R12+0, 1
	GOTO       L_main17
	NOP
;_rnek11.c,62 :: 		}
L_main16:
;_rnek11.c,64 :: 		if(azalt==1&&birler==-1&&onlar>-1){
	MOVLW      0
	XORWF      main_azalt_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main43
	MOVLW      1
	XORWF      main_azalt_L0+0, 0
L__main43:
	BTFSS      STATUS+0, 2
	GOTO       L_main20
	MOVLW      255
	XORWF      main_birler_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main44
	MOVLW      255
	XORWF      main_birler_L0+0, 0
L__main44:
	BTFSS      STATUS+0, 2
	GOTO       L_main20
	MOVLW      127
	MOVWF      R0+0
	MOVLW      128
	XORWF      main_onlar_L0+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main45
	MOVF       main_onlar_L0+0, 0
	SUBLW      255
L__main45:
	BTFSC      STATUS+0, 0
	GOTO       L_main20
L__main25:
;_rnek11.c,66 :: 		onlar--;
	MOVLW      1
	SUBWF      main_onlar_L0+0, 1
	BTFSS      STATUS+0, 0
	DECF       main_onlar_L0+1, 1
;_rnek11.c,67 :: 		birler = 9;
	MOVLW      9
	MOVWF      main_birler_L0+0
	MOVLW      0
	MOVWF      main_birler_L0+1
;_rnek11.c,68 :: 		}
L_main20:
;_rnek11.c,70 :: 		if(azalt==1&&onlar==0&&birler==0){
	MOVLW      0
	XORWF      main_azalt_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main46
	MOVLW      1
	XORWF      main_azalt_L0+0, 0
L__main46:
	BTFSS      STATUS+0, 2
	GOTO       L_main23
	MOVLW      0
	XORWF      main_onlar_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main47
	MOVLW      0
	XORWF      main_onlar_L0+0, 0
L__main47:
	BTFSS      STATUS+0, 2
	GOTO       L_main23
	MOVLW      0
	XORWF      main_birler_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main48
	MOVLW      0
	XORWF      main_birler_L0+0, 0
L__main48:
	BTFSS      STATUS+0, 2
	GOTO       L_main23
L__main24:
;_rnek11.c,72 :: 		azalt=0;
	CLRF       main_azalt_L0+0
	CLRF       main_azalt_L0+1
;_rnek11.c,73 :: 		}
L_main23:
;_rnek11.c,75 :: 		}
	GOTO       L_main0
;_rnek11.c,76 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
