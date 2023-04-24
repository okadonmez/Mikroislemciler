void SSD();

void main() {
     PORTA=0x00;
     PORTB=0x00;
     TRISA.TRISA4=1;
     TRISB=0x00;
     OSCCON=0x70;
     OPTION_REG.T0CS=1;
     OPTION_REG.T0SE=1;
     OPTION_REG.PSA=1;
     OPTION_REG.PS0=1;
     OPTION_REG.PS1=1;
     OPTION_REG.PS2=1;
     TMR0=0;
     while(1){
          
          SSD();
     }
}

void SSD(){

     char LED[16]={0x3F,0x06,0x5B,0x4F,
                   0x66,0x6D,0x7D,0x07,
                   0x7F,0x6F,0x77,0X7C ,
                   0x39,0x5E,0x79,0x71};
     PORTB=LED[TMR0];
     if(TMR0==16){
     TMR0=0;
     }
}