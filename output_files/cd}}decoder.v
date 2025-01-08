module decoder(D,A,B,E);
output [0:3]D;
input A,B,E;

wire A_not,B_not,E_not;

not 
	G1(A_not,A),
	G2(B_not,B),
	G3(E_not,E);
nand
	G4(D[0],A_not,B_not,E_not),
	G5(D[1],A_not,B,E_not),
	G6(D[2],A,B_not,E_not),
	G7(D[3],A,B,E_not);



endmodule