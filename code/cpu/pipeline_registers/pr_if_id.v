/*******************************/
/*  RV32IM Pipeline - Group 1  */
/*  Pipeline Register (IF/ID)  */
/*******************************/

`timescale 1ns/100ps


module pr_if_id (
    CLK, RESET,
    IF_PC, IF_INSTRUCTION, 
    ID_PC, ID_INSTRUCTION
);

    input CLK, RESET;
    input [31:0] IF_PC, IF_INSTRUCTION;
    output reg [31:0] ID_PC, ID_INSTRUCTION;

    always @ (posedge CLK)
    begin
        if (RESET == 1'b1)
        begin
            ID_PC <= #0.1 32'd0;
            ID_INSTRUCTION <= #0.1 32'd0;
        end
        else
        begin
            ID_PC <= #0.1 IF_PC;
            ID_INSTRUCTION <= #0.1 IF_INSTRUCTION;
        end
    end

endmodule