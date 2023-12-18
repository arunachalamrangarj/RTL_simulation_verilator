module half_addr_tb ();
  
  reg  a, b;
  wire  sum, carry;
  
  // dut instance
  half_addr u_half_addr(.sum(sum),
                .carry(carry),
		.a(a),
		.b(b));
  
  initial
    begin
  a = 0; b =0;
  #5; a = 0; b =1;
   $display("a = %b, b = %b, sum = %b, carry = %b", a, b, sum, carry);
  #5; a = 1; b =0;
   $display("a = %b, b = %b, sum = %b, carry = %b", a, b, sum, carry);
  #5; a = 1; b =1;
   $display("a = %b, b = %b, sum = %b, carry = %b", a, b, sum, carry);
  #5;

   $display("a = %b, b = %b, sum = %b, carry = %b", a, b, sum, carry);

   $finish;
    end

endmodule
