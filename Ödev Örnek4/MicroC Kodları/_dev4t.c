/*Dalgalý sürüþ

void main() {

   ANSEL = 0;
   ANSELH = 0;
   TRISD = 0;
   PORTD = 0x0F;
   
   while(1){
   
      PORTD = 0x08;
      delay_ms(500);
      PORTD = 0x04;
      delay_ms(500);
      PORTD = 0x02;
      delay_ms(500);
      PORTD = 0x01;
      delay_ms(500);
   }
}*/

/*Tam adým sürüþ
void main() {

   ANSEL = 0;
   ANSELH = 0;
   TRISD = 0;
   PORTD = 0x0F;

   while(1){

      PORTD = 0x0C;
      delay_ms(500);
      PORTD = 0x06;
      delay_ms(500);
      PORTD = 0x03;
      delay_ms(500);
      PORTD = 0x09;
      delay_ms(500);
   }
}*/

//Yarým adým sürüþ
void main() {

   ANSEL = 0;
   ANSELH = 0;
   TRISD = 0;
   PORTD = 0x0F;

   while(1){

      PORTD = 0x08;
      delay_ms(100);
      PORTD = 0x0C;
      delay_ms(100);
      PORTD = 0x04;
      delay_ms(100);
      PORTD = 0x06;
      delay_ms(100);
      PORTD = 0x02;
      delay_ms(100);
      PORTD = 0x03;
      delay_ms(100);
      PORTD = 0x01;
      delay_ms(100);
      PORTD = 0x09;
      delay_ms(100);
   }
}