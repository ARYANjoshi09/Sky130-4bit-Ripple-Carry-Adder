`timescale 1ns/1ps
module tb_rca_4bit;
    reg [3:0] A;
    reg [3:0] B;
    reg cin;
    wire [3:0] S;
    wire cout;

    //DUT : module_name uut (mapping)

     rca_4bit uut (.A(A),.B(B),.cin(cin),.S(S),.cout(cout));

     initial begin
     $dumpfile("adderwaves.vcd");
     $dumpvars(0, tb_rca_4bit);

     //Test 1 : we have 4bit input so we can add min 0 to max 15;
     // 10 + 3 = 13
     A = 4'd10; B= 4'd3; cin = 0; #10;

     //Test 2: 5 + 3
     A = 4'd5; B = 4'd3; cin = 0; #10;

     //Test 3: 
     A = 4'd15; B = 4'd15; cin = 1; #10;

     $display("Simulation Finished, Open GTKWave to see results");
     $finish;

    end
  endmodule
