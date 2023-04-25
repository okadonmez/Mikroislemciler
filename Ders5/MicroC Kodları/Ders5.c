void main() {

     TRISA=0B00000000;
     PORTA=0;
     CMCON=7; //0x07
     
     while(1){
     
          PORTA.RA0=1;
          Delay_ms(25);
          PORTA.RA1=1;
          Delay_ms(25);
          PORTA.RA0=0;
          PORTA.RA1=0;
          PORTA.RA2=1;
          Delay_ms(25);
          PORTA.RA2=0;
     }
}