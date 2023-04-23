#line 1 "C:/Users/OÐUZ/Desktop/3. Sýnýf Bilgisayar Mühendisliði Dersleri/Mikroiþlemciler/Mikroiþlemciler Ders Notu Örnek Devre Tasarýmlarý/Örnek9/MicroC Kodlarý/_rnek9.c"
#line 22 "C:/Users/OÐUZ/Desktop/3. Sýnýf Bilgisayar Mühendisliði Dersleri/Mikroiþlemciler/Mikroiþlemciler Ders Notu Örnek Devre Tasarýmlarý/Örnek9/MicroC Kodlarý/_rnek9.c"
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
