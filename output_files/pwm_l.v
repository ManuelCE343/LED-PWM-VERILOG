module pwm_l(clk, led);
input clk;
output [2:0]led;
reg [7:0]counter=0;

always@(posedge clk)begin
		if(counter <100) counter <= counter + 1;
		else counter <=0;
end
assign led[0]= (counter<10)? 1:0;
assign led[1] = (counter<50)? 1:0;
assign led[2] = (counter<100)? 1:0;



endmodule