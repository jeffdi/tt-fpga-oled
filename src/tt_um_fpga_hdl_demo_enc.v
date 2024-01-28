`default_nettype none

module tt_um_fpga_hdl_demo_enc (
    input  wire [7:0] ui_in,    // Dedicated inputs - connected to the input switches
    output wire [7:0] uo_out,   // Dedicated outputs - connected to the 7 segment display
    input  wire       ena,      // will go high when the design is enabled
    input  wire       clk,      // clock
    input  wire       rst_n     // reset_n - low to reset
);

PmodENC enc (
    .clk(clk),
    .JA(ui_in[3:0]),
    .an(uo_out[7]),
    .seg(uo_out[6:0]),
    .Led(uo_out[7])
    );

endmodule
