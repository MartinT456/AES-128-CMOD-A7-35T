`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/22/2025
// 
// Module Name: uart_frame_tx
// Project Name: aes_fsm
// Target Devices: CMOD A7-35T
//
// Description: 
// 
//////////////////////////////////////////////////////////////////////////////////


module uart_frame_tx(
    input logic clk,
    input logic reset,
    input logic [127:0] frame, // 128-but input data to transmit
    input logic start,         // TX start signal
    output logic tx,
    output logic busy,
    output logic frame_ready
    );
    
    parameter int BAUD_RATE = 9600;
    parameter int CLK_FREQ = 12_000_000;
    
    logic [3:0] byte_index;          // CConter for current byte being transmitted
    logic       tx_start;            
    logic       tx_busy;             
    logic [7:0] tx_data;             // Data to send to the UART TX module
    
    typedef enum logic [2:0] {
        IDLE,                        // Waiting for start signal
        START_BYTE,
        PROCESSING,                  // Sending bytes
        END_BYTE,
        FINISH,                       // Frame transmission completed
        WAIT_UART                     // Wait for current byte to finish transmitting and tx line to clear
    } state_t;
    
    state_t state, next_state, wait_state;
    
    // UART TX Instantiation
    UART_TX_CMOD_A735T #(
        .BAUD_RATE(BAUD_RATE),
        .CLK_FREQ(CLK_FREQ)
    ) uart_tx_inst (
        .clk(clk),
        .reset(reset),
        .data(tx_data),
        .start(tx_start),
        .tx(tx),
        .busy(tx_busy)
    );
    
    // Logic for state machine
    always_ff @(posedge clk or posedge reset) begin
        if (reset) begin
            state <= IDLE;
            byte_index <= 4'd0;
        end else begin
            state <= next_state;
            if (state == PROCESSING && !tx_busy) begin
                byte_index <= byte_index + 1;          
            end else if (state == IDLE) begin
                byte_index <= 4'd0; // Reset byte index
            end
        end
    end
    
    always_comb begin
        next_state = state;
        frame_ready = 1'b0;
        tx_start = 1'b0;
        busy = 1'b0;

        case (state)
            IDLE: begin
                busy = 1'b0;
                if (start) begin
                    next_state = START_BYTE;
                    busy = 1'b1;
                end
            end
            
            START_BYTE: begin
                busy = 1'b1;
                tx_data = 8'h02;
                tx_start = 1'b1;
                if (!tx_busy) begin
                    wait_state = state;
                    next_state = WAIT_UART;
                end
            end
            
            PROCESSING: begin
                tx_data  = frame[127 - 8*byte_index -: 8];
                tx_start = 1'b1; // Start transmitting when UART is ready
                if (!tx_busy) begin
                    if(byte_index == 5'd15) begin
                        next_state = END_BYTE;  // Move to send end byte to indicate end of frame
                    end else begin
                        wait_state = state;
                        next_state = WAIT_UART;
                    end
                end
            end
            
            END_BYTE: begin
                tx_data  = 8'h03;
                tx_start = 1'b1;
                if (!tx_busy) begin
                    wait_state = state;
                    next_state = WAIT_UART;
                end            
            end

            FINISH: begin
                frame_ready = 1'b1;
                busy = 1'b0;
                if (!start) begin
                    next_state = IDLE;
                end
            end
            
            WAIT_UART: begin
                tx_start = 1'b0;
                if (!tx_busy) begin
                    case (wait_state)
                        START_BYTE: next_state = PROCESSING;
                        PROCESSING: next_state = PROCESSING;
                        END_BYTE:   next_state = FINISH;
                        default:    next_state = IDLE;
                    endcase
                end
            end

        endcase
    end
    

endmodule
