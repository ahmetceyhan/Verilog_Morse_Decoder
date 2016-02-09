`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: RUHere
// Engineer: Ahmet Ceyhan
//
// Create Date:   23:55:16 11/24/2015
// Design Name:   morse8.1
// Module Name:   C:/BBM 233 Logic Design/morse8.1/tb_morse.v
// Project Name:  morse8.1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: morse_decoder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_morse_decoder;

	wire [7:0] decimal_out; 
	reg signal;
	reg clock;
	

	// Instantiate the Unit Under Test (UUT)
	morse_decoder uut (
		.clock (clock),
		.signal_in (signal),
		.decimal_out (decimal_out) 
	);
	
	parameter periot_time = 0.5;//0.5 nano second
   always begin 
		clock = 1'b0;
      #(periot_time/2) 
		clock = 1'b1;
      #(periot_time/2);
   end
	
	initial begin
		begin

			
			$display("TIME\t CHARACTER");  
			$monitor("%g \t %c",$time,decimal_out);	
			
			
			
			#(periot_time) signal = 1'b1;//
			#(periot_time) signal = 1'b1;//
			#(periot_time) signal = 1'b1;//	N
			#(periot_time) signal = 1'b0;//
			#(periot_time) signal = 1'b1;//

			#(periot_time) signal = 1'b0;//
			#(periot_time) signal = 1'b0;//
			#(periot_time) signal = 1'b0;//
			
			#(periot_time) signal = 1'b1;//
			#(periot_time) signal = 1'b1;//
			#(periot_time) signal = 1'b1;//
			#(periot_time) signal = 1'b0;//
			#(periot_time) signal = 1'b1;//
			#(periot_time) signal = 1'b1;//	O
			#(periot_time) signal = 1'b1;//
			#(periot_time) signal = 1'b0;//
			#(periot_time) signal = 1'b1;//
			#(periot_time) signal = 1'b1;//
			#(periot_time) signal = 1'b1;//
			
			#(periot_time) signal = 1'b0;//
			#(periot_time) signal = 1'b0;//
			#(periot_time) signal = 1'b0;//
			#(periot_time) signal = 1'b0;//	SPACE
			#(periot_time) signal = 1'b0;//
			#(periot_time) signal = 1'b0;//
			#(periot_time) signal = 1'b0;//
			
			#(periot_time) signal = 1'b1;//
			#(periot_time) signal = 1'b0;//
			#(periot_time) signal = 1'b1;//
			#(periot_time) signal = 1'b1;//
			#(periot_time) signal = 1'b1;//
			#(periot_time) signal = 1'b0;//	P
			#(periot_time) signal = 1'b1;//
			#(periot_time) signal = 1'b1;//
			#(periot_time) signal = 1'b1;//
			#(periot_time) signal = 1'b0;//
			#(periot_time) signal = 1'b1;//
			
			#(periot_time) signal = 1'b0;//
			#(periot_time) signal = 1'b0;//
			#(periot_time) signal = 1'b0;//
			
			#(periot_time) signal = 1'b1;//
			#(periot_time) signal = 1'b0;//
			#(periot_time) signal = 1'b1;//	A
			#(periot_time) signal = 1'b1;//
			#(periot_time) signal = 1'b1;//
			
			#(periot_time) signal = 1'b0;//
			#(periot_time) signal = 1'b0;//
			#(periot_time) signal = 1'b0;//
			
			#(periot_time) signal = 1'b1;//
			#(periot_time) signal = 1'b0;//	I
			#(periot_time) signal = 1'b1;//
			
			#(periot_time) signal = 1'b0;//
			#(periot_time) signal = 1'b0;//
			#(periot_time) signal = 1'b0;//
			
			#(periot_time) signal = 1'b1;//
			#(periot_time) signal = 1'b1;//
			#(periot_time) signal = 1'b1;//	N
			#(periot_time) signal = 1'b0;//
			#(periot_time) signal = 1'b1;//
			
			#(periot_time) signal = 1'b0;//
			#(periot_time) signal = 1'b0;//
			#(periot_time) signal = 1'b0;//
			#(periot_time) signal = 1'b0;//	SPACE
			#(periot_time) signal = 1'b0;//
			#(periot_time) signal = 1'b0;//
			#(periot_time) signal = 1'b0;//
			
			#(periot_time) signal = 1'b1;//
			#(periot_time) signal = 1'b1;//
			#(periot_time) signal = 1'b1;//	N
			#(periot_time) signal = 1'b0;//
			#(periot_time) signal = 1'b1;//
			
			#(periot_time) signal = 1'b0;//
			#(periot_time) signal = 1'b0;//
			#(periot_time) signal = 1'b0;//
			
			#(periot_time) signal = 1'b1;//
			#(periot_time) signal = 1'b1;//
			#(periot_time) signal = 1'b1;//
			#(periot_time) signal = 1'b0;//
			#(periot_time) signal = 1'b1;//
			#(periot_time) signal = 1'b1;//	O
			#(periot_time) signal = 1'b1;//
			#(periot_time) signal = 1'b0;//
			#(periot_time) signal = 1'b1;//
			#(periot_time) signal = 1'b1;//
			#(periot_time) signal = 1'b1;//
			
			#(periot_time) signal = 1'b0;//
			#(periot_time) signal = 1'b0;//
			#(periot_time) signal = 1'b0;//
			#(periot_time) signal = 1'b0;//	SPACE
			#(periot_time) signal = 1'b0;//
			#(periot_time) signal = 1'b0;//
			#(periot_time) signal = 1'b0;//
			
			#(periot_time) signal = 1'b1;//
			#(periot_time) signal = 1'b1;//
			#(periot_time) signal = 1'b1;//
			#(periot_time) signal = 1'b0;//
			#(periot_time) signal = 1'b1;//	G
			#(periot_time) signal = 1'b1;//
			#(periot_time) signal = 1'b1;//
			#(periot_time) signal = 1'b0;//
			#(periot_time) signal = 1'b1;//
			
			#(periot_time) signal = 1'b0;//
			#(periot_time) signal = 1'b0;// 	
			#(periot_time) signal = 1'b0;//
			
			#(periot_time) signal = 1'b1;//
			#(periot_time) signal = 1'b0;//
			#(periot_time) signal = 1'b1;//	A
			#(periot_time) signal = 1'b1;//
			#(periot_time) signal = 1'b1;//
			
			#(periot_time) signal = 1'b0;//
			#(periot_time) signal = 1'b0;//
			#(periot_time) signal = 1'b0;//
			
			#(periot_time) signal = 1'b1;//
			#(periot_time) signal = 1'b0;//	I
			#(periot_time) signal = 1'b1;//
			
			#(periot_time) signal = 1'b0;//
			#(periot_time) signal = 1'b0;//
			#(periot_time) signal = 1'b0;//
			
			#(periot_time) signal = 1'b1;//
			#(periot_time) signal = 1'b1;//
			#(periot_time) signal = 1'b1;//	N
			#(periot_time) signal = 1'b0;//
			#(periot_time) signal = 1'b1;//
			
			
			
			
			
			//this zeros are necessary to letter determination	
			#(periot_time) signal = 1'b0;//
			#(periot_time) signal = 1'b0;//
			#(periot_time) signal = 1'b0;//



		end
	end
      
endmodule

