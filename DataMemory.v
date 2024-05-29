module DataMemory(memAdr, writeData, memWrite, clk, readData);
    parameter N = 32;
    input [31:0] memAdr, writeData;
    input memWrite, clk;

    output [N-1:0] readData;

    reg [7:0] dataMemory [63:0]; 

    wire [31:0] adr;
    assign adr = {memAdr[31:2], 2'b00};

integer i;
	initial begin
		for (i=0; i<=63; i=i+1)
				dataMemory[i] <= 8'd00;
	end

    always @(posedge clk) begin
        if(memWrite)
            {dataMemory[adr + 3], dataMemory[adr + 2], 
                dataMemory[adr + 1], dataMemory[adr]} <= writeData;
    end

    assign readData = {dataMemory[adr + 3], dataMemory[adr + 2], 
                        dataMemory[adr + 1], dataMemory[adr]};

endmodule
