#line 1 "C:/Users/O�UZ/Desktop/3. S�n�f Bilgisayar M�hendisli�i Dersleri/Mikroi�lemciler/IO Bilim �rnek Devre Tasar�mlar�/Ders4/MicroC Kodlar�/ders4.c"
#line 48 "C:/Users/O�UZ/Desktop/3. S�n�f Bilgisayar M�hendisli�i Dersleri/Mikroi�lemciler/IO Bilim �rnek Devre Tasar�mlar�/Ders4/MicroC Kodlar�/ders4.c"
char i, led;

void main(){

 CMCON=0x07;
 VRCON=0;

 TRISA=0b00000000;
 TRISB=0x00;
 PORTA=0;
 PORTB=0;
 led=1;

 while(1){

 for(i=1; i<8; i++){

 PORTB=led;
 led=led<<1;
 Delay_ms(30);
 }

 for(i=1; i<8; i++){

 PORTB=led;
 led=led>>1;
 Delay_ms(30);
 }
 }
}
