#line 1 "C:/Users/O�UZ/Desktop/3. S�n�f Bilgisayar M�hendisli�i Dersleri/Mikroi�lemciler/�rnekler/�dev �rnek1/MicroC Kodlar�/_rnek1.c"
void main() {

 ansel = 0;
 anselh = 0;
 TRISC = 0x00;
 PORTC = 0x00;

 while(1){

 PORTC.B0 = 1;
 PORTC.B1 = 0;
 }
}
