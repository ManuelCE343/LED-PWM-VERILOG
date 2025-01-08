module pwm_led(clk, led);
input clk;
output [2:0]led;
reg [7:0]counter=0;
//
reg delay;
reg [7:0]delay_con;
reg [26:0]c=27'b111111111111111111111111111;
///

always@(posedge clk)begin
		if(counter <100) counter <= counter + 1;
		else counter <=0;
end
///


always @(posedge clk)
		begin 
		if (c>= 100000000)
			c<=0;
		else 
			c<=c+1;
		end 
	//	
	
 always @(c)
		begin
		if (c<=(100000000/2)-1)
			delay <= 1;
		else 
			delay <= 0;
		
		end 
		//
always @(posedge delay)begin
	if(delay_con<100)
		delay_con <= delay_con+4
		
		;
	else
		delay_con <= 0;
end
//
///
assign led[0]= (counter<delay_con)? 1:0;
assign led[1] = (counter<1)? 1:0;
assign led[2] = (counter<100)? 1:0;



endmodule