
module cycle_counter_tb ;

  parameter width_p = 32;
  parameter init_val_p = 0;
  
  logic clk_i;
  logic reset_i;
  wire [width_p-1:0]ctr_r_o;


// dut instance
cycle_counter u_cycle_counter (.clk_i(clk_i),
                               .reset_i(reset_i),
                               .ctr_r_o(ctr_r_o));


 // Clock generation
  always begin
    #5 clk_i = ~clk_i;
  end

  initial begin
    #10;
    reset_i = 1;
   $display("reset_i = %b, ctr_r_o = %b", reset_i, ctr_r_o);
    #20;
    reset_i = 0;
   $display("reset_i = %b, ctr_r_o = %b", reset_i, ctr_r_o);
    #20;
    $display("End of Simulation");
   $display("reset_i = %b, ctr_r_o = %b", reset_i, ctr_r_o);
    $finish;
  end

endmodule : cycle_counter_tb
