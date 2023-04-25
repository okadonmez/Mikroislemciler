#line 1 "C:/Users/OÐUZ/Desktop/3. Sýnýf Bilgisayar Mühendisliði Dersleri/Mikroiþlemciler/Mikroiþlemciler Ders Notlarý/3.1 Ders Notundaki Örnekler/Örnek25/MicroC Kodlarý/_rnek25.c"
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
