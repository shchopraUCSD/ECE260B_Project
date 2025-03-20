module async_fifo (rd_clk,wr_clk,reset,empty,full,rd_data,fifo_rd,wr_data,fifo_wr);
	input rd_clk;
	input wr_clk;
	input reset;

	output empty;
	output full;

	parameter bw_data = 24;
	parameter DEPTH = 8;
	parameter ptr_width = 3;

	output reg [bw_data-1:0] rd_data;
	input fifo_rd;
	input [bw_data-1:0] wr_data;
	input fifo_wr;

	reg [bw_data-1:0] mem[DEPTH-1:0];

	reg [ptr_width:0] rd_ptr;
	reg [ptr_width:0] wr_ptr;

	wire [ptr_width:0] rd_ptr_gray;
	wire [ptr_width:0] wr_ptr_gray;

	wire [ptr_width:0] rd_ptr_bin;
	wire [ptr_width:0] wr_ptr_bin;

	reg [ptr_width:0] rd_ptr_meta;
	reg [ptr_width:0] wr_ptr_meta;

	reg [ptr_width:0] rd_ptr_sync;
	reg [ptr_width:0] wr_ptr_sync;

	//reg [ptr_width-1:0] i,j;
	
	//Binary to gray
	assign wr_ptr_gray = wr_ptr ^ (wr_ptr >> 1);
	assign rd_ptr_gray = rd_ptr ^ (rd_ptr >> 1);
	
	assign empty = (rd_ptr == wr_ptr_bin);
	assign full = ((wr_ptr[ptr_width] == ~rd_ptr_bin[ptr_width]) && (wr_ptr[ptr_width-1:0] == rd_ptr_bin[ptr_width-1:0]));

	always @(posedge wr_clk or posedge reset) begin
		if(reset) begin
			wr_ptr <= 0;
		end
		else if(fifo_wr && !full) begin
			mem[wr_ptr[ptr_width-1:0]] <= wr_data;
			wr_ptr <= wr_ptr + 1;
			//wr_ptr_gray <= bin_to_gray(wr_ptr); 
		end
	end	

	always @(posedge rd_clk or posedge reset) begin
		if(reset) begin
			rd_ptr <= 0;
			rd_data <= 0;
		end
		else if(fifo_rd && !empty) begin
			rd_data <= mem[rd_ptr[ptr_width-1:0]];
			rd_ptr <= rd_ptr + 1;	
			//rd_ptr_gray <= bin_to_gray(rd_ptr); 
		end
	end

	always @(posedge wr_clk or posedge reset) begin
		if(reset) begin
			rd_ptr_meta <= 0;
			rd_ptr_sync <= 0;
		end
		else begin 
			rd_ptr_meta <= rd_ptr_gray;
			rd_ptr_sync <= rd_ptr_meta;
		end
	end	

	always @(posedge rd_clk or posedge reset) begin
		if(reset) begin
			wr_ptr_meta <= 0;
			wr_ptr_sync <= 0;
		end
		else begin 
			wr_ptr_meta <= wr_ptr_gray;
			wr_ptr_sync <= wr_ptr_meta;
		end
	end
	
	//Gray to binary - wr_ptr 	
	//always @(*) begin
	assign wr_ptr_bin[ptr_width] = wr_ptr_sync[ptr_width];
	generate
		genvar i;
		for(i = ptr_width-1; i >= 0 ; i = i-1) begin
			assign wr_ptr_bin[i] = wr_ptr_bin[i+1] ^ wr_ptr_sync[i];
		end
	endgenerate	
	//end

	//Gray to binary - rd_ptr 	
	//always @(*) begin
	assign rd_ptr_bin[ptr_width] = rd_ptr_sync[ptr_width];
	generate
		genvar j;
		for(j = ptr_width-1; j >= 0 ; j = j-1) begin
			assign rd_ptr_bin[j] = rd_ptr_bin[j+1] ^ rd_ptr_sync[j];
		end	
	endgenerate
	//end

endmodule
