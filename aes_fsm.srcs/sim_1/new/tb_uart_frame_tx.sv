`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/22/2025
// Design Name: 
// Module Name: tx_uart_frame_tx
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_uart_frame_tx;

    // Testbench parameters
    parameter BAUD_RATE = 9600;
    parameter CLK_FREQ  = 12_000_000;

    // Testbench signals
    logic        clk;
    logic        reset;
    logic        start;
    logic [127:0] frame, frame_out;
    logic        tx, busy, frame_ready, frame_out_ready;
    

    // Clock generation (12 MHz)
    always #42 clk = ~clk;

    // DUT instantiation
    uart_frame_tx #(
        .BAUD_RATE(BAUD_RATE),
        .CLK_FREQ(CLK_FREQ)
    ) uut (
        .clk(clk),
        .reset(reset),
        .frame(frame),
        .start(start),
        .tx(tx),
        .busy(busy),
        .frame_ready(frame_ready)
    );
    
    uart_frame_rx frame_rx (
        .clk(clk),
        .reset(reset),
        .rx(tx),
        .frame(frame_out),
        .frame_ready(frame_out_ready)
    );

    // Testbench logic
    initial begin
        // Initialize signals
        clk = 0;
        reset = 1;
        start = 0;
        frame = 128'hCAFEBABEDEADBEEFBADC0FFEE1234567;

        // Reset
        #50;
        reset = 0;
        #50;

        // Start transmission
        start = 1;
        #50
        // Wait for transmission to complete
        wait (busy == 1); // Wait for busy to go high
        start = 0;
        wait (busy == 0); // Wait for busy to go low

        wait(frame_out_ready);
        
        $display("Frame TX: %h, Frame RX = %h", frame, frame_out);

        // End simulation
        #100;
        $finish;
    end


endmodule