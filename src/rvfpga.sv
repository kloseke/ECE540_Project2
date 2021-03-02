// SPDX-License-Identifier: Apache-2.0
// Copyright 2019 Western Digital Corporation or its affiliates.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

//********************************************************************************
// $Id$
//
// Function: SweRVolf toplevel for Nexys A7 board
// Comments:
//
/*
   rojobot_i = extended_i = io_BotUpdt_Sync, o_Bot_Config_reg,io_INT_ACK = h00001800
   gpio_rojobot = .ext_pad_i = io_BotInfo = h00001600
   gpio_rojobot = .ext_pad_o = io_BotCtrl = h00001600
*/
//********************************************************************************

`default_nettype none
module rvfpga
  #(parameter bootrom_file  = "")
   (input   wire 	    clk,
    input   wire 	    rstn,
    output  wire [12:0] ddram_a,
    output  wire [2:0]  ddram_ba,
    output  wire        ddram_ras_n,
    output  wire        ddram_cas_n,
    output  wire        ddram_we_n,
    output  wire        ddram_cs_n,
    output  wire [1:0]  ddram_dm,
    inout   wire [15:0] ddram_dq,
    inout   wire [1:0]  ddram_dqs_p,
    inout   wire [1:0]  ddram_dqs_n,
    output  wire        ddram_clk_p,
    output  wire        ddram_clk_n,
    output  wire        ddram_cke,
    output  wire        ddram_odt,
    output  wire        o_flash_cs_n,
    output  wire        o_flash_mosi,
    input   wire 	    i_flash_miso,
    input   wire 	    i_uart_rx,
    output  wire        o_uart_tx,
    inout   wire [15:0] i_sw,
	inout   wire		BTNU,	//input
	inout   wire		BTNC,	//input
	inout   wire		BTND,    //input		
	inout   wire		BTNL,	//input
	inout   wire		BTNR,	//input
    output  reg [15:0]  o_led,
    output  reg [7:0]   AN,
    output  reg         DP,
    output  reg         CA, CB, CC, CD, CE, CF, CG,
    output reg  [3:0]   red_vga,
    output reg  [3:0]   green_vga,
    output reg  [3:0]   blue_vga,
    output reg          vsync_pin,
    output reg          hsync_pin,    
    output  wire        o_accel_cs_n,
    output  wire        o_accel_mosi,
    input   wire        i_accel_miso,
    output  wire        accel_sclk);

   wire [15:0]  gpio_out;
   wire 	    cpu_tx,litedram_tx;
   wire 	    litedram_init_done;
   wire 	    litedram_init_error;


   localparam RAM_SIZE     = 32'h10000;

   wire 	    clk_core;
   wire 	    rst_core;
   wire 	    user_clk;
   wire 	    user_rst;

   clk_gen_nexys clk_gen
     (.i_clk (user_clk),
      .i_rst (user_rst),
      .o_clk_core (clk_core),
      .o_rst_core (rst_core));

   AXI_BUS #(32, 64, 6, 1) mem();
   AXI_BUS #(32, 64, 6, 1) cpu();

   assign cpu.aw_atop = 6'd0;
   assign cpu.aw_user = 1'b0;
   assign cpu.ar_user = 1'b0;
   assign cpu.w_user = 1'b0;
   assign cpu.b_user = 1'b0;
   assign cpu.r_user = 1'b0;
   assign mem.b_user = 1'b0;
   assign mem.r_user = 1'b0;

   axi_cdc_intf
     #(.AXI_USER_WIDTH (1),
       .AXI_ADDR_WIDTH (32),
       .AXI_DATA_WIDTH (64),
       .AXI_ID_WIDTH   (6))
   cdc
     (
      .src_clk_i  (clk_core),
      .src_rst_ni (~rst_core),
      .src        (cpu),
      .dst_clk_i  (user_clk),
      .dst_rst_ni (~user_rst),
      .dst        (mem));

   litedram_top
     #(.ID_WIDTH (6))
   ddr2
     (.serial_tx   (litedram_tx),
      .serial_rx   (i_uart_rx),
      .clk100      (clk),
      .rst_n       (rstn),
      .pll_locked  (),
      .user_clk    (user_clk),
      .user_rst    (user_rst),
      .ddram_a     (ddram_a),
      .ddram_ba    (ddram_ba),
      .ddram_ras_n (ddram_ras_n),
      .ddram_cas_n (ddram_cas_n),
      .ddram_we_n  (ddram_we_n),
      .ddram_cs_n  (ddram_cs_n),
      .ddram_dm    (ddram_dm   ),
      .ddram_dq    (ddram_dq   ),
      .ddram_dqs_p (ddram_dqs_p),
      .ddram_dqs_n (ddram_dqs_n),
      .ddram_clk_p (ddram_clk_p),
      .ddram_clk_n (ddram_clk_n),
      .ddram_cke   (ddram_cke  ),
      .ddram_odt   (ddram_odt  ),
      .init_done  (litedram_init_done),
      .init_error (litedram_init_error),
      .i_awid    (mem.aw_id   ),
      .i_awaddr  (mem.aw_addr[26:0] ),
      .i_awlen   (mem.aw_len  ),
      .i_awsize  ({1'b0,mem.aw_size} ),
      .i_awburst (mem.aw_burst),
      .i_awvalid (mem.aw_valid),
      .o_awready (mem.aw_ready),
      .i_arid    (mem.ar_id   ),
      .i_araddr  (mem.ar_addr[26:0] ),
      .i_arlen   (mem.ar_len  ),
      .i_arsize  ({1'b0,mem.ar_size} ),
      .i_arburst (mem.ar_burst),
      .i_arvalid (mem.ar_valid),
      .o_arready (mem.ar_ready),
      .i_wdata   (mem.w_data  ),
      .i_wstrb   (mem.w_strb  ),
      .i_wlast   (mem.w_last  ),
      .i_wvalid  (mem.w_valid ),
      .o_wready  (mem.w_ready ),
      .o_bid     (mem.b_id    ),
      .o_bresp   (mem.b_resp  ),
      .o_bvalid  (mem.b_valid ),
      .i_bready  (mem.b_ready ),
      .o_rid     (mem.r_id    ),
      .o_rdata   (mem.r_data  ),
      .o_rresp   (mem.r_resp  ),
      .o_rlast   (mem.r_last  ),
      .o_rvalid  (mem.r_valid ),
      .i_rready  (mem.r_ready ));

   wire        dmi_reg_en;
   wire [6:0]  dmi_reg_addr;
   wire        dmi_reg_wr_en;
   wire [31:0] dmi_reg_wdata;
   wire [31:0] dmi_reg_rdata;
   wire        dmi_hard_reset;

   wire        flash_sclk;

   STARTUPE2 STARTUPE2
     (.CFGCLK    (),
      .CFGMCLK   (),
      .EOS       (),
      .PREQ      (),
      .CLK       (1'b0),
      .GSR       (1'b0),
      .GTS       (1'b0),
      .KEYCLEARB (1'b1),
      .PACK      (1'b0),
      .USRCCLKO  (flash_sclk),
      .USRCCLKTS (1'b0),
      .USRDONEO  (1'b1),
      .USRDONETS (1'b0));

   bscan_tap tap
     (.clk            (clk_core),
      .rst            (rst_core),
      .jtag_id        (31'd0),
      .dmi_reg_wdata  (dmi_reg_wdata),
      .dmi_reg_addr   (dmi_reg_addr),
      .dmi_reg_wr_en  (dmi_reg_wr_en),
      .dmi_reg_en     (dmi_reg_en),
      .dmi_reg_rdata  (dmi_reg_rdata),
      .dmi_hard_reset (dmi_hard_reset),
      .rd_status      (2'd0),
      .idle           (3'd0),
      .dmi_stat       (2'd0),
      .version        (4'd1));

   swervolf_core		// Instantiation of SweRVolf_core
     #(.bootrom_file (bootrom_file))
   swervolf
     (.clk  (clk_core),
      .rstn (~rst_core),
      .dmi_reg_rdata  (dmi_reg_rdata),
      .dmi_reg_wdata  (dmi_reg_wdata),
      .dmi_reg_addr   (dmi_reg_addr ),
      .dmi_reg_en     (dmi_reg_en   ),
      .dmi_reg_wr_en  (dmi_reg_wr_en),
      .dmi_hard_reset (dmi_hard_reset),
      .o_flash_sclk   (flash_sclk),
      .o_flash_cs_n   (o_flash_cs_n),
      .o_flash_mosi   (o_flash_mosi),
      .i_flash_miso   (i_flash_miso),
      .i_uart_rx      (i_uart_rx),
      .o_uart_tx      (cpu_tx),
      .o_ram_awid     (cpu.aw_id),
      .o_ram_awaddr   (cpu.aw_addr),
      .o_ram_awlen    (cpu.aw_len),
      .o_ram_awsize   (cpu.aw_size),
      .o_ram_awburst  (cpu.aw_burst),
      .o_ram_awlock   (cpu.aw_lock),
      .o_ram_awcache  (cpu.aw_cache),
      .o_ram_awprot   (cpu.aw_prot),
      .o_ram_awregion (cpu.aw_region),
      .o_ram_awqos    (cpu.aw_qos),
      .o_ram_awvalid  (cpu.aw_valid),
      .i_ram_awready  (cpu.aw_ready),
      .o_ram_arid     (cpu.ar_id),
      .o_ram_araddr   (cpu.ar_addr),
      .o_ram_arlen    (cpu.ar_len),
      .o_ram_arsize   (cpu.ar_size),
      .o_ram_arburst  (cpu.ar_burst),
      .o_ram_arlock   (cpu.ar_lock),
      .o_ram_arcache  (cpu.ar_cache),
      .o_ram_arprot   (cpu.ar_prot),
      .o_ram_arregion (cpu.ar_region),
      .o_ram_arqos    (cpu.ar_qos),
      .o_ram_arvalid  (cpu.ar_valid),
      .i_ram_arready  (cpu.ar_ready),
      .o_ram_wdata    (cpu.w_data),
      .o_ram_wstrb    (cpu.w_strb),
      .o_ram_wlast    (cpu.w_last),
      .o_ram_wvalid   (cpu.w_valid),
      .i_ram_wready   (cpu.w_ready),
      .i_ram_bid      (cpu.b_id),
      .i_ram_bresp    (cpu.b_resp),
      .i_ram_bvalid   (cpu.b_valid),
      .o_ram_bready   (cpu.b_ready),
      .i_ram_rid      (cpu.r_id),
      .i_ram_rdata    (cpu.r_data),
      .i_ram_rresp    (cpu.r_resp),
      .i_ram_rlast    (cpu.r_last),
      .i_ram_rvalid   (cpu.r_valid),
      .o_ram_rready   (cpu.r_ready),
      .i_ram_init_done  (litedram_init_done),
      .i_ram_init_error (litedram_init_error),
      .io_data        ({i_sw[15:0],gpio_out[15:0]}),
	  .io_BTNU		  (BTNU), 		// repeat for 5 button ***	
	  .io_BTNC		  (BTNC),
	  .io_BTND		  (BTND),
	  .io_BTNL		  (BTNL),
	  .io_BTNR		  (BTNR),
	  .io_BotCtrl      (IO_BotCtrl),
	  .io_BotInfo      (io_BotInfo [31:0]),
	  .io_INT_ACK      (IO_INT_ACK),
	  .o_Bot_Config_reg (Bot_Config_reg),
	  .io_BotUpdt_Sync (IO_BotUpdt_Sync),  // bot info reg
      .AN (AN),
      .DP (DP),
      .Digits_Bits ({CA,CB,CC,CD,CE,CF,CG}),
      .o_accel_sclk   (accel_sclk),
      .o_accel_cs_n   (o_accel_cs_n),
      .o_accel_mosi   (o_accel_mosi),
      .i_accel_miso   (i_accel_miso));
      
      wire 	 clk_75;
     

 clk_wiz_0 clk_gen_75hz_module (   // Clock out ports
    .clk_75(clk_75),        // output clk_75
                            // Status and control signals
    .resetn(rstn),         // input resetn
                            // Clock in ports
    .clk_in1(clk));  

    wire [7 : 0] Bot_Config_reg;       // input to the Rojobot
    wire [7 : 0] MotCtl_in;		       // input to the Rojobot
	wire [7 : 0] LocX_reg;             // output to the Rojobot
	wire [7 : 0] LocY_reg; 	           // output to the Rojobot
	wire [7 : 0] BotInfo_reg;          // output to the Rojobot
	wire [7 : 0] Sensors_reg;          // output to the Rojobot
    wire         upd_sysregs;          // output to the Rojobot

    wire [7 : 0] IO_BotCtrl;       // IO_BotCtrl = IO_MotionCtrol_In from the rojobot		
	wire [31:0]  io_BotInfo;       // contains registers from rojobot {LocX_reg, LocY_reg, Sensors_reg, BotInfo_reg}

    // incomming and outgoing signals of Handshake Flip-Flop
	wire         IO_INT_ACK;       // seperate GPIO
	reg          IO_BotUpdt_Sync;  // Seperate GPIO
	wire         IO_BotUpdt;

    // incomming and outgoing signals of world map


	
	assign io_BotInfo = {LocX_reg, LocY_reg, Sensors_reg, BotInfo_reg};
	assign MotCtl_in = IO_BotCtrl;     // IO_BotCtrl is an output from the Core and that value is assigned to MotCtl_in
	
	rojobot31_0 rojobot31_0_module (
    .MotCtl_in        (MotCtl_in),            
    .LocX_reg         (LocX_reg),             
    .LocY_reg         (LocY_reg),              
    .Sensors_reg      (Sensors_reg),         
    .BotInfo_reg      (BotInfo_reg),        
    .worldmap_addr    (worldmap_addr),     
    .worldmap_data    (worldmap_data),     
    .clk_in           (clk_75),            
    .reset            (~rstn),             
    .upd_sysregs      (IO_BotUpdt),   // IO_BOtUpdt    
    .Bot_Config_reg   (Bot_Config_reg) // db_sw  
    );
    
    wire [11:0] pixel_row;
    wire [11:0] pixel_column;
    wire [1:0] icon_out;
    
    icon icon_module (
    .pixel_column (pixel_column),    // input wire [11:0] pixel_column,
	.pixel_row (pixel_row),	// input wire [11:0] pixel_row,
	.LocX_reg (LocX_reg),	// input wire [7:0] LocX_reg,
	.LocY_reg (LocY_reg),	// input wire [7:0] LocY_reg,
	.BotInfo_reg (BotInfo_reg),	// input reg [7:0] BotInfo_reg,
	.icon_out (icon_out)	// output reg [1:0] icon_out
	);
	
	
	dtg dtg_module (
	.clock (clk_75),	// input	wire	    clock, 
	.rst (~rstn),	// input  wire          rst,
	.horiz_sync (hsync_pin),	// output	reg			horiz_sync, vert_sync, video_on,	
	.vert_sync (vsync_pin),
	.video_on (video_on),
	.pixel_row (pixel_row),	// output	reg	[11:0]	pixel_row, pixel_column
	.pixel_column (pixel_column)
	);




    wire [13:0]    worldmap_addr;
    wire [1:0]     worldmap_data;
    wire [13:0]    vid_addr;
    wire [1:0]      world_pixel_out;
    wire video_on;
    
colorizer colorizer_module(
	.icon_out (icon_out),          // input [1:0] icon_out,
	.world_pixel_out (world_pixel_out),   //input [1:0] world_pixel_out,
	.video_on (video_on),          //input video_on,
	.red (red_vga),               //output [3:0] red,
	.green (green_vga),             //output [3:0] green,
	.blue (blue_vga)              //output [3:0] blue
);

    world_map world_map_module(
    .clka    (clk_75),
    .addra   (worldmap_addr),
    .douta   (worldmap_data),   //(worldmap_data_part_1)
    .clkb    (clk_75),          // (clk_75),
    .addrb   (vid_addr),        // (vid_addr)
    .doutb   (world_pixel_out)      // (world_pixel_part_1)
);

  scale scale_module(
  .pixel_row(pixel_row),      // input   wire   [11:0]  pixel_row, 
  .pixel_column (pixel_column), // input   wire   [11:0]  pixel_column,    // input pixel coordinates
  .vid_addr (vid_addr)     // output  wire  [13:0]  vid_addr,                   // concatenation of {world row, world column}
  );

   always @(posedge clk_core) begin
      o_led[15:0] <= gpio_out[15:0];
   end

   assign o_uart_tx = 1'b0 ? litedram_tx : cpu_tx;  
 
  always @ (posedge clk) begin
    if (IO_BotUpdt == 1'b1) begin
        IO_BotUpdt_Sync <= 1'b1;
    end
    else if (IO_INT_ACK == 1'b1) begin
        IO_BotUpdt_Sync <= 1'b0;
    end 
    else begin
        IO_BotUpdt_Sync <= IO_BotUpdt_Sync;
    end
  end
  
endmodule
