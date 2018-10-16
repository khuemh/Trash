module fpga(SW, HEX0, HEX1, HEX2, HEX3);
	input [2:0] SW;
	output [0:6] HEX0, HEX1, HEX2, HEX3;
	decoder led (SW[2:0], HEX0, HEX1, HEX2, HEX3);
endmodule

module decoder(c, led0, led1, led2, led3);
	input [2:0] c;
	output reg [0:6] led0, led1, led2, led3;
	always @(c)
		begin
			case(c)
				3'b000: led0 = 7'b0001000;
				3'b000: led1 = 7'b0100001;
				3'b000: led2 = 7'b0011000;
				3'b000: led3 = 7'b0111000;
				default: begin
								led0 = 7'b1111111;
								led1 = 7'b1111111;
								led2 = 7'b1111111;
								led3 = 7'b1111111;
							end
			endcase
		end
endmodule
			