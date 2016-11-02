`timescale 1ns / 1ps

module ZedCamTest_top(
    input sysclk,
    input reset, // reset 
    input cam_rst, // button for camera RESET_BAR
    input trigger, // button for camera trigger
    input SW_camSelect, // switch for camera output enable
    input SW_read_fifo,
    output cam_sysclk, // sysclk out to camera
    output cam_reset, // reset_bar out to camera
    output cam_trigger, // trigger out to camera
    output i2c_ready, // LED indicator for i2c bus ready
    input [7:0] FIFO_DATA, // DO[7:0] from AL422b fifo
    output FIFO_OE1, // read enable to fifo (active low)
    output FIFO_RRST1, // read reset to fifo (active low)
    output FIFO_OE2, // read enable to fifo (active low)
    output FIFO_RRST2, // read reset to fifo (active low)
    output FIFO_RCK, // rck to fifo (1MHz)
    output [7:0] rgb, // values on vga color pins
    output HS, // horizontal sync (to VGA port)
    output VS, // vertical sync (to VGA port)
    inout [53:0] MIO,
    inout PS_PORB,
    inout PS_PS_SRSTB,
    inout PS_CLK
);
    
wire clk_20Hz, clk_10kHz, clk_1MHz, clk_5MHz, clk_24MHz, clk_25MHz;

clk_wiz_0 mmcm(// Clock in ports
      .clk_in1(sysclk),
      // Clock out ports
      .clk_out1(clk_25MHz),
      .clk_out2(clk_24MHz),
      .clk_out3(clk_5MHz)
     );
     
// further divide the dcm clock to other freqs	 
clk_divs clks(
      .reset(reset), // synchronous reset
      .clk_24M(clk_24MHz), // 24MHz camera SCLK
      .clk_fifo(clk_1MHz), // 1MHz FIFO RCK
      .clk_debounce(clk_20Hz), // 20Hz clock pulse for debouncing stuff
      .anodes(clk_10kHz) // 10k 7Seg anode driver
     );
     
assign cam_sysclk = clk_24MHz;
assign FIFO_RCK = clk_5MHz;

// camera initialization sequence
reg [11:0] init_count = 12'h000;
always @(posedge clk_24MHz) // cam sysclk before ODDR2
begin
	if (cam_rst) // if cam_rst is pressed, redo the initialization sequence
	begin
		init_count <= 12'h000;
	end
	else if(init_count < 2500) // keep cam_rst asserted for at least 20 cam_sysclk cycles - I use 30 since it's the minimum time for the i2c bus to be ready
		init_count <= init_count + 1'b1;
end
assign cam_reset = (init_count >= 20);
assign i2c_ready = (init_count >= 30);

wire read_en;
debounce fifoRead_en(
    .clk(clk_20Hz),
    .btn(SW_read_fifo),
    .btn_val(read_en)
    );

wire cam_sel;
debounce camSelector(
    .clk(clk_20Hz),
    .btn(SW_camSelect),
    .btn_val(cam_sel)
    );

wire get_data;
debounce trig(
    .clk(clk_20Hz),
    .btn(trigger),
    .btn_val(get_data)
    );

wire fifo_rden, fifo_read_en, fifo_reset; //also connected to fifo_buffer
assign FIFO_OE1 = cam_sel == 1'b0 ? fifo_rden : 1'b1;
assign FIFO_RRST1 = cam_sel == 1'b0 ? fifo_reset : 1'b1;
assign FIFO_OE2 = cam_sel == 1'b1 ? fifo_rden : 1'b1;
assign FIFO_RRST2 = cam_sel == 1'b1 ? fifo_reset : 1'b1;

wire [7:0] pixelVal; // value of a camera pixel from fpga line buffer -> microblaze
wire [10:0] hcount; // pixel number on current line
wire [10:0] vcount; // number of current line
wire blank;

vga_controller_640_60 vgaOut(
	.rst(reset), 
	.pixel_clk(clk_25MHz),
	.HS(HS),
	.VS(VS),
	.hcount(hcount),
	.vcount(vcount),
	.blank(blank) 
);

imgbuf fifo_buffer(
    .get_data(get_data),
	.href(hcount),
	.vref(vcount),
	.blank(blank),
	.fifo_data(FIFO_DATA), // 8 bit data in from fifo
	.fifo_rck(clk_5MHz), // 1MHz clock signal generated by FPGA
	.vga_clk(clk_25MHz),
	.fifo_rrst(fifo_reset), // fifo read reset (reset read addr pointer to 0)
	.fifo_oe(fifo_rden), // fifo output enable (allow for addr pointer to increment)
	.pixel_value(rgb), // 8-bit pixel value from internal buffer
	//.current_line(),
	.trigger(cam_trigger)
   );
   
   processing_system7_0 ps (
     .M_AXI_GP0_ARVALID(),  // output wire M_AXI_GP0_ARVALID
     .M_AXI_GP0_AWVALID(),  // output wire M_AXI_GP0_AWVALID
     .M_AXI_GP0_BREADY(),    // output wire M_AXI_GP0_BREADY
     .M_AXI_GP0_RREADY(),    // output wire M_AXI_GP0_RREADY
     .M_AXI_GP0_WLAST(),      // output wire M_AXI_GP0_WLAST
     .M_AXI_GP0_WVALID(),    // output wire M_AXI_GP0_WVALID
     .M_AXI_GP0_ARID(),        // output wire [11 : 0] M_AXI_GP0_ARID
     .M_AXI_GP0_AWID(),        // output wire [11 : 0] M_AXI_GP0_AWID
     .M_AXI_GP0_WID(),          // output wire [11 : 0] M_AXI_GP0_WID
     .M_AXI_GP0_ARBURST(),  // output wire [1 : 0] M_AXI_GP0_ARBURST
     .M_AXI_GP0_ARLOCK(),    // output wire [1 : 0] M_AXI_GP0_ARLOCK
     .M_AXI_GP0_ARSIZE(),    // output wire [2 : 0] M_AXI_GP0_ARSIZE
     .M_AXI_GP0_AWBURST(),  // output wire [1 : 0] M_AXI_GP0_AWBURST
     .M_AXI_GP0_AWLOCK(),    // output wire [1 : 0] M_AXI_GP0_AWLOCK
     .M_AXI_GP0_AWSIZE(),    // output wire [2 : 0] M_AXI_GP0_AWSIZE
     .M_AXI_GP0_ARPROT(),    // output wire [2 : 0] M_AXI_GP0_ARPROT
     .M_AXI_GP0_AWPROT(),    // output wire [2 : 0] M_AXI_GP0_AWPROT
     .M_AXI_GP0_ARADDR(),    // output wire [31 : 0] M_AXI_GP0_ARADDR
     .M_AXI_GP0_AWADDR(),    // output wire [31 : 0] M_AXI_GP0_AWADDR
     .M_AXI_GP0_WDATA(),      // output wire [31 : 0] M_AXI_GP0_WDATA
     .M_AXI_GP0_ARCACHE(),  // output wire [3 : 0] M_AXI_GP0_ARCACHE
     .M_AXI_GP0_ARLEN(),      // output wire [3 : 0] M_AXI_GP0_ARLEN
     .M_AXI_GP0_ARQOS(),      // output wire [3 : 0] M_AXI_GP0_ARQOS
     .M_AXI_GP0_AWCACHE(),  // output wire [3 : 0] M_AXI_GP0_AWCACHE
     .M_AXI_GP0_AWLEN(),      // output wire [3 : 0] M_AXI_GP0_AWLEN
     .M_AXI_GP0_AWQOS(),      // output wire [3 : 0] M_AXI_GP0_AWQOS
     .M_AXI_GP0_WSTRB(),      // output wire [3 : 0] M_AXI_GP0_WSTRB
     .M_AXI_GP0_ACLK(),        // input wire M_AXI_GP0_ACLK
     .M_AXI_GP0_ARREADY(),  // input wire M_AXI_GP0_ARREADY
     .M_AXI_GP0_AWREADY(),  // input wire M_AXI_GP0_AWREADY
     .M_AXI_GP0_BVALID(),    // input wire M_AXI_GP0_BVALID
     .M_AXI_GP0_RLAST(),      // input wire M_AXI_GP0_RLAST
     .M_AXI_GP0_RVALID(),    // input wire M_AXI_GP0_RVALID
     .M_AXI_GP0_WREADY(),    // input wire M_AXI_GP0_WREADY
     .M_AXI_GP0_BID(),          // input wire [11 : 0] M_AXI_GP0_BID
     .M_AXI_GP0_RID(),          // input wire [11 : 0] M_AXI_GP0_RID
     .M_AXI_GP0_BRESP(),      // input wire [1 : 0] M_AXI_GP0_BRESP
     .M_AXI_GP0_RRESP(),      // input wire [1 : 0] M_AXI_GP0_RRESP
     .M_AXI_GP0_RDATA(),      // input wire [31 : 0] M_AXI_GP0_RDATA
     .S_AXI_GP0_ARREADY(),  // output wire S_AXI_GP0_ARREADY
     .S_AXI_GP0_AWREADY(),  // output wire S_AXI_GP0_AWREADY
     .S_AXI_GP0_BVALID(),    // output wire S_AXI_GP0_BVALID
     .S_AXI_GP0_RLAST(),      // output wire S_AXI_GP0_RLAST
     .S_AXI_GP0_RVALID(),    // output wire S_AXI_GP0_RVALID
     .S_AXI_GP0_WREADY(),    // output wire S_AXI_GP0_WREADY
     .S_AXI_GP0_BRESP(),      // output wire [1 : 0] S_AXI_GP0_BRESP
     .S_AXI_GP0_RRESP(),      // output wire [1 : 0] S_AXI_GP0_RRESP
     .S_AXI_GP0_RDATA(),      // output wire [31 : 0] S_AXI_GP0_RDATA
     .S_AXI_GP0_BID(),          // output wire [5 : 0] S_AXI_GP0_BID
     .S_AXI_GP0_RID(),          // output wire [5 : 0] S_AXI_GP0_RID
     .S_AXI_GP0_ACLK(),        // input wire S_AXI_GP0_ACLK
     .S_AXI_GP0_ARVALID(),  // input wire S_AXI_GP0_ARVALID
     .S_AXI_GP0_AWVALID(),  // input wire S_AXI_GP0_AWVALID
     .S_AXI_GP0_BREADY(),    // input wire S_AXI_GP0_BREADY
     .S_AXI_GP0_RREADY(),    // input wire S_AXI_GP0_RREADY
     .S_AXI_GP0_WLAST(),      // input wire S_AXI_GP0_WLAST
     .S_AXI_GP0_WVALID(),    // input wire S_AXI_GP0_WVALID
     .S_AXI_GP0_ARBURST(),  // input wire [1 : 0] S_AXI_GP0_ARBURST
     .S_AXI_GP0_ARLOCK(),    // input wire [1 : 0] S_AXI_GP0_ARLOCK
     .S_AXI_GP0_ARSIZE(),    // input wire [2 : 0] S_AXI_GP0_ARSIZE
     .S_AXI_GP0_AWBURST(),  // input wire [1 : 0] S_AXI_GP0_AWBURST
     .S_AXI_GP0_AWLOCK(),    // input wire [1 : 0] S_AXI_GP0_AWLOCK
     .S_AXI_GP0_AWSIZE(),    // input wire [2 : 0] S_AXI_GP0_AWSIZE
     .S_AXI_GP0_ARPROT(),    // input wire [2 : 0] S_AXI_GP0_ARPROT
     .S_AXI_GP0_AWPROT(),    // input wire [2 : 0] S_AXI_GP0_AWPROT
     .S_AXI_GP0_ARADDR(),    // input wire [31 : 0] S_AXI_GP0_ARADDR
     .S_AXI_GP0_AWADDR(),    // input wire [31 : 0] S_AXI_GP0_AWADDR
     .S_AXI_GP0_WDATA(),      // input wire [31 : 0] S_AXI_GP0_WDATA
     .S_AXI_GP0_ARCACHE(),  // input wire [3 : 0] S_AXI_GP0_ARCACHE
     .S_AXI_GP0_ARLEN(),      // input wire [3 : 0] S_AXI_GP0_ARLEN
     .S_AXI_GP0_ARQOS(),      // input wire [3 : 0] S_AXI_GP0_ARQOS
     .S_AXI_GP0_AWCACHE(),  // input wire [3 : 0] S_AXI_GP0_AWCACHE
     .S_AXI_GP0_AWLEN(),      // input wire [3 : 0] S_AXI_GP0_AWLEN
     .S_AXI_GP0_AWQOS(),      // input wire [3 : 0] S_AXI_GP0_AWQOS
     .S_AXI_GP0_WSTRB(),      // input wire [3 : 0] S_AXI_GP0_WSTRB
     .S_AXI_GP0_ARID(),        // input wire [5 : 0] S_AXI_GP0_ARID
     .S_AXI_GP0_AWID(),        // input wire [5 : 0] S_AXI_GP0_AWID
     .S_AXI_GP0_WID(),          // input wire [5 : 0] S_AXI_GP0_WID
     .FCLK_CLK0(),                  // output wire FCLK_CLK0
     .FCLK_RESET0_N(),          // output wire FCLK_RESET0_N
     .MIO(MIO),                              // inout wire [53 : 0] MIO
     .DDR_CAS_n(),                  // inout wire DDR_CAS_n
     .DDR_CKE(),                      // inout wire DDR_CKE
     .DDR_Clk_n(),                  // inout wire DDR_Clk_n
     .DDR_Clk(),                      // inout wire DDR_Clk
     .DDR_CS_n(),                    // inout wire DDR_CS_n
     .DDR_DRSTB(),                  // inout wire DDR_DRSTB
     .DDR_ODT(),                      // inout wire DDR_ODT
     .DDR_RAS_n(),                  // inout wire DDR_RAS_n
     .DDR_WEB(),                      // inout wire DDR_WEB
     .DDR_BankAddr(),            // inout wire [2 : 0] DDR_BankAddr
     .DDR_Addr(),                    // inout wire [14 : 0] DDR_Addr
     .DDR_VRN(),                      // inout wire DDR_VRN
     .DDR_VRP(),                      // inout wire DDR_VRP
     .DDR_DM(),                        // inout wire [3 : 0] DDR_DM
     .DDR_DQ(),                        // inout wire [31 : 0] DDR_DQ
     .DDR_DQS_n(),                  // inout wire [3 : 0] DDR_DQS_n
     .DDR_DQS(),                      // inout wire [3 : 0] DDR_DQS
     .PS_SRSTB(PS_SRSTB),                    // inout wire PS_SRSTB
     .PS_CLK(PS_CLK),                        // inout wire PS_CLK
     .PS_PORB(PS_PORB)                      // inout wire PS_PORB
   );
endmodule
