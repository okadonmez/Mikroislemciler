/* LCD modul baglantilari */

// LCD baglanti ayarlari
sbit LCD_RS at RC2_bit;
sbit LCD_EN at RC3_bit;
sbit LCD_D4 at RC4_bit;
sbit LCD_D5 at RC5_bit;
sbit LCD_D6 at RC6_bit;
sbit LCD_D7 at RC7_bit;

// Pin yonu
sbit LCD_RS_Direction at TRISC2_bit;
sbit LCD_EN_Direction at TRISC3_bit;
sbit LCD_D4_Direction at TRISC4_bit;
sbit LCD_D5_Direction at TRISC5_bit;
sbit LCD_D6_Direction at TRISC6_bit;
sbit LCD_D7_Direction at TRISC7_bit;
/* LCD modul baglantilarini sonlandirin */

void main() {

    Lcd_Init(); // Initializes LCD module

    Lcd_Cmd(_LCD_CURSOR_OFF);
    Lcd_Cmd(_LCD_CLEAR);
    Lcd_Out(1,1,"Merhaba Dünya"); // 1. Satirda baslayalim
    delay_ms(50);
    Lcd_Out(2,1,"Bye"); // 2. Satiri da kullanalim
}

/*
void Lcd_Out(char row, char column, char *text);
Lcd_Out(1, 3, "Hello!"); // 1. satýr, 3. sutundan baslayarak LCD'de "Hello!" yaz

void Lcd_Out_Cp(char *text);
Lcd_Out_Cp("Here!"); // Gecerli imlec konumuna "Here!" yaz


void Lcd_Cmd(char out_char);
Lcd_Cmd(_LCD_CLEAR); // LCD ekrani temizle:


_LCD_FIRST_ROW         --> Imleci 1. satira tasi
_LCD_SECOND_ROW        --> Imleci 2. satira tasi
_LCD_THIRD_ROW         --> Imleci 3. satira tasi
_LCD_FOURTH_ROW        --> Imleci 4. satira tasi
_LCD_CLEAR             --> Ekraný temizle
_LCD_RETURN_HOME       --> Imleci baslangic konumuna dondur, kaydirilmis bir goruntu dondurur
_LCD_CURSOR_OFF        --> Imleci kapat
_LCD_UNDERLINE_ON      --> Imlecin altini ciz
_LCD_BLINK_CURSOR_ON   --> Imlec yanip sonuyor
_LCD_MOVE_CURSOR_LEFT  --> Goruntu veri RAM'ini degistirmeden imleci sola hareket ettirin
_LCD_MOVE_CURSOR_RIGHT --> Goruntu veri RAM'ini degistirmeden imleci saga hareket ettirin
_LCD_TURN_ON           --> LCD ekrani ac
_LCD_TURN_OFF          --> LCD ekrani kapat
_LCD_SHIFT_LEFT        --> Ekran verileri RAM'ini degistirmeden ekrani sola kaydirin
_LCD_SHIFT_RIGHT       --> Ekran verileri RAM'ini degistirmeden ekrani saga kaydirin
*/