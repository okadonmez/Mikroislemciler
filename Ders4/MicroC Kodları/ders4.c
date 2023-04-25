/*void main() {

     TRISB=0;
     PORTB=0;
     CMCON=7;
Bazi piclerde komparator bulunur, bazi devrelerde ise ADC ve analog dijital
ceviriciler bulunur. Hangisi bulunursa bulunsun default olarak acik olarak 
geliyorlar. Bunlari kullanmayacagimiz icin kapatmamiz gerekiyor. Cunku dijital 
cikis kullanacagiz CMCON=7; yaptiktan sonra tüm pinleri giris veya cikis olarak 
kullanabiliriz

Protheusta dahili osilator kullandik. MikroC Pro -> Project -> Edit Project ->
INTOSC oscillator; CLKOUT'u sectik ve RAS/MSCLR/VPP Enabled'i sectik

     while(1){

          PORTB=0B00000001;
          DELAY_MS(100);
          PORTB=0B00000010;
          DELAY_MS(100);
          PORTB=0B00000100;
          DELAY_MS(100);
          PORTB=0B00001000;
          DELAY_MS(100);
          PORTB=0B00010000;
          DELAY_MS(100);
          PORTB=0B00100000;
          DELAY_MS(100);
          PORTB=0B01000000;
          DELAY_MS(100);
          PORTB=0B10000000;
          DELAY_MS(100);
          PORTB=0B01000000;
          DELAY_MS(100);
          PORTB=0B00100000;
          DELAY_MS(100);
          PORTB=0B00010000;
          DELAY_MS(100);
          PORTB=0B00001000;
          DELAY_MS(100);
          PORTB=0B00000100;
          DELAY_MS(100);
          PORTB=0B00000010;
          DELAY_MS(100);
     }
}*/

char i, led;

void main(){
/*PORT ayarlamalari, yapilacak giris cikis ayarlari ve varsa analog ve 
karsilastirici moduller burada ayarlanýr.*/

     CMCON=0x07; // Comparator(karsilastirici) kapatildi. Picler dijitale ayarlandi. 0x07 ile 7 aynidir, 0x07 16'lik sistemde 7 demektir
     VRCON=0; // Referans voltaj girisini kapatir. Ustteki gibi mantigi
     
     TRISA=0b00000000;
     TRISB=0x00;
     PORTA=0;
     PORTB=0;
     led=1;
     
     while(1){
     
          for(i=1; i<8; i++){
          
               PORTB=led;
               led=led<<1;
               Delay_ms(30);
          }
          
          for(i=1; i<8; i++){
          
               PORTB=led;
               led=led>>1;
               Delay_ms(30);
          }
     }
}