/*unsigned int temp_res;

void main() {

     ANSEL = 0X04; // AN2 pinini analog olarak yapilandirin
     ANSELH = 0; // Diger AN pinlerini dijital I/O olarak yapilandirin
     C1ON_bit = 0; // Karsilastiricilari devre disi birak
     C2ON_bit = 0;
     
     TRISA = 0XFF; // PORTA giris
     TRISC = 0; // PORTC cikis
     TRISB = 0; // PORTB cikis
     
     do{
     
          temp_res = ADC_Read(12); // AD donusturmenin 10 bitlik sonucunu alin
          PORTB = temp_res; // Alt 8 biti PORTB'ye gonder
          PORTC = temp_res >> 8; // En onemli 2 biti RC1, RC0'a gonder
     }while(1);
}*/

unsigned int temp;

void main() {

     ANSEL = 0;
     ANSELH = 0b00010000;
     C1ON_bit = 0;
     C2ON_bit = 0;

     TRISB = 0XFF;
     TRISC = 0;
     TRISD = 0;

     do{

          temp = ADC_Read(12);
          PORTC = temp;
          PORTD = temp >> 8;
     }while(1);
}