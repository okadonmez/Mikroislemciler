#line 1 "C:/Users/O�UZ/Desktop/3. S�n�f Bilgisayar M�hendisli�i Dersleri/Mikroi�lemciler/Mikroi�lemciler Ders Notlar�/3.1 Ders Notundaki �rnekler/�rnek24/MicroC Kodlar�/_rnek24.c"
unsigned short duty, temp_duty;

void initMain(){

 ANSEL = 0;
 ANSELH = 0;
 TRISA = 255;
 TRISD = 0;
 TRISC = 0;
 PORTA = 0;
 PORTD = 0;
 PORTC = 0;
 PWM1_Init(1000);
}

void main() {

 InitMain();

 duty = 128;
 temp_duty = 0;
 PWM1_Start();

 while(1){

 if(!PORTA.F0){

 duty += 4;
 }

 if(!PORTA.F1){

 duty -= 4;
 }

 if(temp_duty != duty){

 PWM1_Set_Duty(duty);

 temp_duty = duty;
 PORTD = temp_duty;
 }

 Delay_ms(200);
 }
}
