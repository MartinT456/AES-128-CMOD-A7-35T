`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Written by: Martin Tran
// 
// Create Date: 01/21/2025
//
// Module Name: tb_uart_frame_rx
// Project Name: aes_fsm
// 
// Description: 
// The testbench is designed to verify the functionality 
// of the UART frame receiver module. This testbench simulates the transmission of
// UART data frames with a start byte (0x02) and an end byte (0x03) surrounding a 
// 128-bit data payload, as specified in the uart_frame_rx module. The testbench provides 
// various test cases to simulate different scenarios for the frame receiver and 
// ensures that the module correctly detects and processes the frames.
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_uart_frame_rx;


    localparam DATA_BITS = 128; // Number of payload bits
    localparam CLK_PERIOD = 83; // 12 MHz signal period in ns
    localparam UART_PERIOD = 104167; // 9600 baud rate period
    localparam BYTES_PER_FRAME = DATA_BITS / 8; // 16 bytes in a frame
    
    // Testbench signals
    logic clk;
    logic reset;
    logic data_in;           // Serial data signal
    logic frame_ready;
    logic [DATA_BITS-1:0] frame, test_payload;
    logic [7:0] byte_i;
    
    uart_frame_rx uut (
        .clk(clk),
        .reset(reset),
        .rx(data_in),
        .frame(frame),
        .frame_ready(frame_ready)
    );

    // Clock generation
    always #42 clk = ~clk;

    // Task to send a single bit over serial line
    task send_bit(input logic bit_val);
        begin
            data_in = bit_val;
            #(UART_PERIOD); // Wait for baud rate period
        end
    endtask
    
    task send_byte(input logic [7:0] byte_in);
        begin
            send_bit(1'b0); //Start bit
            // Send LSB of byte first
            for(int i = 0; i < 8; i++) begin   
                send_bit(byte_in[i]);
            end
            send_bit(1'b1); //Stop bit
        end    
    endtask

    // Task to send a full frame
    // Data frame is sent as : {0x02, 128 bit data payload, 0x03)
    task send_frame(input logic [DATA_BITS-1:0] payload);
        integer i;
        begin
            
            // Send start delimiter (0x02)
            send_byte(8'h02);

            // Send payload data, most significant byte first
            for (i = BYTES_PER_FRAME-1; i >= 0; i = i - 1) begin
                send_byte(payload[i*8+:8]);
            end

            // Send end delimiter (0x03)
            send_byte(8'h03);
            #(CLK_PERIOD); // Wait for one additional clock period
        end
    endtask
    
    task display_test_result(
        input [127:0] payload_in,
        input [127:0] frame_out
    );
        if (frame_out === test_payload) begin
            $display("PASS: Input = %h, Output = %h", payload_in, frame_out);
        end else begin
            $display("FAIL: Input = %h, Output = %h", payload_in, frame_out);
        end
    endtask

    // Test sequence
    initial begin
        // Initialize signals
        clk = 1'b0;
        reset = 1'b1;
        data_in = 1'b1; // Idle line high

        // Reset
        #(2 * CLK_PERIOD);
        reset = 1'b0;

        // Wait for reset to propagate
        #(10 * CLK_PERIOD);

        // Send a valid frame
        test_payload = 128'h410e094115d081f5aadf5dbc65fc5b3b;
        $display("Sending frame: %h", test_payload);
        send_frame(test_payload);
        #(10); // Give it some time to finish
        display_test_result(test_payload, frame);
        
        // Send another frame
        test_payload = 128'h02444cafaee8e0a98c03595b2ea5b221;
        $display("Sending frame: %h", test_payload);
        send_frame(test_payload);
        #(10);
        display_test_result(test_payload, frame);;


        test_payload = 128'h74a951fa7e96f61a964dace91fc2ad58;
        $display("Sending frame: %h", test_payload);
        send_frame(test_payload);
        #(10);
        display_test_result(test_payload, frame);
        
        // End simulation
        #(5 * CLK_PERIOD);
        $finish;
    end

endmodule

