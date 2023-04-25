void interrupt(){

   delay_ms(100);
   PORTC.B0 = ~PORTC.B0;
   PORTC.B1 = ~PORTC.B1;
   INTCON.INTF = 0; //Kesme bayragini sifirlamak yeniden
                    //kesme gelmesini mümkün kilar
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