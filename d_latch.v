module d_latch(
    input D,
    input E,
    output reg Q,
    output NotQ
);
    // Asynchronous behavior sequential to E and D
    always @(D, E) begin
        if (E) begin
            Q <= D;
        end
    end

    // Continuous assignment for inverted output
    assign NotQ = ~Q;

endmodule