#line 1 "C:/Users/O�UZ/Desktop/3. S�n�f Bilgisayar M�hendisli�i Dersleri/Mikroi�lemciler/Mikroi�lemciler Ders Notu �rnek Devre Tasar�mlar�/�rnek9/MicroC Kodlar�/_rnek9.c"
#line 22 "C:/Users/O�UZ/Desktop/3. S�n�f Bilgisayar M�hendisli�i Dersleri/Mikroi�lemciler/Mikroi�lemciler Ders Notu �rnek Devre Tasar�mlar�/�rnek9/MicroC Kodlar�/_rnek9.c"
unsigned int temp;

void main() {

 ANSEL = 0;
 ANSELH = 0b00010000;
 C1ON_bit = 0;
 C2ON_bit = 0;

 TRISB = 0XFF;
 TRISC = 0;
 TRISD = 0;

 do{

 temp = ADC_Read(12);
 PORTC = temp;
 PORTD = temp >> 8;
 }while(1);
}
