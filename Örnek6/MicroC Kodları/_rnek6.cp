#line 1 "C:/Users/OÐUZ/Desktop/Mikroiþlemciler Örnek Devre Tasarýmlarý/Örnek6/MicroC Kodlarý/_rnek6.c"
unsigned int seg[]={0x3F, 0x06, 0x5B,
 0x4F, 0x66, 0x6D,
 0x7C, 0x07, 0x7F,
 0x6F};

void main() {

 TRISC=0;

 while(1){
#line 22 "C:/Users/OÐUZ/Desktop/Mikroiþlemciler Örnek Devre Tasarýmlarý/Örnek6/MicroC Kodlarý/_rnek6.c"
 int i=0;

 while(i<10){

 PORTC=seg[i];
 delay_ms(30);
 i++;
 }
 }
}
