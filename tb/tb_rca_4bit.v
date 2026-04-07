`timescale 1ns/1ps
module tb_rca_4bit;
    reg [3:0] A;
    reg [3:0] B;
    reg cin;
    wire [3:0] S;
    wire cout;

    //DUT : module_name uut (mapping)

     rca_4bit uut (.A(A),.B(B),.cin(cin),.S(S),.cout(cout));

integer i;
initial begin
    for (i = 0; i < 512; i = i + 1) begin
        {cin, A, B} = i; #10;
        if ({cout, S} !== (A + B + cin))
            $display("FAIL: A=%0d B=%0d cin=%0d | Got=%0d Expected=%0d",
                      A, B, cin, {cout,S}, A+B+cin);
    end
    $display("All tests passed.");
    $finish;
end

    
  endmodule
