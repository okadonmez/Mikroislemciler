short duty_1 = 128;
short duty_2 = 128;

void main() {

   ANSEL = ANSELH = 0;

   TRISB = 0xFF;
   TRISC = 0x00;

   PWM1_Init(500);
   PWM2_Init(1000);

   PWM1_Start();
   PWM2_Start();

   PWM1_Set_Duty(duty_1);
   PWM2_Set_Duty(duty_2);

   while(1){

      if(!PORTB.F0){

         Delay_ms(200);

         duty_1 = duty_1 + 8;

         PWM1_Set_Duty(duty_1);
      }

      if(!PORTB.F1){

         Delay_ms(200);

         duty_1 = duty_1 - 8;

         PWM1_Set_Duty(duty_1);
      }

      if(!PORTB.F2){

         Delay_ms(200);

         duty_2 = duty_2 + 8;

         PWM1_Set_Duty(duty_2);
      }

      if(!PORTB.F3){

         Delay_ms(200);

         duty_2 = duty_2 - 8;

         PWM1_Set_Duty(duty_2);
      }

      Delay_ms(10);
   }
}