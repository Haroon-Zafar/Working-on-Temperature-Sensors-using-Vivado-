`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/19/2023 03:27:12 PM
// Design Name: 
// Module Name: segment_display
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


// Creating a module named segment_display 
// This module will be used to display the value of the switch on the 7 segment display

// segment_display module is used to display the value of the switch on the 7 segment display

module segment_display(SW, CLK, SSEG_CA,SSEG_AN, LED);

// Input and output ports of the module

// SW is a 4 bit input used to select the value to be displayed on the 7 segment display
input [3:0] SW;

// CLK is a 1 bit input used to generate a clock from the input clock
input CLK;


// LED is a 4 bit output used to control the color of the LED
output reg[3:0] LED;

// OUTPUT PORTS
// SSEG_CA is a 8 bit output used to display the value on the 7 segment display

output reg[7:0] SSEG_CA;
output reg[7:0] SSEG_AN;


// Instantiating the slow_clock module
// slow clock module is used to generate a slow clock from the input clock
// slow clock means 
slow_clock S1 (CLK , Clk_Slow);


// an "initial" block to set the initial value of SSEG_AN

initial begin

// SSEG_AN is used to select the 7 segment display
// SSEG_CA is used to display the value on the 7 segment display

SSEG_AN <= 8'b11111110;
end

// always @(posedge CLK) is used to generate a clock from the input clock
always @(posedge CLK)
begin

// The case statement has 16 cases, one for each possible value of SW, with each case setting SSEG_CA to a different 8-bit value to display a different number or letter on the 7-segment display.
// case(SW) is used to display the value of the switch on the 7 segment display

case(SW)

// 4'b0000: SSEG_CA <= 8'b11000000; is used to display 0 on the 7 segment display
4'b0000: SSEG_CA <= 8'b11000000;

// 4'b0001: SSEG_CA <= 8'b11111001; is used to display 1 on the 7 segment display
4'b0001: SSEG_CA <= 8'b11111001;

// 4'b0010: SSEG_CA <= 8'b10100100; is used to display 2 on the 7 segment display
4'b0010: SSEG_CA <= 8'b10100100;

// 4'b0011: SSEG_CA <= 8'b10110000; is used to display 3 on the 7 segment display
4'b0011: SSEG_CA <= 8'b10110000;

// 4'b0100: SSEG_CA <= 8'b10011001; is used to display 4 on the 7 segment display
4'b0100: SSEG_CA <= 8'b10011001;

// 4'b0101: SSEG_CA <= 8'b10010010; is used to display 5 on the 7 segment display
4'b0101: SSEG_CA <= 8'b10010010;

// 4'b0110: SSEG_CA <= 8'b10000010; is used to display 6 on the 7 segment display
4'b0110: SSEG_CA <= 8'b10000010;

// 4'b0111: SSEG_CA <= 8'b11011000; is used to display 7 on the 7 segment display
4'b0111: SSEG_CA <= 8'b11011000;

// 4'b1000: SSEG_CA <= 8'b10000000; is used to display 8 on the 7 segment display
4'b1000: SSEG_CA <= 8'b10000000;

// 4'b1001: SSEG_CA <= 8'b10011000; is used to display 9 on the 7 segment display
4'b1001: SSEG_CA <= 8'b10011000;

// 4'b1010: SSEG_CA <= 8'b10001000; is used to display A on the 7 segment display
4'b1010: SSEG_CA <= 8'b10001000;

// 4'b1011: SSEG_CA <= 8'b10000000; is used to display B on the 7 segment display
4'b1011: SSEG_CA <= 8'b10000000;

// 4'b1100: SSEG_CA <= 8'b11000110; is used to display C on the 7 segment display
4'b1100: SSEG_CA <= 8'b11000110;

// 4'b1101: SSEG_CA <= 8'b10100001; is used to display D on the 7 segment display
4'b1101: SSEG_CA <= 8'b10100001;

// 4'b1110: SSEG_CA <= 8'b10000110; is used to display E on the 7 segment display
4'b1110: SSEG_CA <= 8'b10000110;

// 4'b1111: SSEG_CA <= 8'b10001110; is used to display F on the 7 segment display
4'b1111: SSEG_CA <= 8'b10001110;

endcase

// LED<=SW; is used to display the value of the switch on the LED
LED<=SW;

// case(SSEG_AN) is used to select the 7 segment display
case(SSEG_AN)

// 8'b11111110: SSEG_AN <= 8'b11111101; is used to select the 1st 7 segment display
8'b11111110: SSEG_AN <= 8'b11111101;

// 8'b11111101: SSEG_AN <= 8'b11111011; is used to select the 2nd 7 segment display
8'b11111101: SSEG_AN <= 8'b11111011;

// 8'b11111011: SSEG_AN <= 8'b11110111; is used to select the 3rd 7 segment display
8'b11111011: SSEG_AN <= 8'b11110111;

// 8'b11110111: SSEG_AN <= 8'b11101111; is used to select the 4th 7 segment display
8'b11110111: SSEG_AN <= 8'b11101111;

// 8'b11101111: SSEG_AN <= 8'b11011111; is used to select the 5th 7 segment display
8'b11101111: SSEG_AN <= 8'b11011111;

// 8'b11011111: SSEG_AN <= 8'b10111111; is used to select the 6th 7 segment display
8'b11011111: SSEG_AN <= 8'b10111111;

// 8'b10111111: SSEG_AN <= 8'b01111111; is used to select the 7th 7 segment display
8'b10111111: SSEG_AN <= 8'b01111111;

// 8'b01111111: SSEG_AN <= 8'b11111110; is used to select the 8th 7 segment display
8'b01111111: SSEG_AN <= 8'b11111110;

endcase
end
endmodule




// slow_clock is used to generate a slow clock from the input clock
// The slow_clock module takes in an input clock (CLK) and generates a slower clock signal (Clk_Slow) as an output.

module slow_clock(CLK,Clk_Slow);

// Initialising the input and output ports

input CLK;
output Clk_Slow;
reg[31:0] counter_out;
reg Clk_Slow;

initial 
begin

// Using a counter (counter_out) that increments every time the input clock (CLK) rises.

// counter_out<=32'h00000000; is used to initialise the counter
counter_out<=32'h00000000;


// Clk_Slow<=0; is used to initialise the slow clock
Clk_Slow<=0;
end

always @(posedge CLK) begin

// counter_out<=counter_out + 32'h00000001; is used to increment the counter
counter_out<=counter_out + 32'h00000001;

// The counter is then checked to see if its value is greater than a certain threshold value (32'h00F5E100)
// if (counter_out> 32'h00F5E100) is used to check if the counter value is greater than 10000000

if (counter_out> 32'h00F5E100)
// If the counter value is greater than this threshold, the counter is reset to zero
begin

// counter_out<=32'h00000000; is used to reset the counter
counter_out<=32'h00000000;

// Clk_Slow<=!Clk_Slow; is used to toggle the slow clock
// toggle means if the slow clock is 0 then it will become 1 and if the slow clock is 1 then it will become 0
// this is done to display the value of the switch on the 7 segment display

Clk_Slow<=!Clk_Slow;
end
end
endmodule






// Pulse Width Modulation (PWM)
// PWM is used to generate a square wave with a duty cycle that is controlled by the input DUTY_CYCLE

module PWM_generator(CLK,DUTY_CYCLE, PWM_OUT);

// The inputs to the module are the clock (CLK) and the duty cycle (DUTY_CYCLE)
input CLK;

// The output is the PWM signal (PWM_OUT)
output PWM_OUT;

// The module has a 4-bit counter (PWM_counter) that counts from 0 to 9
reg[3:0] PWM_counter;

// The duty cycle is set as a 4-bit output, and it is set to 5 as default
output reg[3:0] DUTY_CYCLE=5;

always @(posedge CLK) begin

// The counter is incremented on each positive edge of the clock. When the counter reaches 9, it is reset to 0
    PWM_counter<=PWM_counter+1;
    if(PWM_counter>=9)
    PWM_counter<=0;
end
assign PWM_OUT = PWM_counter < DUTY_CYCLE? 1:0;
endmodule



// rgb_to_pwm is used to convert the RGB value to PWM value

module rgb_to_pwm(RGBval, CLK, PWM_R, PWM_G, PWM_B);

    // INPUTS TO THE MODULE
    // 24-bit RGB value (RGBval), a clock signal (CLK)
    input [23:0] RGBval;
    input CLK;
    
    // Outputs are 3 PWM signals (PWM_R, PWM_G, PWM_B) for the red, green, and blue components of the RGB value, respectively
    output PWM_R;
    output PWM_G;
    output PWM_B;

// It instantiates 3 instances of the "PWM_generator" module, one for each color component,
// and connects the RGB value, clock signal, and PWM output to the appropriate inputs and outputs of the "PWM_generator" module. 
// The RGB value is shifted right by 1 bit to divide the value by 2, so that it can be used as the duty cycle input to the PWM generator

    PWM_generator PWM_Rgen (CLK,RGBval[23:16]>>1, PWM_R);
    PWM_generator PWM_Ggen (CLK,RGBval[15:8]>>1, PWM_G);
    PWM_generator PWM_Bgen (CLK, RGBval[7:0]>>1, PWM_B);

endmodule


    
    


//  module get_temp(SDA, SCL, CLK, temp);
//     inout SDA;
//     input SCL;
//     input CLK;
//     output reg[7:0] temp;
//     reg [7:0] count;
//     reg [2:0] mode;
//     const init_and_address = 9'b010010000;
// reg [8:0] shift_reg;
//  assign shift_out = shift_reg[8];
//  assign shift_in = shift_out
//     always @(posedge shift_clk) begin
//         shift_reg <= shift_reg << 1;
//         shift_reg[0] <= shift_in;
//     end

//     initial begin
//         assign SDA = 1;
//     end

//     always @(posedge CLK) begin
//         if(count==8'b11111111)begin
//         count <= 0;
//         end
//         else begin
//         count <= count + 1;
//         end
//     end
