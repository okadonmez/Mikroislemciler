void SSD();

void main(){

     ANSEL=0;
     ANSELH=0;
     TRISA.RA4=1;
     TRISD=0;
     PORTD=0;
     PORTA=0;
     
     OPTION_REG=0b00101000;
     
     TMR0=0;
     
     while(1){

          SSD();
     }
}

void SSD(){

     char LED[16]={0x3F,0X06,0X5B,0X4F,
                   0X66,0X6D,0X7D,0X07,
                   0X7F,0X6F,0X77,0X7C,
                   0X39,0X5E,0X79,0X71};
                   
     PORTD=LED[TMR0];
     
     if(TMR0==16){
     
          TMR0=0;
     }
}