/*0b10 binary = decimal 2
10 decimal = decimal 10
0x10 hex = decimal 16*/
          
void main() {
         
    TRISB=0;
    ANSEL=ANSELH=0; //~ operatoru icin gerekli
    //Farkli desenlerde 8 ledli flasor-flipflop
    //PORTB=85;
    //PORTB=0xff;
    PORTB=0b11110000;
    delay_ms(50);
         
    while(1){
    
        PORTB=~PORTB; //tersleme operatoru mesela 0->1 veya 1->0
        delay_ms(50);
    }
}