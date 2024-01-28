`default_nettype none

module tt_um_fpga_hdl_demo_oled (
    input  wire [7:0] ui_in,    // Dedicated inputs - connected to the input switches
    output wire [7:0] uo_out,   // Dedicated outputs - connected to the 7 segment display
    input  wire       ena,      // will go high when the design is enabled
    input  wire       clk,      // clock
    input  wire       rst_n     // reset_n - low to reset
);

    assign uo_out[2] = 1'b1;

    PmodOLEDCtrl oled (
        .CLK(clk),
        .RST(~rst_n),
        .CS(uo_out[0]),
        .SCLK(uo_out[3]),
        .SDIN(uo_out[1]),
        .DC(uo_out[4]),
        .RES(uo_out[5]),
        .VBAT(uo_out[6]),
        .VDD(uo_out[7])
    );

endmodule
