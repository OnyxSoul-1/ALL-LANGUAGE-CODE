// 51 - Verilog - Hardware Logic Gate Circuit Blueprint
module arena_gate (
    input  wire clk,
    input  wire attack,
    input  wire shield,
    output reg  hit
);
    always @(posedge clk) begin
        hit <= attack & ~shield;
        $display("Verilog: Hardware Logic Gate Circuit Blueprint -> hit=%b", hit);
    end
endmodule
