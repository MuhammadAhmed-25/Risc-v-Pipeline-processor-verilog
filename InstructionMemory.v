module InstructionMemory(pc, instruction);

    input [31:0] pc;

    output [31:0] instruction;

    reg [7:0] instructionMemory [63:0]; 

    wire [31:0] adr;
    assign adr = {pc[31:2], 2'b00}; 
initial begin
instructionMemory[0] = 8'b11111111;
instructionMemory[1] = 8'b01110001;
instructionMemory[2] = 8'b10000011;
instructionMemory[3] = 8'b10010011;

instructionMemory[4] = 8'b00000000;
instructionMemory[5] = 8'b01000000;
instructionMemory[6] = 8'b00100110;
instructionMemory[7] = 8'b00100011;

instructionMemory[8] = 8'b00000000;
instructionMemory[9] = 8'b00100011;
instructionMemory[10] = 8'b11100010;
instructionMemory[11] = 8'b00110011;

instructionMemory[12] = 8'b00000000;
instructionMemory[13] = 8'b01000001;
instructionMemory[14] = 8'b11110010;
instructionMemory[15] = 8'b10110011;

instructionMemory[16] = 8'b00000000;
instructionMemory[17] = 8'b01110010;
instructionMemory[18] = 8'b10001010;
instructionMemory[19] = 8'b01100011;

instructionMemory[20] = 8'b00000000;
instructionMemory[21] = 8'b11000000;
instructionMemory[22] = 8'b00100001;
instructionMemory[23] = 8'b10000011;

instructionMemory[24] = 8'b00000000;
instructionMemory[25] = 8'b00110010;
instructionMemory[26] = 8'b00100010;
instructionMemory[27] = 8'b00110011;

instructionMemory[28] = 8'b00000000;
instructionMemory[29] = 8'b00000010;
instructionMemory[30] = 8'b00000010;
instructionMemory[31] = 8'b01100011;

instructionMemory[32] = 8'b00000000;
instructionMemory[33] = 8'b00100001;
instructionMemory[34] = 8'b00000000;
instructionMemory[35] = 8'b01100011;

instructionMemory[36] = 8'b00000000;
instructionMemory[37] = 8'b00100010;
instructionMemory[38] = 8'b00000001;
instructionMemory[39] = 8'b10110011;

end
    assign instruction = {instructionMemory[adr], instructionMemory[adr + 1], 
                            instructionMemory[adr + 2], instructionMemory[adr + 3]};

endmodule
