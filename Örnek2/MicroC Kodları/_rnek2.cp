#line 1 "C:/Users/OÐUZ/Desktop/Mikroiþlemciler Örnek Devre Tasarýmlarý/Örnek2/MicroC Kodlarý/_rnek2.c"
#line 5 "C:/Users/OÐUZ/Desktop/Mikroiþlemciler Örnek Devre Tasarýmlarý/Örnek2/MicroC Kodlarý/_rnek2.c"
void main() {

 TRISB=0;
 ANSEL=ANSELH=0;



 PORTB=0b11110000;
 delay_ms(50);

 while(1){

 PORTB=~PORTB;
 delay_ms(50);
 }
}
