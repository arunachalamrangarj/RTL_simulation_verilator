module half_addr (sum,carry,a,b);
  output sum, carry;
  input a, b;
  assign sum = a ^ b; // assigning sum
  assign carry = a & b; // assigning carry
endmodule : half_addr