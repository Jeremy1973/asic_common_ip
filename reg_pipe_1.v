// reg pipe based on valid-ready handshake
// Jeremy1973
// 2021.06.21
module reg_pipe_1 #(parameter DATA_WIDTH = 16)
(
    input clk,
    input rst_n,

    // upstream
    input  us_valid,
    output us_ready,
    input  [DATA_WIDTH-1 : 0] us_data ,
    
    // downstream
    output ds_valid,
    input  ds_ready,
    output [DATA_WIDTH-1 : 0] ds_data 
);
