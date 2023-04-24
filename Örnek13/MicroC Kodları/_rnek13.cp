#line 1 "C:/Users/OÐUZ/Desktop/3. Sýnýf Bilgisayar Mühendisliði Dersleri/Mikroiþlemciler/Mikroiþlemciler Ders Notu Örnek Devre Tasarýmlarý/Örnek13/MicroC Kodlarý/_rnek13.c"
int SAY=0;

void interrupt(){

 SAY=SAY+1;
 PORTC=SAY;
 TMR0=0;
 INTCON.t0if=0;
}

void main(){

 TRISC=0;
 OPTION_REG.T0CS=0;
 OPTION_REG.PSA=0;
 OPTION_REG.PS0=0;
 OPTION_REG.PS1=1;
 OPTION_REG.PS2=1;

 INTCON.GIE=1;
 INTCON.T0IE=1;
 TMR0=0;

 while(1){}
}
