module memory_system(
    input [7:0] data,
    input store,
    input [1:0] addr,
    output [7:0] memory
);
    // Demuxed data and store signals
    wire [7:0] d0, d1, d2, d3;
    wire e0, e1, e2, e3;

    // Memory output signals
    wire [7:0] q0, q1, q2, q3;

    // Demultiplex 8-bit data input
    demux_8bit demux_data (
        .in(data),
        .sel(addr),
        .out0(d0),
        .out1(d1),
        .out2(d2),
        .out3(d3)
    );

    // Demultiplex 1-bit store/enable line
    demux_1bit demux_store (
        .in(store),
        .sel(addr),
        .out0(e0),
        .out1(e1),
        .out2(e2),
        .out3(e3)
    );

    // Instantiate 4 Byte Memory Blocks
    byte_memory byte0 (.data(d0), .store(e0), .memory(q0));
    byte_memory byte1 (.data(d1), .store(e1), .memory(q1));
    byte_memory byte2 (.data(d2), .store(e2), .memory(q2));
    byte_memory byte3 (.data(d3), .store(e3), .memory(q3));

    // Multiplex selected memory block to output
    mux_8bit mux_out (
        .in0(q0),
        .in1(q1),
        .in2(q2),
        .in3(q3),
        .sel(addr),
        .out(memory)
    );

endmodule