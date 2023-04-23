
_main:

;_dev10.c,22 :: 		void main() {
;_dev10.c,24 :: 		INTCON = 0; // Tum kesmeler devre disi
	CLRF       INTCON+0
;_dev10.c,25 :: 		ANSEL = 0X04; // Pin RA2, analog giris olarak yapilandirilmistir
	MOVLW      4
	MOVWF      ANSEL+0
;_dev10.c,26 :: 		TRISA = 0X04;
	MOVLW      4
	MOVWF      TRISA+0
;_dev10.c,27 :: 		ANSELH = 0; // Pinlerin geri kalani dijital olarak yapilandirilmistir
	CLRF       ANSELH+0
;_dev10.c,29 :: 		Lcd_Init(); // LCD ekran baslatma
	CALL       _Lcd_Init+0
;_dev10.c,30 :: 		Lcd_Cmd(_LCD_CURSOR_OFF); // LCD komutu (imlec kapali)
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;_dev10.c,31 :: 		Lcd_Cmd(_LCD_CLEAR); // LCD komutu (LCD'yi temizle)
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;_dev10.c,33 :: 		text = "mikroElektronika"; // Ilk mesaji tanimlayin
	MOVLW      ?lstr1__dev10+0
	MOVWF      _text+0
;_dev10.c,34 :: 		Lcd_Out(1,1,text); // Ilk mesaji ilk satira yaz
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVF       _text+0, 0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;_dev10.c,35 :: 		text = "LCD example"; // Ikinci mesaji tanimlayin
	MOVLW      ?lstr2__dev10+0
	MOVWF      _text+0
;_dev10.c,36 :: 		Lcd_Out(2,1,text); // Ilk mesaji tanimlayin ikinci satira yaz
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVF       _text+0, 0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;_dev10.c,37 :: 		ADCON1 = 0X82; // A/D voltaj referansi VCC'dir
	MOVLW      130
	MOVWF      ADCON1+0
;_dev10.c,38 :: 		TRISA = 0XFF; // Tum baglanti noktasi A pinleri giris olarak yapilandirilmistir
	MOVLW      255
	MOVWF      TRISA+0
;_dev10.c,39 :: 		Delay_ms(2000);
	MOVLW      21
	MOVWF      R11+0
	MOVLW      75
	MOVWF      R12+0
	MOVLW      190
	MOVWF      R13+0
L_main0:
	DECFSZ     R13+0, 1
	GOTO       L_main0
	DECFSZ     R12+0, 1
	GOTO       L_main0
	DECFSZ     R11+0, 1
	GOTO       L_main0
	NOP
;_dev10.c,40 :: 		text = "voltage:"; // Ucuncu mesaji tanimlayin
	MOVLW      ?lstr3__dev10+0
	MOVWF      _text+0
;_dev10.c,42 :: 		while(1){
L_main1:
;_dev10.c,44 :: 		adc_rd = ADC_Read(2); // A/D donusumu. Pin RA2 bir giristir
	MOVLW      2
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+0, 0
	MOVWF      _adc_rd+0
	MOVF       R0+1, 0
	MOVWF      _adc_rd+1
;_dev10.c,45 :: 		Lcd_Out(2,1,text); // Sonucu ikinci satira yazin
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVF       _text+0, 0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;_dev10.c,46 :: 		tlong = (long)adc_rd * 5000; // Sonucu milivolt cinsinden donusturun
	MOVF       _adc_rd+0, 0
	MOVWF      R0+0
	MOVF       _adc_rd+1, 0
	MOVWF      R0+1
	CLRF       R0+2
	CLRF       R0+3
	MOVLW      136
	MOVWF      R4+0
	MOVLW      19
	MOVWF      R4+1
	CLRF       R4+2
	CLRF       R4+3
	CALL       _Mul_32x32_U+0
	MOVF       R0+0, 0
	MOVWF      _tlong+0
	MOVF       R0+1, 0
	MOVWF      _tlong+1
	MOVF       R0+2, 0
	MOVWF      _tlong+2
	MOVF       R0+3, 0
	MOVWF      _tlong+3
;_dev10.c,47 :: 		tlong = tlong / 1023; // 0..1023 -> 0-5000mV
	MOVLW      255
	MOVWF      R4+0
	MOVLW      3
	MOVWF      R4+1
	CLRF       R4+2
	CLRF       R4+3
	CALL       _Div_32x32_S+0
	MOVF       R0+0, 0
	MOVWF      _tlong+0
	MOVF       R0+1, 0
	MOVWF      _tlong+1
	MOVF       R0+2, 0
	MOVWF      _tlong+2
	MOVF       R0+3, 0
	MOVWF      _tlong+3
;_dev10.c,48 :: 		ch = tlong / 1000; // Sonuctan volt (binlerce milivolt) cikarin
	MOVLW      232
	MOVWF      R4+0
	MOVLW      3
	MOVWF      R4+1
	CLRF       R4+2
	CLRF       R4+3
	CALL       _Div_32x32_S+0
	MOVF       R0+0, 0
	MOVWF      _ch+0
;_dev10.c,50 :: 		Lcd_Chr(2,9,48+ch); // Sonucu ASCII formatinda yaz
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      9
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       R0+0, 0
	ADDLW      48
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;_dev10.c,51 :: 		Lcd_Chr_CP('.');
	MOVLW      46
	MOVWF      FARG_Lcd_Chr_CP_out_char+0
	CALL       _Lcd_Chr_CP+0
;_dev10.c,52 :: 		ch = (tlong / 100) % 10; // Yuzlerce milivolt ayiklayin
	MOVLW      100
	MOVWF      R4+0
	CLRF       R4+1
	CLRF       R4+2
	CLRF       R4+3
	MOVF       _tlong+0, 0
	MOVWF      R0+0
	MOVF       _tlong+1, 0
	MOVWF      R0+1
	MOVF       _tlong+2, 0
	MOVWF      R0+2
	MOVF       _tlong+3, 0
	MOVWF      R0+3
	CALL       _Div_32x32_S+0
	MOVLW      10
	MOVWF      R4+0
	CLRF       R4+1
	CLRF       R4+2
	CLRF       R4+3
	CALL       _Div_32x32_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVF       R8+2, 0
	MOVWF      R0+2
	MOVF       R8+3, 0
	MOVWF      R0+3
	MOVF       R0+0, 0
	MOVWF      _ch+0
;_dev10.c,53 :: 		Lcd_Chr_CP(48+ch); // Sonucu ASCII formatinda yaz
	MOVF       R0+0, 0
	ADDLW      48
	MOVWF      FARG_Lcd_Chr_CP_out_char+0
	CALL       _Lcd_Chr_CP+0
;_dev10.c,54 :: 		ch = (tlong / 10) % 10; // Onlarca milivolt cikar
	MOVLW      10
	MOVWF      R4+0
	CLRF       R4+1
	CLRF       R4+2
	CLRF       R4+3
	MOVF       _tlong+0, 0
	MOVWF      R0+0
	MOVF       _tlong+1, 0
	MOVWF      R0+1
	MOVF       _tlong+2, 0
	MOVWF      R0+2
	MOVF       _tlong+3, 0
	MOVWF      R0+3
	CALL       _Div_32x32_S+0
	MOVLW      10
	MOVWF      R4+0
	CLRF       R4+1
	CLRF       R4+2
	CLRF       R4+3
	CALL       _Div_32x32_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVF       R8+2, 0
	MOVWF      R0+2
	MOVF       R8+3, 0
	MOVWF      R0+3
	MOVF       R0+0, 0
	MOVWF      _ch+0
;_dev10.c,55 :: 		Lcd_Chr_CP(48+ch); // Sonucu ASCII formatinda yaz
	MOVF       R0+0, 0
	ADDLW      48
	MOVWF      FARG_Lcd_Chr_CP_out_char+0
	CALL       _Lcd_Chr_CP+0
;_dev10.c,56 :: 		ch = tlong % 10; // Milivolt icin rakamlari ayiklayin
	MOVLW      10
	MOVWF      R4+0
	CLRF       R4+1
	CLRF       R4+2
	CLRF       R4+3
	MOVF       _tlong+0, 0
	MOVWF      R0+0
	MOVF       _tlong+1, 0
	MOVWF      R0+1
	MOVF       _tlong+2, 0
	MOVWF      R0+2
	MOVF       _tlong+3, 0
	MOVWF      R0+3
	CALL       _Div_32x32_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVF       R8+2, 0
	MOVWF      R0+2
	MOVF       R8+3, 0
	MOVWF      R0+3
	MOVF       R0+0, 0
	MOVWF      _ch+0
;_dev10.c,57 :: 		Lcd_Chr_CP(48+ch); // Sonucu ASCII formatinda yaz
	MOVF       R0+0, 0
	ADDLW      48
	MOVWF      FARG_Lcd_Chr_CP_out_char+0
	CALL       _Lcd_Chr_CP+0
;_dev10.c,58 :: 		Lcd_Chr_CP('V');
	MOVLW      86
	MOVWF      FARG_Lcd_Chr_CP_out_char+0
	CALL       _Lcd_Chr_CP+0
;_dev10.c,59 :: 		Delay_ms(1);
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	NOP
	NOP
;_dev10.c,60 :: 		}
	GOTO       L_main1
;_dev10.c,61 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
