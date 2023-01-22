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

input [3:0] SW;
input CLK;

output reg[7:0] SSEG_CA;
output reg[7:0] SSEG_AN;

output reg[3:0] LED;


// Instantiating the slow_clock module
// slow clock module is used to generate a slow clock from the input clock
slow_clock S1 (CLK , Clk_Slow);

initial begin

// SSEG_AN is used to select the 7 segment display
// SSEG_CA is used to display the value on the 7 segment display

SSEG_AN <= 8'b11111110;
end

// always @(posedge CLK) is used to generate a clock from the input clock
always @(posedge CLK)
begin

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
// we are generating slow clock to display the value of the switch on the 7 segment display
// WE HAVE TO CONVERT INTO 200KHZ CLOCK

module slow_clock(CLK,Clk_Slow);

// Initialising the input and output ports
input CLK;
output Clk_Slow;
reg[31:0] counter_out;
reg Clk_Slow;

initial 
begin

// counter_out<=32'h00000000; is used to initialise the counter
counter_out<=32'h00000000;

// Clk_Slow<=0; is used to initialise the slow clock
Clk_Slow<=0;
end

always @(posedge CLK) begin

// counter_out<=counter_out + 32'h00000001; is used to increment the counter
counter_out<=counter_out + 32'h00000001;

// if (counter_out> 32'h00F5E100) is used to check if the counter value is greater than 10000000
if (counter_out> 32'h00F5E100)
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







module PWM_generator(CLK,DUTY_CYCLE, PWM_OUT);
input CLK;
output PWM_OUT;

reg[3:0] PWM_counter;
output reg[3:0] DUTY_CYCLE=5;

always @(posedge CLK) begin
    PWM_counter<=PWM_counter+1;
    if(PWM_counter>=9)
    PWM_counter<=0;
end
assign PWM_OUT = PWM_counter < DUTY_CYCLE? 1:0;
endmodule



// RGB_to_PWM is used to convert the RGB value to PWM value
module rgb_to_pwm(RGBval, CLK, PWM_R, PWM_G, PWM_B);
    input [23:0] RGBval;
    input CLK;
    output PWM_R;
    output PWM_G;
    output PWM_B;


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
