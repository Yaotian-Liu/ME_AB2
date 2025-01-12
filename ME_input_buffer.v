module ME_input_buffer (
    input             clk     ,
    input             rst     ,
    input             en_i    ,
    input      [31:0] cur_in_i,
    input      [63:0] ref_in_i,
    output reg        en_o    ,
    output reg [31:0] cur_in_o,
    output reg [63:0] ref_in_o
);
    always @(posedge clk) begin
        if (rst) begin
            en_o     <= 0;
            cur_in_o <= 0;
            ref_in_o <= 0;
        end
        else begin
            en_o     <= en_i;
            cur_in_o <= cur_in_i;
            ref_in_o <= ref_in_i;
        end
    end

endmodule