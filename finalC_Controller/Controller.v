 module Controller(
input LDA,STA,ADD,SUB,XOR,INC,CLR,JMP,JPZ,JPN,HLT,clock,reset,
output reg c0,c2,c3,c4,c5,c7,c8,c9,c10,c12,c13,c11,c16,c1);
reg[4:0]state,nextstate;
parameter A=5'b00000,B=5'b00001,C=5'b00010,D=5'b00011,E=5'b00100,F=5'b00110,G=5'b00101,H=5'b00111,I=5'b01000,J=5'b01001,K=5'b01010,
L=5'b01011,M=5'b01100,N=5'b01101,O=5'b01110,P=5'b01111,Q=5'b10000,R=5'b10001,S=5'b10010,T=5'b10011,U=5'b11111;
always @(posedge clock,negedge reset)
	if(reset==0)begin state<=A;end
	else begin state<=nextstate; end
	always@(state,CLR,INC,LDA,STA,JMP,ADD)
		case({state})
			A: begin nextstate<=B;c0<=1;c1<=0;c2<=0;c3<=0;c4<=0;c5<=0;c7<=0;c8<=0;c9<=0;c10<=0;c12<=0;c13<=0;c11<=1;c16<=0;end
			B: begin nextstate<=C;c0<=0;c1<=0;c2<=0;c3<=1;c4<=0;c5<=0;c7<=0;c8<=0;c9<=0;c10<=0;c12<=0;c13<=0;c11<=0;c16<=0;end
			C: begin nextstate<=D;c0<=0;c1<=0;c2<=0;c3<=0;c4<=1;c5<=0;c7<=0;c8<=0;c9<=0;c10<=0;c12<=0;c13<=0;c11<=0;c16<=0;end
			D: begin nextstate<=E;c0<=0;c1<=0;c2<=0;c3<=0;c5<=0;c4<=1;c7<=0;c8<=0;c9<=0;c10<=0;c12<=0;c13<=0;c11<=0;c16<=0;end
			E: begin              c0<=0;c1<=0;c2<=1;c3<=0;c4<=0;c5<=0;c7<=1;c8<=0;c9<=0;c10<=0;c12<=0;c13<=0;c11<=0;c16<=0;
			if(INC==1)begin nextstate<=F;end
			if(CLR==1)begin nextstate<=G;end
			if(LDA==1)begin nextstate<=H;end
			if(STA==1)begin nextstate<=L;end
			if(JMP==1)begin nextstate<=S;end
			if(ADD==1)begin nextstate<=O;end
			
			end
			F: begin nextstate<=B;c0<=0;c1<=0;c2<=0;c3<=0;c4<=0;c5<=0;c7<=0;c8<=0;c9<=1;c10<=0;c12<=0;c13<=0;c11<=0;c16<=0;end
			G: begin nextstate<=B;c0<=0;c1<=0;c2<=0;c3<=0;c4<=0;c5<=0;c7<=0;c8<=1;c9<=0;c10<=0;c12<=0;c13<=0;c11<=0;c16<=0;end	
			
			H: begin nextstate<=I;c0<=0;c1<=0;c2<=0;c3<=0;c4<=0;c5<=0;c7<=0;c8<=0;c9<=0;c10<=0;c12<=0;c13<=0;c11<=0;c16<=1;end
			I: begin nextstate<=J;c0<=0;c1<=0;c2<=0;c3<=0;c4<=1;c5<=0;c7<=0;c8<=0;c9<=0;c10<=0;c12<=0;c13<=0;c11<=0;c16<=1;end
			J: begin nextstate<=K;c0<=0;c1<=0;c2<=0;c3<=0;c4<=1;c5<=0;c7<=0;c8<=0;c9<=0;c10<=0;c12<=0;c13<=0;c11<=0;c16<=1;end
			K: begin nextstate<=B;c0<=0;c1<=0;c2<=0;c3<=0;c4<=0;c5<=0;c7<=0;c8<=0;c9<=0;c10<=0;c12<=0;c13<=0;c11<=1;c16<=1;end
		
			L: begin nextstate<=M;c0<=0;c1<=0;c2<=0;c3<=0;c4<=0;c5<=1;c7<=0;c8<=0;c9<=0;c10<=0;c12<=0;c13<=0;c11<=0;c16<=1;end
			M: begin nextstate<=N;c0<=0;c1<=0;c2<=0;c3<=0;c4<=1;c5<=1;c7<=0;c8<=0;c9<=0;c10<=0;c12<=0;c13<=0;c11<=0;c16<=1;end
			N: begin nextstate<=B;c0<=0;c1<=0;c2<=0;c3<=0;c4<=1;c5<=1;c7<=0;c8<=0;c9<=0;c10<=0;c12<=0;c13<=0;c11<=0;c16<=1;end
			
			O: begin nextstate<=P;c0<=0;c1<=0;c2<=0;c3<=0;c4<=0;c5<=0;c7<=0;c8<=0;c9<=0;c10<=0;c11<=0;c12<=0;c13<=0;c16<=1;end
			P: begin nextstate<=Q;c0<=0;c1<=0;c2<=0;c3<=0;c4<=1;c5<=0;c7<=0;c8<=0;c9<=0;c10<=0;c11<=0;c12<=0;c13<=0;c16<=1;end
			Q: begin nextstate<=R;c0<=0;c1<=0;c2<=0;c3<=0;c4<=1;c5<=0;c7<=0;c8<=0;c9<=0;c10<=0;c11<=0;c12<=0;c13<=0;c16<=1;end
			R: begin nextstate<=T;c0<=0;c1<=0;c2<=0;c3<=0;c4<=0;c5<=0;c7<=0;c8<=0;c9<=0;c10<=0;c11<=0;c12<=1;c13<=0;c16<=1;end
			T: begin nextstate<=U;c0<=0;c1<=0;c2<=0;c3<=0;c4<=0;c5<=0;c7<=0;c8<=0;c9<=0;c10<=1;c11<=0;c12<=0;c13<=0;c16<=1;end
			U:begin nextstate<=B;c0<=0;c1<=0;c2<=0;c3<=0;c4<=0;c5<=0;c7<=0;c8<=0;c9<=0;c10<=1;c11<=1;c12<=0;c13<=0;c16<=1;end
			
			S:begin nextstate<=B;c0<=0;c1<=1;c2<=0;c3<=0;c4<=0;c5<=0;c7<=0;c8<=0;c9<=0;c10<=0;c12<=0;c13<=0;c11<=0;c16<=1;end
		endcase
endmodule		
