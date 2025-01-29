module alu_tb();
  reg [31:0]in1,in2;
  reg [3:0]alu_control;
  wire [31:0]alu_result;
  wire zero_flag;

  alu dut(.in1(in1),.in2(in2),.alu_control(alu_control),.alu_result(alu_result),.zero_flag(zero_flag));

       initial
    begin
        A = 23; B = 42;  ALUControl = 4'b0000;
    #20 A = 23; B = 42;  ALUControl = 4'b0001;
    #20 A = 23; B = 42;  ALUControl = 4'b0010;
    #20 A = 23; B = 42;  ALUControl = 4'b0100;
    #20 A = 23; B = 42;  ALUControl = 4'b1000;
    #20 A = 42; B = 23;  ALUControl = 4'b1000;
    #20 A = 42; B = 23;  ALUControl = 4'b0100;
    end

  initial
    $monitor("$time,%b,%b,%b,%b,%b",in1,in2,alu_control,zero_flag,alu_result);

  initial
    #150 $finish;
endmodule
