/*void main() {
//�NCELKLE PORTLARIN G�R��M� �IKILMI OLDU�UNU ANLATMAMIZ LAZIM ��LEMC�M�ZE
      //TR�S KOMUTU G�R��M� �IKI�MI OLDU�UNU BEL�RTEN KOMUTUMUZ
    TRISA=0;//A PORTUNUN TAMAMEN �IKI� OLDU�UNU BEL�RT�R  (DEC�MAL S�STEMDE TAMAMEN �IKI� YAPILDI)
    TRISA=0B00000000;//      B�NARY S�STEMDE TAMAMEN �IKI� YAPILDI)
    //M�CRO C DE B�R B�NARY SAYIVERMEK �ST�YORSAK BA�INA 0B koymam�z laz�m. Bundan sonra verdi�imiz t� rakamlar binary de�erdir
    TRISA=0X00;  //        hexadecimal S�STEMDE TAMAMEN �IKI� YAPILDI)

    TRISA=0B10101011;  //1 lere 5 volt gidecek 0 lara 0 volt gidecek
    //�stteki ayn� zamanda portun giri�/��k�� pinlerinin sayisini veriyo RA0 RA1 RA2 RA3 RA4 RA7 RA6 RA7 RA8
    
    //hepsi ayn� i�i yap�yor
    //


} */

#define LED PORTA.b0

void main(){

    TRISA=0B00000000;
    
    PORTA=0;//port icerigi temizlendi
    
    while(1){

        PORTA.b0=1;    //5volt yollad� bu baca�a picin 17. baca��na
        DELAY_ms(1000);
        
        LED=0;         //porta n�n 0. bitini 0 yapt�k yani picin 17.baca��na 0 volt yollad�k
        DELAY_ms(1000);
    }
}