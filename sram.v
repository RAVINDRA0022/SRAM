`timescale 1ns / 1ps

module SRAM (
    input clk,                   
    input we,                    
    input [3:0] address,        
    input [3:0] write_in,       
    output reg [3:0] data_out  
);

    reg [3:0] mem [0:9];         // 10 memory locations, each 4 bits wide

    always @(posedge clk) begin
        if (we)
            mem[address] <= write_in;     
        else
            data_out <= mem[address];     
    end

endmodule
