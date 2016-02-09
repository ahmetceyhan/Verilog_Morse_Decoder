`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: RUHere
// Engineer: Ahmet Ceyhan
// 
// Create Date:    21:16:33 11/25/2015
// Design Name: 
// Module Name:    morse_decoder 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////

module morse_decoder
(
 input signal_in,clock,
 output reg [7:0] decimal_out
);


reg signal_1s,signal_2s,signal_3s, signal_4s,signal_5s;
reg signal_6s,signal_7s,signal_8s,signal_9s,signal_10s;
reg signal_11s, signal_12s,signal_13s,signal_14s,signal_15s;
reg signal_16s,signal_17s,signal_18s,signal_19s, signal_20s;
reg signal_21s,signal_22s;

	//input always block
	always @(posedge clock)
		begin
        
			 signal_1s<=signal_in;
			 signal_2s<=signal_1s;
			 signal_3s<=signal_2s;					 
			 signal_4s<=signal_3s;
			 signal_5s<=signal_4s;
			 signal_6s<=signal_5s;
			 signal_7s<=signal_6s;                
			 signal_8s<=signal_7s;
			 signal_9s<=signal_8s;
			 signal_10s<=signal_9s;
			 signal_11s<=signal_10s;                
			 signal_12s<=signal_11s;
			 signal_13s<=signal_12s;
			 signal_14s<=signal_13s;
			 signal_15s<=signal_14s;                
			 signal_16s<=signal_15s;
			 signal_17s<=signal_16s;
			 signal_18s<=signal_17s;
			 signal_19s<=signal_18s;					 
			 signal_20s<=signal_19s;
			 signal_21s<=signal_20s;
			 signal_22s<=signal_21s;
          
    end
    
   //decoder block
	always @(posedge clock)   
		begin
			if(!signal_1s&&!signal_2s&&!signal_3s)
				begin
					// 0 - 1110111011101110111	
					if(signal_4s && signal_5s && signal_6s && !signal_7s && signal_8s && signal_9s && signal_10s && !signal_11s && signal_12s && signal_13s && signal_14s && !signal_15s && signal_16s && signal_17s && signal_18s&& !signal_19s && signal_20s&& signal_21s&& signal_22s)
						begin
							decimal_out<=48;                             
						end	
					// 1 - 10111011101110111	
					else if(signal_4s && signal_5s && signal_6s && !signal_7s && signal_8s && signal_9s && signal_10s && !signal_11s && signal_12s && signal_13s && signal_14s && !signal_15s && signal_16s && signal_17s && signal_18s&& !signal_19s&& signal_20s)
						begin
							decimal_out<=49;                              
						end	
					// 9 - 11101110111011101
					else if(signal_4s && !signal_5s && signal_6s && signal_7s && signal_8s && !signal_9s && signal_10s && signal_11s && signal_12s && !signal_13s && signal_14s && signal_15s&& signal_16s&& !signal_17s&& signal_18s&& signal_19s&& signal_20s)
						begin
							decimal_out<=57;
						end	
					// 2 - 101011101110111	
					else if(signal_4s && signal_5s && signal_6s && !signal_7s && signal_8s && signal_9s && signal_10s && !signal_11s && signal_12s && signal_13s && signal_14s && !signal_15s && signal_16s && !signal_17s && signal_18s)
						begin
							decimal_out<=50;                       
						end	
					// 8 - 111011101110101
					else if(signal_4s && !signal_5s && signal_6s && !signal_7s && signal_8s && signal_9s && signal_10s && !signal_11s && signal_12s && signal_13s && signal_14s && !signal_15s&& signal_16s&& signal_17s&& signal_18s)
						begin
							decimal_out<=56;                               
						end	
					// J - 1011101110111	
					else if(signal_4s && signal_5s && signal_6s && !signal_7s && signal_8s && signal_9s && signal_10s && !signal_11s && signal_12s && signal_13s && signal_14s && !signal_15s&& signal_16s)
						begin
							decimal_out<=74;//J letter
						end	
					// Q - 1110111010111	
					else if(signal_4s && signal_5s && signal_6s && !signal_7s && signal_8s && !signal_9s && signal_10s && signal_11s && signal_12s && !signal_13s && signal_14s && signal_15s&& signal_16s)
						begin
							decimal_out<=81;                                                
						end	
					// 3 - 1010101110111	
					else if(signal_4s && signal_5s && signal_6s && !signal_7s && signal_8s && signal_9s && signal_10s && !signal_11s && signal_12s && !signal_13s && signal_14s && !signal_15s && signal_16s)
						begin
							decimal_out<=51;                              
						end	
					// 7 - 1110111010101
					else if(signal_4s && !signal_5s && signal_6s && !signal_7s && signal_8s && !signal_9s && signal_10s && signal_11s && signal_12s && !signal_13s && signal_14s && signal_15s&& signal_16s)
						begin
							decimal_out<=55;                               
						end	
					// Y - 1110101110111	
					else if(signal_4s && signal_5s && signal_6s && !signal_7s && signal_8s && signal_9s && signal_10s && !signal_11s && signal_12s && !signal_13s && signal_14s && signal_15s&& signal_16s)
						begin
							decimal_out<=89;                               
						end	
					// Z - 11101110101	
					else if(signal_4s && !signal_5s && signal_6s && !signal_7s && signal_8s && signal_9s && signal_10s && !signal_11s && signal_12s && signal_13s && signal_14s)
						begin
							decimal_out<=90;                              
						end	
					// 4 - 10101010111
					else if(signal_4s && signal_5s && signal_6s && !signal_7s && signal_8s && !signal_9s && signal_10s && !signal_11s && signal_12s && !signal_13s && signal_14s)
						begin
							decimal_out<=52;                                
						end	
					// 6 - 11101010101
					else if(signal_4s && !signal_5s && signal_6s && !signal_7s && signal_8s && !signal_9s && signal_10s && !signal_11s && signal_12s && signal_13s && signal_14s)
						begin
							decimal_out<=54;                               
						end	
					// O - 11101110111	
					else if(signal_4s && signal_5s && signal_6s && !signal_7s && signal_8s && signal_9s && signal_10s && !signal_11s && signal_12s&& signal_13s&& signal_14s)
						begin
							decimal_out<=79;                                                 
						end	
					// P - 10111011101	
					else if(signal_4s && !signal_5s && signal_6s && signal_7s && signal_8s && !signal_9s && signal_10s && signal_11s && signal_12s && !signal_13s && signal_14s)
						begin
							decimal_out<=80;                                                
						end	
					// X - 11101010111	
					else if(signal_4s && signal_5s && signal_6s && !signal_7s && signal_8s && !signal_9s && signal_10s && !signal_11s && signal_12s && signal_13s && signal_14s)
						begin
							decimal_out<=88;                               
						end	
					// C - 11101011101
					else if(signal_4s && !signal_5s && signal_6s && signal_7s && signal_8s && !signal_9s && signal_10s && !signal_11s && signal_12s && signal_13s && signal_14s)
						begin
							decimal_out<=67;
						end
					// 5 - 101010101
					else if(signal_4s && !signal_5s && signal_6s && !signal_7s && signal_8s && !signal_9s && signal_10s && !signal_11s && signal_12s)
						begin
							decimal_out<=53; 
						end	
					// K - 111010111	
					else if(signal_4s && signal_5s && signal_6s && !signal_7s && signal_8s && !signal_9s && signal_10s && signal_11s && signal_12s)
						begin
							decimal_out<=75;//K letter
						end	
					// L - 101110101	
					else if(signal_4s && !signal_5s && signal_6s && !signal_7s && signal_8s && signal_9s && signal_10s && !signal_11s && signal_12s)
						begin
							decimal_out<=76;//L letter                       
						end	
					// V - 101010111	
					else if(signal_4s && signal_5s && signal_6s && !signal_7s && signal_8s && !signal_9s && signal_10s&& !signal_11s && signal_12s)
						begin
							decimal_out<=86;                               
						end	
					// W - 101110111	
					else if(signal_4s && signal_5s && signal_6s && !signal_7s && signal_8s && signal_9s && signal_10s && !signal_11s && signal_12s)
						begin
							decimal_out<=87;                               
						end	
					// B - 111010101
					else if(signal_4s&&!signal_5s&&signal_6s&&!signal_7s&&signal_8s&&!signal_9s&&signal_10s&&signal_11s&&signal_12s)
						begin
						decimal_out<=66;                                     
						end
					// G - 111011101	
					else if(signal_4s && !signal_5s && signal_6s && signal_7s && signal_8s && !signal_9s && signal_10s && signal_11s && signal_12s)
						begin
							decimal_out<=71;
						end	
					// F - 101011101		
					else if(signal_4s && !signal_5s && signal_6s && signal_7s && signal_8s && !signal_9s && signal_10s && !signal_11s && signal_12s)
						begin
							decimal_out<=70;
						end	
					// H - 1010101	
					else if(signal_4s && !signal_5s && signal_6s && !signal_7s && signal_8s && !signal_9s && signal_10s)
						begin
							decimal_out<=72;
						end	
					// M - 1110111	
					else if(signal_4s && signal_5s && signal_6s && !signal_7s && signal_8s && signal_9s&& signal_10s)
						begin
							decimal_out<=77;//M letter                               
						end	
					// D - 1110101
					else if(signal_4s && !signal_5s && signal_6s && !signal_7s && signal_8s && signal_9s && signal_10s)
						begin
							decimal_out<=68;
						end
					// R - 1011101
					else if(signal_4s && !signal_5s && signal_6s && signal_7s && signal_8s && !signal_9s && signal_10s)
						begin
							decimal_out<=82;                                                 
						end	
					// U - 1010111	
					else if(signal_4s && signal_5s && signal_6s && !signal_7s && signal_8s && !signal_9s && signal_10s)
						begin
							decimal_out<=85;                                
						end	
					// S - 10101							
					else if(signal_4s && !signal_5s && signal_6s && !signal_7s && signal_8s)
						begin
							decimal_out<=83;                                                 
						end	
					// N - 11101	
					else if(signal_4s && !signal_5s && signal_6s && signal_7s && signal_8s)
						begin
							decimal_out<=78;                                                 
						end	
					// A - 10111
					else if(signal_4s&&signal_5s&&signal_6s&&!signal_7s&&signal_8s)
						begin
						decimal_out<=65;											  
						end
					// I - 101	
					else if(signal_4s && !signal_5s && signal_6s)
						begin
							decimal_out<=73;//I letter
						end	
					// T - 111
					else if(signal_4s && signal_5s && signal_6s)
						begin
							decimal_out<=84;   
						end	
					// E - 1												
					else if(signal_4s)
						begin
							decimal_out<=69;
						end	
					// SPACE - 0000000
					else if(!signal_1s && !signal_2s && !signal_3s && !signal_4s && !signal_5s && !signal_6s && signal_7s)
						begin
							decimal_out<=32;
						end	
				end
      end
   
endmodule