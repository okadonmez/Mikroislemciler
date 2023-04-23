// LCD modul baglantilari
sbit LCD_RS at RB4_bit;
sbit LCD_EN at RB5_bit;
sbit LCD_D4 at RB0_bit;
sbit LCD_D5 at RB1_bit;
sbit LCD_D6 at RB2_bit;
sbit LCD_D7 at RB3_bit;

sbit LCD_RS_Direction at TRISB4_bit;
sbit LCD_EN_Direction at TRISB5_bit;
sbit LCD_D4_Direction at TRISB0_bit;
sbit LCD_D5_Direction at TRISB1_bit;
sbit LCD_D6_Direction at TRISB2_bit;
sbit LCD_D7_Direction at TRISB3_bit;
// LCD modul baglantilarini sonlandirin

unsigned char ch;
unsigned int adc_rd; // Degiskenleri bildir
char *text;
long tlong;

void main() {

     INTCON = 0; // Tum kesmeler devre disi
     ANSEL = 0X04; // Pin RA2, analog giris olarak yapilandirilmistir
     TRISA = 0X04;
     ANSELH = 0; // Pinlerin geri kalani dijital olarak yapilandirilmistir
     
     Lcd_Init(); // LCD ekran baslatma
     Lcd_Cmd(_LCD_CURSOR_OFF); // LCD komutu (imlec kapali)
     Lcd_Cmd(_LCD_CLEAR); // LCD komutu (LCD'yi temizle)
     
     text = "mikroElektronika"; // Ilk mesaji tanimlayin
     Lcd_Out(1,1,text); // Ilk mesaji ilk satira yaz
     text = "LCD example"; // Ikinci mesaji tanimlayin
     Lcd_Out(2,1,text); // Ilk mesaji tanimlayin ikinci satira yaz
     ADCON1 = 0X82; // A/D voltaj referansi VCC'dir
     TRISA = 0XFF; // Tum baglanti noktasi A pinleri giris olarak yapilandirilmistir
     Delay_ms(2000);
     text = "voltage:"; // Ucuncu mesaji tanimlayin
     
     while(1){
     
          adc_rd = ADC_Read(2); // A/D donusumu. Pin RA2 bir giristir
          Lcd_Out(2,1,text); // Sonucu ikinci satira yazin
          tlong = (long)adc_rd * 5000; // Sonucu milivolt cinsinden donusturun
          tlong = tlong / 1023; // 0..1023 -> 0-5000mV
          ch = tlong / 1000; // Sonuctan volt (binlerce milivolt) cikarin

          Lcd_Chr(2,9,48+ch); // Sonucu ASCII formatinda yaz
          Lcd_Chr_CP('.');
          ch = (tlong / 100) % 10; // Yuzlerce milivolt ayiklayin
          Lcd_Chr_CP(48+ch); // Sonucu ASCII formatinda yaz
          ch = (tlong / 10) % 10; // Onlarca milivolt cikar
          Lcd_Chr_CP(48+ch); // Sonucu ASCII formatinda yaz
          ch = tlong % 10; // Milivolt icin rakamlari ayiklayin
          Lcd_Chr_CP(48+ch); // Sonucu ASCII formatinda yaz
          Lcd_Chr_CP('V');
          Delay_ms(1);
     }
}