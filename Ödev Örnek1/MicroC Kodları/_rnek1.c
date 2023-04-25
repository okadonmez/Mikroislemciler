void main() {
   
   ansel = 0;
   anselh = 0;
   TRISC = 0x00;
   PORTC = 0x00;
     
   while(1){

      PORTC.B0 = 1;
      PORTC.B1 = 0;
   }
}