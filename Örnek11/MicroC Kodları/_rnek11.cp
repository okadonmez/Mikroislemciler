#line 1 "C:/Users/OÐUZ/Desktop/3. Sýnýf Bilgisayar Mühendisliði Dersleri/Mikroiþlemciler/Mikroiþlemciler Ders Notu Örnek Devre Tasarýmlarý/Örnek11/MicroC Kodlarý/_rnek11.c"
unsigned int rakam[]={0X3F, 0X06, 0X5B,
 0X4F, 0X66, 0X6D,
 0X7C, 0X07, 0X7F,
 0X6F};

void main() {

 int birler=0;
 int onlar=0;
 int arttir=0;
 int azalt=0;

 ANSEL=ANSELH=0;

 TRISA=1;
 TRISB=1;
 TRISC=0;
 TRISD=0;

 PORTC=0;
 PORTD=0;

 while(1){

 PORTC=rakam[onlar];
 PORTD=rakam[birler];


 if(PORTA.b0==1&&onlar==0&&birler==0){

 arttir=1;
 }

 if(arttir==1){

 birler++;
 Delay_ms(10);
 }

 if(arttir==1&&birler==10&&onlar<10){

 onlar++;
 birler = 0;
 }

 if(arttir==1&&onlar==9&&birler==9){

 arttir=0;
 }



 if(PORTB.b0==1&&onlar==9&&birler==9){

 azalt=1;
 }

 if(azalt==1){

 birler--;
 Delay_ms(10);
 }

 if(azalt==1&&birler==-1&&onlar>-1){

 onlar--;
 birler = 9;
 }

 if(azalt==1&&onlar==0&&birler==0){

 azalt=0;
 }

 }
}
