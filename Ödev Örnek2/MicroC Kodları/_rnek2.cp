#line 1 "C:/Users/OÐUZ/Desktop/3. Sýnýf Bilgisayar Mühendisliði Dersleri/Mikroiþlemciler/Örnekler/Ödev Örnek2/MicroC Kodlarý/_rnek2.c"
void interrupt(){

 delay_ms(100);
 PORTC.B0 = ~PORTC.B0;
 PORTC.B1 = ~PORTC.B1;
 INTCON.INTF = 0;

}

void main() {

 ansel = 0;
 anselh = 0;
 INTCON.GIE = 1;
 INTCON.INTE = 1;
 TRISC = 0x00;
 PORTC = 0x00;
 TRISB = 0x01;
 PORTB = 0x00;
 PORTC.B0 = 1;
 PORTC.B1 = 0;

 while(1){
 }
}
