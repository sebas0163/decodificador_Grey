`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: TEC
// Engineer: Joseph Jimenez Zu�iga
// 
// Create Date: 09/30/2022 02:18:48 AM
// Design Name: Submodulo 3
// Module Name: Display
// Project Name: Decodificador_Gray
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


module Display(
    input wire [3:0] inputs,
    output reg [6:0] segments,
    output wire [7:0] anodo,
    output wire dp
    );
    assign dp =1;
    assign anodo = 8'b11111110;
    
    always@(*)
    begin
        case(inputs)
            0: segments = 7'b1111110;
            1: segments = 7'b0110000;
            2: segments = 7'b1101101;
            3: segments = 7'b1111001;
            4: segments = 7'b0110011;
            5: segments = 7'b1011011;
            6: segments = 7'b1011111;
            7: segments = 7'b1110000;
            8: segments = 7'b1101111;
            9: segments = 7'b1111011;
            'hA: segments = 7'b1110111;
            'hB: segments = 7'b1101111;
            'hC: segments = 7'b1001110;
            'hD: segments = 7'b1111110;
            'hE: segments = 7'b1001111;
            'hF: segments = 7'b1000111;
            default: segments = 7'b0000000;
        endcase
    end
endmodule