#line 1 "C:/Users/O�UZ/Desktop/3. S�n�f Bilgisayar M�hendisli�i Dersleri/Mikroi�lemciler/IO �rnek Devre Tasar�mlar�/Ders3/MicroC Kodlar�/ders3.c"
#line 20 "C:/Users/O�UZ/Desktop/3. S�n�f Bilgisayar M�hendisli�i Dersleri/Mikroi�lemciler/IO �rnek Devre Tasar�mlar�/Ders3/MicroC Kodlar�/ders3.c"
void main(){

 TRISA=0B00000000;

 PORTA=0;

 while(1){

 PORTA.b0=1;
 DELAY_ms(1000);

  PORTA.b0 =0;
 DELAY_ms(1000);
 }
}
