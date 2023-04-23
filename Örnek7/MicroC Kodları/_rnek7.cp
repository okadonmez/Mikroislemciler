#line 1 "C:/Users/OÐUZ/Desktop/3. Sýnýf Bilgisayar Mühendisliði Dersleri/Mikroiþlemciler/Mikroiþlemciler Ders Notu Örnek Devre Tasarýmlarý/Örnek7/MicroC Kodlarý/_rnek7.c"
unsigned int rakam[]={0X3F, 0X06, 0X5B,
 0X4F, 0X66, 0X6D,
 0X7C, 0X07, 0X7F,
 0X6F};

void main() {

 int birler;
 int onlar;

 ANSEL=ANSELH=0;

 TRISA=1;
 TRISB=1;
 TRISC=0;
 TRISD=0;

 PORTC=0;
 PORTD=0;

 birler=0;
 onlar=0;

 while(1){

 PORTC=rakam[onlar];
 PORTD=rakam[birler];


 if(PORTA.b0==1){

 birler++;
 delay_ms(50);
 }

 if(birler==10){

 birler=0;
 onlar++;
 }


 if(PORTB.b0==1){

 birler--;
 delay_ms(50);
 }

 if(birler==-1){

 birler=9;
 onlar=9;
 }
 }
}
