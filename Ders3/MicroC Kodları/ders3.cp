#line 1 "C:/Users/OÐUZ/Desktop/3. Sýnýf Bilgisayar Mühendisliði Dersleri/Mikroiþlemciler/IO Örnek Devre Tasarýmlarý/Ders3/MicroC Kodlarý/ders3.c"
#line 20 "C:/Users/OÐUZ/Desktop/3. Sýnýf Bilgisayar Mühendisliði Dersleri/Mikroiþlemciler/IO Örnek Devre Tasarýmlarý/Ders3/MicroC Kodlarý/ders3.c"
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
