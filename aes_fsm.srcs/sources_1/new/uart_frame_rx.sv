`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Written by: Martin Tran
// 
// Create Date: 01/21/2025
// 
// Module Name: uart_frame_rx
// Project Name: aes_fsm
// Target Devices: CMOD A7-35T
 
// Description: 
// Description: The uart_frame_receiver module is responsible for receiving and 
// processing UART frames that consist of a start byte (0x02), a 128-bit data payload, 
// and an end byte (0x03). The module detects the start byte, receives the payload, 
// and then checks for the end byte. Once the entire frame is received, the module 
// asserts a frame_ready signal to indicate that a complete frame is available. The 
// payload data is output as frame_data for further processing.
//
// Interface:
// Inputs:
// - input logic rx: The UART receive data signal. This signal carries the incoming serial data stream.
// - input logic clk: The clock signal for the UART communication. This is used to sample the uart_rx signal 
//   at the appropriate rate.
// - input logic reset: A reset signal to initialize the module to a known state at the beginning of the operation.
//
// Outputs:
// - output logic frame_ready: This signal is asserted when a valid frame is received and ready for processing. 
//   It remains high for one clock cycle to indicate the availability of the data.
// - output logic [127:0] frame: The 128-bit data payload received within the frame, output after the frame is fully received.
//
//////////////////////////////////////////////////////////////////////////////////


module uart_frame_rx(
    input logic clk,
    input logic reset,
    input logic rx,
    output logic [127:0] frame,
    output logic frame_ready
    );
    
    parameter START_BYTE = 8'h02;
    parameter END_BYTE = 8'h03;
    
    logic [7:0] rx_byte;
    logic byte_valid;
    logic [3:0] byte_count;
    logic [127:0] shift_reg;
    
    typedef enum logic [1:0] {
        IDLE,
        PROCESSING,
        FINISH
    } state_t;
    
    state_t state, next_state;
    
    UART_RX_CMOD_A735T uart_rx_inst (
        .clk(clk),
        .reset(reset),
        .rx(rx),
        .data(rx_byte),
        .valid(byte_valid)
    );
    
    // State machine
    always_ff @(posedge clk or posedge reset) begin
        if (reset) begin
            state <= IDLE;
        end else begin
            state <= next_state;
        end
    end
    
     // Byte counter
    always_ff @(posedge clk or posedge reset) begin
        if (reset) begin
            byte_count <= 4'd0;
        end else if (state == PROCESSING && byte_valid) begin
            byte_count <= byte_count + 4'd1;
        end else if (state == IDLE) begin
            byte_count <= 4'd0;
        end
    end
    
    always_comb begin
        next_state = state;
        
        
        case (state)
            IDLE: begin
                frame_ready = 1'b0;
                if (byte_valid && rx_byte == START_BYTE) begin
                    next_state = PROCESSING;
                end
            end
            
            PROCESSING: begin
                frame_ready = 1'b0;
                if (byte_valid) begin
                    shift_reg = {shift_reg[119:0], rx_byte};   // RX should send most significant byte first
                    if (byte_count == 15) begin
                        next_state = FINISH;
                    end 
                end
            end
            
            FINISH: begin
                if (byte_valid && rx_byte == END_BYTE) begin
                    frame = shift_reg;
                    frame_ready = 1'b1;
                    next_state = IDLE;
                end else if (byte_valid) begin
                    next_state = IDLE; // Reset if end byte is not received
                end
            end
        endcase
    end
endmodule
