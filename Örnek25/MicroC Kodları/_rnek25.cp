#line 1 "C:/Users/O�UZ/Desktop/3. S�n�f Bilgisayar M�hendisli�i Dersleri/Mikroi�lemciler/Mikroi�lemciler Ders Notlar�/3.1 Ders Notundaki �rnekler/�rnek25/MicroC Kodlar�/_rnek25.c"
unsigned int adc_rd;
unsigned int division;

void main() {

 INTCON = 0;
 TRISA = 0x04;
 TRISC = 0;
 PORTC = 0;
 PWM1_Init(1000);
 ADCON1 = 0X82;
 Delay_ms(500);
 PWM1_Start();

 while(1){

 adc_rd = ADC_Read(2);
 Delay_ms(50);
 division = adc_rd / 4;
 PWM1_Set_Duty(division);
 Delay_ms(100);
 }
}
