#line 1 "C:/Users/O�UZ/Desktop/3. S�n�f Bilgisayar M�hendisli�i Dersleri/Mikroi�lemciler/�rnekler/�dev �rnek4/MicroC Kodlar�/_dev4t.c"
#line 45 "C:/Users/O�UZ/Desktop/3. S�n�f Bilgisayar M�hendisli�i Dersleri/Mikroi�lemciler/�rnekler/�dev �rnek4/MicroC Kodlar�/_dev4t.c"
void main() {

 ANSEL = 0;
 ANSELH = 0;
 TRISD = 0;
 PORTD = 0x0F;

 while(1){

 PORTD = 0x08;
 delay_ms(100);
 PORTD = 0x0C;
 delay_ms(100);
 PORTD = 0x04;
 delay_ms(100);
 PORTD = 0x06;
 delay_ms(100);
 PORTD = 0x02;
 delay_ms(100);
 PORTD = 0x03;
 delay_ms(100);
 PORTD = 0x01;
 delay_ms(100);
 PORTD = 0x09;
 delay_ms(100);
 }
}
