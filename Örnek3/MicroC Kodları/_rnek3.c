void main() {

    TRISA=1;
    TRISB=0;
    ANSEL=ANSELH=0;
    PORTB.F0=0;
       
    while(1){
        
        if(PORTA.F7==1){
            
            PORTB.F0=1;
        }
        
        if(PORTA.F7==0){
            
            PORTB.F0=0;
        }
    }
}