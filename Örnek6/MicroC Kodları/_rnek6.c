unsigned int seg[]={0x3F, 0x06, 0x5B,//0 1 2
                    0x4F, 0x66, 0x6D,//3 4 5
                    0x7C, 0x07, 0x7F,//6 7 8
                    0x6F};           //9

void main() {

     TRISC=0;
     
     while(1){

          /*PORTC=0b01001111;    0x4F 3,4,5'i sirasiyla yaziyor
          delay_ms(30);
          
          PORTC=102;
          delay_ms(30);
          
          PORTC=109;
          delay_ms(30);*/
          
          //0-9 icin dongü
          int i=0;
          
          while(i<10){
               
               PORTC=seg[i];
               delay_ms(30);
               i++;
          }
     }
}