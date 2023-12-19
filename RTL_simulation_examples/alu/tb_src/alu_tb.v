 `timescale 1ns / 1ps  

module alu_tb;
 reg[7:0] A,B;
 reg[3:0] ALU_Sel;
 wire[7:0] ALU_Out;
 wire CarryOut;
 
 integer i;
 
 // dut instance
 alu test_unit(.A(A),
 	       .B(B),
 	       .ALU_Sel(ALU_Sel),
 	       .ALU_Out(ALU_Out),
 	       .CarryOut(CarryOut)
	       );


    initial begin
    // hold reset state for 100 ns.
      A = 8'h0A;
      B = 4'h02;
      ALU_Sel = 4'h0;
      
      for (i=0;i<=15;i=i+1)
      begin
       ALU_Sel = ALU_Sel + 8'h01;
       #10;
      end;
      
      A = 8'hF6;
      B = 8'h0A;
      
   $display("A = %b, B = %b, ALU_Sel = %b, ALU_Out = %b, CarryOut = %b", A, B, ALU_Sel, ALU_Out, CarryOut);
   $finish;
    end

   
endmodule : alu_tb
