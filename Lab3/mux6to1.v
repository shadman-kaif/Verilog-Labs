module mux6to1 (SW, out);
input [9:0] SW;          
output reg out;         
 
	always @ (*) 
	begin
      	case (SW[9:7])
        	3'b000 : out = SW[0];
        	3'b001 : out = SW[1];
        	3'b010 : out = SW[2];
        	3'b011 : out = SW[3];
		3'b100 : out = SW[4];
		3'b101 : out = SW[5];
		default : out = 1'b0;
     	endcase
   	end
endmodule