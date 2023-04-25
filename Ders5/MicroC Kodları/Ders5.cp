#line 1 "C:/Users/OÐUZ/Desktop/3. Sýnýf Bilgisayar Mühendisliði Dersleri/Mikroiþlemciler/IO Bilim Örnek Devre Tasarýmlarý/Ders5/MicroC Kodlarý/Ders5.c"
void main() {

 TRISA=0B00000000;
 PORTA=0;
 CMCON=7;

 while(1){

 PORTA.RA0=1;
 Delay_ms(25);
 PORTA.RA1=1;
 Delay_ms(25);
 PORTA.RA0=0;
 PORTA.RA1=0;
 PORTA.RA2=1;
 Delay_ms(25);
 PORTA.RA2=0;
 }
}
