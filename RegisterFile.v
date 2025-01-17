module RegisterFile(clk, regWrite,
                    readRegister1, readRegister2,
                    writeRegister, writeData,
                    readData1, readData2);
                    
    parameter WordLen = 32;
    parameter WordCount = 5;

    input regWrite, clk;
    input [WordCount-1:0] readRegister1, readRegister2, writeRegister;
    input [WordLen-1:0] writeData;
    
    output reg [WordLen-1:0] readData1, readData2;

    reg [WordLen-1:0] registerFile [WordLen-1:0];

   initial 
        begin
 	registerFile[0] = 32'd0;
 	registerFile[1] = 32'd0;
 	registerFile[2] = 32'd5;
 	registerFile[3] = 32'd12;
 	registerFile[4] = 32'd3;
	end
    always @(negedge clk) begin
        if (regWrite & (|writeRegister))
            registerFile[writeRegister] <= writeData;
    end

    always @(negedge clk) begin
        readData1 <= registerFile[readRegister1];
        readData2 <= registerFile[readRegister2];
    end

endmodule

