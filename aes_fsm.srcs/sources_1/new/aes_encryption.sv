`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Written by: Martin Tran 
// 
// Create Date: 02/12/2025
// Design Name: 
// Module Name: aes_encryption
// Project Name: aes_fsm
// Target Devices: CMOD A7-35T
//
// Description: 
// This Verilog file describes the AES encryption module integrated with UART communication,
// designed to receive data via UART, encrypt it using AES-128, and then transmit the encrypted
// data back over UART. The module implements a state machine to manage the flow of data through
// the system.
//
// Interface:
// Inputs:
//  - input logic clk: Clock signal 
// - input logic reset: Reset signal to initialize the module state.
// - input logic rx: The UART receive signal.
// - input logic [127:0] plaintext: 128-bit plaintext input to be encrypted.
// - input logic [127:0] aes_key: The 128-bit AES encryption key to be used for encrypting the received data.
//    
// Outputs:
// - output logic tx: UART transmit signal, used to send encrypted data back to the other device.
//
//
// Internal Signals:
// - logic [127:0] rx_frame: Stores the received data frame (128 bits) from the UART receiver.
// - logic rx_frame_ready: Signal indicating when the UART receiver has successfully received a full 128-bit frame.
// - logic [127:0] encrypted_data: Holds the 128-bit encrypted output data from the AES encryption module.
// - logic encrypt_start: Control signal to start the AES encryption process.
// - logic encrypt_done: Signal indicates when the encryption is complete.
// - logic tx_start: Controls when to start the UART transmission of encrypted data.
// - logic tx_busy: Inidicates that UART tx is currently busy.
// - logic tx_frame_ready: Indicates that the UART tx line is ready to accept a new data frame.
//
// Dependencies
//
// - `uart_frame_rx.v`: The UART receiver module used to receive 128-bit data frames.
// - `aes_core.v`: The AES-128 encryption module used to encrypt the received data.
// - `uart_frame_tx.v`: The UART transmitter module used to transmit the encrypted data.

//////////////////////////////////////////////////////////////////////////////////


module aes_encryption(
    input  logic clk,         
    input  logic reset,      
    input  logic rx,          
    output logic tx,          
    input  logic [127:0] aes_key     // AES-128 encryption key, maybe hard code this for now
    );

   // UART RX Signals
    logic [127:0] rx_frame;
    logic rx_frame_ready;
    
    // AES Encryption Signals
    logic [127:0] encrypted_data;
    logic encrypt_start, encrypt_done;
    
    // UART TX Signals
    logic tx_start, tx_busy, tx_frame_ready;
    
    
    // FSM State Machine
    typedef enum logic [1:0] {
        IDLE, RECEIVE, ENCRYPT, TRANSMIT
    } state_t;
    
    state_t state, next_state;

    // Instantiate UART Receiver
    uart_frame_rx uart_rx_inst (
        .clk(clk),
        .reset(reset),
        .rx(rx),
        .frame(rx_frame),
        .frame_ready(frame_ready)
    );

    // Instantiate AES-128 Encryption Module
    aes_core aes_core_inst (
        .clk(clk),
        .reset(reset),
        .start(encrypt_start),
        .plaintext(rx_frame),
        .key(aes_key),
        .ciphertext(encrypted_data),
        .done(encrypt_done)
    );

    // Instantiate UART Transmitter
    uart_frame_tx uart_tx_inst (
        .clk(clk),
        .reset(reset),
        .frame(encrypted_data),
        .start(tx_start),
        .tx(tx),
        .busy(tx_busy),
        .frame_ready(tx_frame_ready)
    );

    // State Machine
    always_ff @(posedge clk or posedge reset) begin
        if (reset)
            state <= IDLE;
        else
            state <= next_state;
    end

    always_comb begin
        next_state = state;
        encrypt_start = 0;
        tx_start = 0;

        case (state)
            IDLE: begin
                if (rx_frame_ready)
                    next_state = RECEIVE;
            end

            RECEIVE: begin
                next_state = ENCRYPT;
                encrypt_start = 1;
            end

            ENCRYPT: begin
                if (encrypt_done)
                    next_state = TRANSMIT;
            end

            TRANSMIT: begin
                if (!tx_busy) begin
                    tx_start = 1;
                    next_state = IDLE;
                end
            end
        endcase
    end

endmodule
