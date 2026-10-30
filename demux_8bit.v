// 1-to-4 Demultiplexer for 8-bit data
module demux_8bit(
    input [7:0] in,
    input [1:0] sel,
    output reg [7:0] out0,
    output reg [7:0] out1,
    output reg [7:0] out2,
    output reg [7:0] out3
);
    always @(*) begin
        {out3, out2, out1, out0} = 32'b0;
        case (sel)
            2'b00: out0 = in;
            2'b01: out1 = in;
            2'b10: out2 = in;
            2'b11: out3 = in;
        endcase
    end
endmodule