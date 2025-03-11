`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/11/2025 12:22:50 PM
// Design Name: 
// Module Name: tb_aes_encryption
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


module tb_aes_encryption;
    localparam DATA_BITS = 128; // Number of payload bits
    localparam CLK_PERIOD = 83; // 12 MHz signal period in ns
    localparam UART_PERIOD = 104167; // 9600 baud rate period
    localparam BYTES_PER_FRAME = DATA_BITS / 8; // 16 bytes in a frame
    
    logic clk, reset, tx, rx, aes_busy;
    logic [127:0] key, test_payload;
    logic [143:0] padded_frame;
    
        
    aes_encryption uut_aes_encyption(.clk(clk), .reset(reset), .rx(rx), .tx(tx), .aes_key(key), .busy(aes_busy));
    
    // Clock generation
    always #42 clk = ~clk;  // 12 MHz clock

    // Task to reset
    task reset_uut();
        begin
            reset = 1'b1;
            #10;  // Hold reset for 10 ns
            reset = 1'b0;
        end
    endtask
    
     // Task to send a single bit over serial line
    task send_bit(input logic bit_val);
        begin
            rx = bit_val;
            #(UART_PERIOD); // Wait for baud rate period
        end
    endtask
    
    // Takes an input byte and sends it over serial line LSB first
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
    // Data frame is sent as : {0x02, 128-bit data payload, 0x03)
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
        end
    endtask
    always @(posedge clk) begin
        if (tx == 0) begin  // Start bit detected
            #(UART_PERIOD/2);  
            for (int i = 0; i < 8; i++) begin  // Read data frame
                #(UART_PERIOD);
                $write("%b", tx);  // Print each bit
            end
            #(UART_PERIOD);  // Stop bit
            $write("\n");  // Newline after one frame
        end
    end

       // Test sequence
    initial begin
        // Initialize signals
        clk = 1'b0;
        reset = 1'b1;
        rx = 1'b1; // Idle line high
        key = 128'hCAFEBABEDEADBEEFBADC0FFEE1234567;
        padded_frame[143:136] = 8'h02;
        padded_frame[7:0] = 8'h03;

        // Reset
        #(2 * CLK_PERIOD);
        reset = 1'b0;

        // Wait for reset to propagate
        #(10 * CLK_PERIOD);

        // Send a valid frame
        test_payload = 128'h410e094115d081f5aadf5dbc65fc5b3b;
        padded_frame[135:8] = test_payload;
        $display("Sending frame: %h", test_payload);
        send_frame(test_payload);
        #(10); // Give it some time to finish
        

        /*
        // Send another frame
        test_payload = 128'h02444cafaee8e0a98c03595b2ea5b221;
        padded_frame[131:5] = test_payload;

        $display("Sending frame: %h", test_payload);
        send_frame(test_payload);
        #(10);


        test_payload = 128'h74a951fa7e96f61a964dace91fc2ad58;
        padded_frame[131:5] = test_payload;

        $display("Sending frame: %h", test_payload);
        send_frame(test_payload);
        #(10);
        */
        
        // End simulation
        wait (aes_busy == 0);
        $finish;
    end

endmodule