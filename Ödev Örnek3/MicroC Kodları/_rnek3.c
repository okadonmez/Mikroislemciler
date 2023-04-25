unsigned int motor_speed;

void main() {

   ANSEL = 1;
   ANSELH = 0;
   PORTC = 0;
   TRISC = 0;
   
   ADC_Init();
   PWM1_Init(1000);
   PWM1_Start();
   delay_ms(100);
   
   while(1){
   
      PORTC.F0 = 1;
      PORTC.F1 = 0;
      motor_speed = ADC_Read(0);
      PWM1_Set_Duty(motor_speed >> 2);
      delay_ms(50);
   }
}