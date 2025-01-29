module alu_tb();
  reg [31:0]in1,in2;
  reg [3:0]alu_control;
  wire [31:0]alu_result;
  wire zero_flag;

  alu
