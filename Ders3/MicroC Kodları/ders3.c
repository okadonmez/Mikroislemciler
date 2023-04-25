/*void main() {
//ÖNCELKLE PORTLARIN GÝRÝÞMÝ ÇIKILMI OLDUÐUNU ANLATMAMIZ LAZIM ÝÞLEMCÝMÝZE
      //TRÝS KOMUTU GÝRÝÞMÝ ÇIKIÞMI OLDUÐUNU BELÝRTEN KOMUTUMUZ
    TRISA=0;//A PORTUNUN TAMAMEN ÇIKIÞ OLDUÐUNU BELÝRTÝR  (DECÝMAL SÝSTEMDE TAMAMEN ÇIKIÞ YAPILDI)
    TRISA=0B00000000;//      BÝNARY SÝSTEMDE TAMAMEN ÇIKIÞ YAPILDI)
    //MÝCRO C DE BÝR BÝNARY SAYIVERMEK ÝSTÝYORSAK BAÞINA 0B koymamýz lazým. Bundan sonra verdiðimiz tü rakamlar binary deðerdir
    TRISA=0X00;  //        hexadecimal SÝSTEMDE TAMAMEN ÇIKIÞ YAPILDI)

    TRISA=0B10101011;  //1 lere 5 volt gidecek 0 lara 0 volt gidecek
    //üstteki ayný zamanda portun giriþ/çýkýþ pinlerinin sayisini veriyo RA0 RA1 RA2 RA3 RA4 RA7 RA6 RA7 RA8
    
    //hepsi ayný iþi yapýyor
    //


} */

#define LED PORTA.b0

void main(){

    TRISA=0B00000000;
    
    PORTA=0;//port icerigi temizlendi
    
    while(1){

        PORTA.b0=1;    //5volt yolladý bu bacaða picin 17. bacaðýna
        DELAY_ms(1000);
        
        LED=0;         //porta nýn 0. bitini 0 yaptýk yani picin 17.bacaðýna 0 volt yolladýk
        DELAY_ms(1000);
    }
}