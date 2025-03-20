module sfp_custom_div ( 
    input wire clk,              // clock
    input wire rst,              // reset
    input wire start,            // start calculation
    output reg busy,             // calculation in progress
    output reg valid,            // result is valid
    input wire [19:0] a,    // dividend (numerator)
    input wire [19:0] b,    // divisor (denominator)
    output reg [19:0] val  // result value: quotient
);

// // radix-4 implementation, should take 10 cycles
//     reg [19:0] b1;             // copy of divisor
//     reg [19:0] quo, quo_next;  // intermediate quotient
//     reg [20:0] acc, acc_next;    // accumulator (1 bit wider)
//     reg [$clog2(20)-1:0] i;      // iteration counter
    
//     wire [19:0] b1_t;
//     assign b1_t = 3*b1; 

//     // division algorithm iteration
//     always @(*) begin
//         if (acc >= {1'b0, b1_t}) begin
//             acc_next = acc - b1_t;
//             {acc_next, quo_next} = {acc_next[19:0], quo, 2'b11};
//         end else if (acc >= {1'b0, (b1 << 1)}) begin
//             acc_next = acc - 2*b1;
//             {acc_next, quo_next} = {acc_next[19:0], quo, 2'b10};
//         end else if (acc >= {1'b0, b1}) begin
//             acc_next = acc - b1;
//             {acc_next, quo_next} = {acc_next[19:0], quo, 2'b01};
//         end else begin
//             {acc_next, quo_next} = {acc, quo} << 2;
//         end
//     end

//     // calculation control
//     always @(posedge clk) begin
        
//         if (rst) begin
//             busy <= 0;
//             valid <= 0;
//             val <= 0;
//         end else begin
//             if (start) begin
//                 valid <= 0;
//                 i <= 0;
//                 if (b == 0) begin  // catch divide by zero
//                     busy <= 0;
//                 end else begin
//                     busy <= 1;
//                     b1 <= b;
//                     {acc, quo} <= {{20{1'b0}}, a, 2'b0};  // initialize calculation
//                 end
//             end else if (busy) begin
//                 if (i == 9) begin  // we're done
//                     busy <= 0;
//                     valid <= 1;
//                     val <= quo_next;
//                 end else begin
//                     i <= i + 1;
//                     acc <= acc_next;
//                     quo <= quo_next;
//                 end
//             end
//         end
//     end

// radix-2 implementation, takes 20 cycles

    reg [19:0] b1;              // copy of divisor
    reg [19:0] quo, quo_next;             // intermediate quotient
    reg [20:0] acc, acc_next;             // accumulator (1 bit wider)
    reg [$clog2(20)-1:0] i;     // iteration counter

    // division algorithm iteration
    always @(*) begin
        if (acc >= {1'b0, b1}) begin
            acc_next = acc - b1;
            {acc_next, quo_next} = {acc_next[19:0], quo, 1'b1};
        end else begin
            {acc_next, quo_next} = {acc, quo} << 1;
        end
    end

    // calculation control
    always @(posedge clk) begin
        
        if (rst) begin
            busy <= 0;
            valid <= 0;
            val <= 0;
            b1  <= 0;
            acc <= 0;
            quo <= 0;
        end else begin
            if (start) begin
                valid <= 0;
                i <= 0;
                if (b == 0) begin  // catch divide by zero
                    busy <= 0;
                end else begin
                    busy <= 1;
                    b1 <= b;
                    {acc, quo} <= {{20{1'b0}}, a, 1'b0};  // initialize calculation
                end
            end else if (busy) begin
                if (i == 19) begin  // we're done
                    busy <= 0;
                    valid <= 1;
                    val <= quo_next;
                end else begin
                    i <= i + 1;
                    acc <= acc_next;
                    quo <= quo_next;
                end
            end
        end
    end
endmodule
