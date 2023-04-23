int up=0;
int down=1;

void main() {

     TRISB=0;
     ANSEL=ANSELH=0;
     PORTB=0b00110000;
     delay_ms(10);
           
     while(1){
           
          if(PORTB>=0b11000000&&up==1){
               
               down=1;
          }
          
          if(PORTB>=0b11000000||down==1){
               
               PORTB=PORTB>>1;
               delay_ms(10);
               up=0;
          }
           
               
          if(PORTB<=0b00000011&&down==1){
               
               up=1;
          }
          
          if(PORTB<=0b00000000||up==1){
               
               PORTB=PORTB<<1;
               delay_ms(10);
               down=0;
          }
     }
}