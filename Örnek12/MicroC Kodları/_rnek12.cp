#line 1 "C:/Users/O�UZ/Desktop/3. S�n�f Bilgisayar M�hendisli�i Dersleri/Mikroi�lemciler/Mikroi�lemciler Ders Notu �rnek Devre Tasar�mlar�/�rnek12/MicroC Kodlar�/_rnek12.c"
int SAY=0;

void interrupt(){

 SAY++;
 PORTC=SAY;
 INTCON.INTF=0;
}

void main(){

 ansel=0;
 anselh=0;
 TRISC=0x00;
 TRISB=0xFF;

 INTCON.GIE=1;
 INTCON.INTE=1;
 OPTION_REG.INTEDG=1;
 PORTC=0;

 while(1){}
}
