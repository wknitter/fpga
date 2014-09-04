/*******************************************************************************
*     This file is owned and controlled by Xilinx and must be used solely      *
*     for design, simulation, implementation and creation of design files      *
*     limited to Xilinx devices or technologies. Use with non-Xilinx           *
*     devices or technologies is expressly prohibited and immediately          *
*     terminates your license.                                                 *
*                                                                              *
*     XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY     *
*     FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY     *
*     PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE              *
*     IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS       *
*     MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY       *
*     CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY        *
*     RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY        *
*     DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE    *
*     IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR           *
*     REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF          *
*     INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A    *
*     PARTICULAR PURPOSE.                                                      *
*                                                                              *
*     Xilinx products are not intended for use in life support appliances,     *
*     devices, or systems.  Use in such applications are expressly             *
*     prohibited.                                                              *
*                                                                              *
*     (c) Copyright 1995-2014 Xilinx, Inc.                                     *
*     All rights reserved.                                                     *
*******************************************************************************/
// You must compile the wrapper file axi64_4k_2clk_fifo.v when simulating
// the core, axi64_4k_2clk_fifo. When compiling the wrapper file, be sure to
// reference the XilinxCoreLib Verilog simulation library. For detailed
// instructions, please refer to the "CORE Generator Help".

// The synthesis directives "translate_off/translate_on" specified below are
// supported by Xilinx, Mentor Graphics and Synplicity synthesis
// tools. Ensure they are correct for your synthesis tool(s).

`timescale 1ns/1ps

module axi64_4k_2clk_fifo(
  m_aclk,
  s_aclk,
  s_aresetn,
  s_axis_tvalid,
  s_axis_tready,
  s_axis_tdata,
  s_axis_tlast,
  s_axis_tuser,
  m_axis_tvalid,
  m_axis_tready,
  m_axis_tdata,
  m_axis_tlast,
  m_axis_tuser,
  axis_wr_data_count,
  axis_rd_data_count
);

input m_aclk;
input s_aclk;
input s_aresetn;
input s_axis_tvalid;
output s_axis_tready;
input [63 : 0] s_axis_tdata;
input s_axis_tlast;
input [3 : 0] s_axis_tuser;
output m_axis_tvalid;
input m_axis_tready;
output [63 : 0] m_axis_tdata;
output m_axis_tlast;
output [3 : 0] m_axis_tuser;
output [9 : 0] axis_wr_data_count;
output [9 : 0] axis_rd_data_count;

// synthesis translate_off

  FIFO_GENERATOR_V9_3 #(
    .C_ADD_NGC_CONSTRAINT(0),
    .C_APPLICATION_TYPE_AXIS(0),
    .C_APPLICATION_TYPE_RACH(0),
    .C_APPLICATION_TYPE_RDCH(0),
    .C_APPLICATION_TYPE_WACH(0),
    .C_APPLICATION_TYPE_WDCH(0),
    .C_APPLICATION_TYPE_WRCH(0),
    .C_AXI_ADDR_WIDTH(32),
    .C_AXI_ARUSER_WIDTH(1),
    .C_AXI_AWUSER_WIDTH(1),
    .C_AXI_BUSER_WIDTH(1),
    .C_AXI_DATA_WIDTH(64),
    .C_AXI_ID_WIDTH(4),
    .C_AXI_RUSER_WIDTH(1),
    .C_AXI_TYPE(0),
    .C_AXI_WUSER_WIDTH(1),
    .C_AXIS_TDATA_WIDTH(64),
    .C_AXIS_TDEST_WIDTH(4),
    .C_AXIS_TID_WIDTH(8),
    .C_AXIS_TKEEP_WIDTH(8),
    .C_AXIS_TSTRB_WIDTH(8),
    .C_AXIS_TUSER_WIDTH(4),
    .C_AXIS_TYPE(0),
    .C_COMMON_CLOCK(0),
    .C_COUNT_TYPE(0),
    .C_DATA_COUNT_WIDTH(10),
    .C_DEFAULT_VALUE("BlankString"),
    .C_DIN_WIDTH(18),
    .C_DIN_WIDTH_AXIS(69),
    .C_DIN_WIDTH_RACH(32),
    .C_DIN_WIDTH_RDCH(64),
    .C_DIN_WIDTH_WACH(32),
    .C_DIN_WIDTH_WDCH(64),
    .C_DIN_WIDTH_WRCH(2),
    .C_DOUT_RST_VAL("0"),
    .C_DOUT_WIDTH(18),
    .C_ENABLE_RLOCS(0),
    .C_ENABLE_RST_SYNC(1),
    .C_ERROR_INJECTION_TYPE(0),
    .C_ERROR_INJECTION_TYPE_AXIS(0),
    .C_ERROR_INJECTION_TYPE_RACH(0),
    .C_ERROR_INJECTION_TYPE_RDCH(0),
    .C_ERROR_INJECTION_TYPE_WACH(0),
    .C_ERROR_INJECTION_TYPE_WDCH(0),
    .C_ERROR_INJECTION_TYPE_WRCH(0),
    .C_FAMILY("kintex7"),
    .C_FULL_FLAGS_RST_VAL(1),
    .C_HAS_ALMOST_EMPTY(0),
    .C_HAS_ALMOST_FULL(0),
    .C_HAS_AXI_ARUSER(0),
    .C_HAS_AXI_AWUSER(0),
    .C_HAS_AXI_BUSER(0),
    .C_HAS_AXI_RD_CHANNEL(0),
    .C_HAS_AXI_RUSER(0),
    .C_HAS_AXI_WR_CHANNEL(0),
    .C_HAS_AXI_WUSER(0),
    .C_HAS_AXIS_TDATA(1),
    .C_HAS_AXIS_TDEST(0),
    .C_HAS_AXIS_TID(0),
    .C_HAS_AXIS_TKEEP(0),
    .C_HAS_AXIS_TLAST(1),
    .C_HAS_AXIS_TREADY(1),
    .C_HAS_AXIS_TSTRB(0),
    .C_HAS_AXIS_TUSER(1),
    .C_HAS_BACKUP(0),
    .C_HAS_DATA_COUNT(0),
    .C_HAS_DATA_COUNTS_AXIS(1),
    .C_HAS_DATA_COUNTS_RACH(0),
    .C_HAS_DATA_COUNTS_RDCH(0),
    .C_HAS_DATA_COUNTS_WACH(0),
    .C_HAS_DATA_COUNTS_WDCH(0),
    .C_HAS_DATA_COUNTS_WRCH(0),
    .C_HAS_INT_CLK(0),
    .C_HAS_MASTER_CE(0),
    .C_HAS_MEMINIT_FILE(0),
    .C_HAS_OVERFLOW(0),
    .C_HAS_PROG_FLAGS_AXIS(0),
    .C_HAS_PROG_FLAGS_RACH(0),
    .C_HAS_PROG_FLAGS_RDCH(0),
    .C_HAS_PROG_FLAGS_WACH(0),
    .C_HAS_PROG_FLAGS_WDCH(0),
    .C_HAS_PROG_FLAGS_WRCH(0),
    .C_HAS_RD_DATA_COUNT(0),
    .C_HAS_RD_RST(0),
    .C_HAS_RST(1),
    .C_HAS_SLAVE_CE(0),
    .C_HAS_SRST(0),
    .C_HAS_UNDERFLOW(0),
    .C_HAS_VALID(0),
    .C_HAS_WR_ACK(0),
    .C_HAS_WR_DATA_COUNT(0),
    .C_HAS_WR_RST(0),
    .C_IMPLEMENTATION_TYPE(0),
    .C_IMPLEMENTATION_TYPE_AXIS(11),
    .C_IMPLEMENTATION_TYPE_RACH(12),
    .C_IMPLEMENTATION_TYPE_RDCH(11),
    .C_IMPLEMENTATION_TYPE_WACH(12),
    .C_IMPLEMENTATION_TYPE_WDCH(11),
    .C_IMPLEMENTATION_TYPE_WRCH(12),
    .C_INIT_WR_PNTR_VAL(0),
    .C_INTERFACE_TYPE(1),
    .C_MEMORY_TYPE(1),
    .C_MIF_FILE_NAME("BlankString"),
    .C_MSGON_VAL(1),
    .C_OPTIMIZATION_MODE(0),
    .C_OVERFLOW_LOW(0),
    .C_PRELOAD_LATENCY(1),
    .C_PRELOAD_REGS(0),
    .C_PRIM_FIFO_TYPE("4kx4"),
    .C_PROG_EMPTY_THRESH_ASSERT_VAL(2),
    .C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS(509),
    .C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH(13),
    .C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH(1021),
    .C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH(13),
    .C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH(1021),
    .C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH(13),
    .C_PROG_EMPTY_THRESH_NEGATE_VAL(3),
    .C_PROG_EMPTY_TYPE(0),
    .C_PROG_EMPTY_TYPE_AXIS(0),
    .C_PROG_EMPTY_TYPE_RACH(0),
    .C_PROG_EMPTY_TYPE_RDCH(0),
    .C_PROG_EMPTY_TYPE_WACH(0),
    .C_PROG_EMPTY_TYPE_WDCH(0),
    .C_PROG_EMPTY_TYPE_WRCH(0),
    .C_PROG_FULL_THRESH_ASSERT_VAL(1022),
    .C_PROG_FULL_THRESH_ASSERT_VAL_AXIS(511),
    .C_PROG_FULL_THRESH_ASSERT_VAL_RACH(15),
    .C_PROG_FULL_THRESH_ASSERT_VAL_RDCH(1023),
    .C_PROG_FULL_THRESH_ASSERT_VAL_WACH(15),
    .C_PROG_FULL_THRESH_ASSERT_VAL_WDCH(1023),
    .C_PROG_FULL_THRESH_ASSERT_VAL_WRCH(15),
    .C_PROG_FULL_THRESH_NEGATE_VAL(1021),
    .C_PROG_FULL_TYPE(0),
    .C_PROG_FULL_TYPE_AXIS(0),
    .C_PROG_FULL_TYPE_RACH(0),
    .C_PROG_FULL_TYPE_RDCH(0),
    .C_PROG_FULL_TYPE_WACH(0),
    .C_PROG_FULL_TYPE_WDCH(0),
    .C_PROG_FULL_TYPE_WRCH(0),
    .C_RACH_TYPE(0),
    .C_RD_DATA_COUNT_WIDTH(10),
    .C_RD_DEPTH(1024),
    .C_RD_FREQ(1),
    .C_RD_PNTR_WIDTH(10),
    .C_RDCH_TYPE(0),
    .C_REG_SLICE_MODE_AXIS(0),
    .C_REG_SLICE_MODE_RACH(0),
    .C_REG_SLICE_MODE_RDCH(0),
    .C_REG_SLICE_MODE_WACH(0),
    .C_REG_SLICE_MODE_WDCH(0),
    .C_REG_SLICE_MODE_WRCH(0),
    .C_SYNCHRONIZER_STAGE(2),
    .C_UNDERFLOW_LOW(0),
    .C_USE_COMMON_OVERFLOW(0),
    .C_USE_COMMON_UNDERFLOW(0),
    .C_USE_DEFAULT_SETTINGS(0),
    .C_USE_DOUT_RST(1),
    .C_USE_ECC(0),
    .C_USE_ECC_AXIS(0),
    .C_USE_ECC_RACH(0),
    .C_USE_ECC_RDCH(0),
    .C_USE_ECC_WACH(0),
    .C_USE_ECC_WDCH(0),
    .C_USE_ECC_WRCH(0),
    .C_USE_EMBEDDED_REG(0),
    .C_USE_FIFO16_FLAGS(0),
    .C_USE_FWFT_DATA_COUNT(0),
    .C_VALID_LOW(0),
    .C_WACH_TYPE(0),
    .C_WDCH_TYPE(0),
    .C_WR_ACK_LOW(0),
    .C_WR_DATA_COUNT_WIDTH(10),
    .C_WR_DEPTH(1024),
    .C_WR_DEPTH_AXIS(512),
    .C_WR_DEPTH_RACH(16),
    .C_WR_DEPTH_RDCH(1024),
    .C_WR_DEPTH_WACH(16),
    .C_WR_DEPTH_WDCH(1024),
    .C_WR_DEPTH_WRCH(16),
    .C_WR_FREQ(1),
    .C_WR_PNTR_WIDTH(10),
    .C_WR_PNTR_WIDTH_AXIS(9),
    .C_WR_PNTR_WIDTH_RACH(4),
    .C_WR_PNTR_WIDTH_RDCH(10),
    .C_WR_PNTR_WIDTH_WACH(4),
    .C_WR_PNTR_WIDTH_WDCH(10),
    .C_WR_PNTR_WIDTH_WRCH(4),
    .C_WR_RESPONSE_LATENCY(1),
    .C_WRCH_TYPE(0)
  )
  inst (
    .M_ACLK(m_aclk),
    .S_ACLK(s_aclk),
    .S_ARESETN(s_aresetn),
    .S_AXIS_TVALID(s_axis_tvalid),
    .S_AXIS_TREADY(s_axis_tready),
    .S_AXIS_TDATA(s_axis_tdata),
    .S_AXIS_TLAST(s_axis_tlast),
    .S_AXIS_TUSER(s_axis_tuser),
    .M_AXIS_TVALID(m_axis_tvalid),
    .M_AXIS_TREADY(m_axis_tready),
    .M_AXIS_TDATA(m_axis_tdata),
    .M_AXIS_TLAST(m_axis_tlast),
    .M_AXIS_TUSER(m_axis_tuser),
    .AXIS_WR_DATA_COUNT(axis_wr_data_count),
    .AXIS_RD_DATA_COUNT(axis_rd_data_count),
    .BACKUP(),
    .BACKUP_MARKER(),
    .CLK(),
    .RST(),
    .SRST(),
    .WR_CLK(),
    .WR_RST(),
    .RD_CLK(),
    .RD_RST(),
    .DIN(),
    .WR_EN(),
    .RD_EN(),
    .PROG_EMPTY_THRESH(),
    .PROG_EMPTY_THRESH_ASSERT(),
    .PROG_EMPTY_THRESH_NEGATE(),
    .PROG_FULL_THRESH(),
    .PROG_FULL_THRESH_ASSERT(),
    .PROG_FULL_THRESH_NEGATE(),
    .INT_CLK(),
    .INJECTDBITERR(),
    .INJECTSBITERR(),
    .DOUT(),
    .FULL(),
    .ALMOST_FULL(),
    .WR_ACK(),
    .OVERFLOW(),
    .EMPTY(),
    .ALMOST_EMPTY(),
    .VALID(),
    .UNDERFLOW(),
    .DATA_COUNT(),
    .RD_DATA_COUNT(),
    .WR_DATA_COUNT(),
    .PROG_FULL(),
    .PROG_EMPTY(),
    .SBITERR(),
    .DBITERR(),
    .M_ACLK_EN(),
    .S_ACLK_EN(),
    .S_AXI_AWID(),
    .S_AXI_AWADDR(),
    .S_AXI_AWLEN(),
    .S_AXI_AWSIZE(),
    .S_AXI_AWBURST(),
    .S_AXI_AWLOCK(),
    .S_AXI_AWCACHE(),
    .S_AXI_AWPROT(),
    .S_AXI_AWQOS(),
    .S_AXI_AWREGION(),
    .S_AXI_AWUSER(),
    .S_AXI_AWVALID(),
    .S_AXI_AWREADY(),
    .S_AXI_WID(),
    .S_AXI_WDATA(),
    .S_AXI_WSTRB(),
    .S_AXI_WLAST(),
    .S_AXI_WUSER(),
    .S_AXI_WVALID(),
    .S_AXI_WREADY(),
    .S_AXI_BID(),
    .S_AXI_BRESP(),
    .S_AXI_BUSER(),
    .S_AXI_BVALID(),
    .S_AXI_BREADY(),
    .M_AXI_AWID(),
    .M_AXI_AWADDR(),
    .M_AXI_AWLEN(),
    .M_AXI_AWSIZE(),
    .M_AXI_AWBURST(),
    .M_AXI_AWLOCK(),
    .M_AXI_AWCACHE(),
    .M_AXI_AWPROT(),
    .M_AXI_AWQOS(),
    .M_AXI_AWREGION(),
    .M_AXI_AWUSER(),
    .M_AXI_AWVALID(),
    .M_AXI_AWREADY(),
    .M_AXI_WID(),
    .M_AXI_WDATA(),
    .M_AXI_WSTRB(),
    .M_AXI_WLAST(),
    .M_AXI_WUSER(),
    .M_AXI_WVALID(),
    .M_AXI_WREADY(),
    .M_AXI_BID(),
    .M_AXI_BRESP(),
    .M_AXI_BUSER(),
    .M_AXI_BVALID(),
    .M_AXI_BREADY(),
    .S_AXI_ARID(),
    .S_AXI_ARADDR(),
    .S_AXI_ARLEN(),
    .S_AXI_ARSIZE(),
    .S_AXI_ARBURST(),
    .S_AXI_ARLOCK(),
    .S_AXI_ARCACHE(),
    .S_AXI_ARPROT(),
    .S_AXI_ARQOS(),
    .S_AXI_ARREGION(),
    .S_AXI_ARUSER(),
    .S_AXI_ARVALID(),
    .S_AXI_ARREADY(),
    .S_AXI_RID(),
    .S_AXI_RDATA(),
    .S_AXI_RRESP(),
    .S_AXI_RLAST(),
    .S_AXI_RUSER(),
    .S_AXI_RVALID(),
    .S_AXI_RREADY(),
    .M_AXI_ARID(),
    .M_AXI_ARADDR(),
    .M_AXI_ARLEN(),
    .M_AXI_ARSIZE(),
    .M_AXI_ARBURST(),
    .M_AXI_ARLOCK(),
    .M_AXI_ARCACHE(),
    .M_AXI_ARPROT(),
    .M_AXI_ARQOS(),
    .M_AXI_ARREGION(),
    .M_AXI_ARUSER(),
    .M_AXI_ARVALID(),
    .M_AXI_ARREADY(),
    .M_AXI_RID(),
    .M_AXI_RDATA(),
    .M_AXI_RRESP(),
    .M_AXI_RLAST(),
    .M_AXI_RUSER(),
    .M_AXI_RVALID(),
    .M_AXI_RREADY(),
    .S_AXIS_TSTRB(),
    .S_AXIS_TKEEP(),
    .S_AXIS_TID(),
    .S_AXIS_TDEST(),
    .M_AXIS_TSTRB(),
    .M_AXIS_TKEEP(),
    .M_AXIS_TID(),
    .M_AXIS_TDEST(),
    .AXI_AW_INJECTSBITERR(),
    .AXI_AW_INJECTDBITERR(),
    .AXI_AW_PROG_FULL_THRESH(),
    .AXI_AW_PROG_EMPTY_THRESH(),
    .AXI_AW_DATA_COUNT(),
    .AXI_AW_WR_DATA_COUNT(),
    .AXI_AW_RD_DATA_COUNT(),
    .AXI_AW_SBITERR(),
    .AXI_AW_DBITERR(),
    .AXI_AW_OVERFLOW(),
    .AXI_AW_UNDERFLOW(),
    .AXI_AW_PROG_FULL(),
    .AXI_AW_PROG_EMPTY(),
    .AXI_W_INJECTSBITERR(),
    .AXI_W_INJECTDBITERR(),
    .AXI_W_PROG_FULL_THRESH(),
    .AXI_W_PROG_EMPTY_THRESH(),
    .AXI_W_DATA_COUNT(),
    .AXI_W_WR_DATA_COUNT(),
    .AXI_W_RD_DATA_COUNT(),
    .AXI_W_SBITERR(),
    .AXI_W_DBITERR(),
    .AXI_W_OVERFLOW(),
    .AXI_W_UNDERFLOW(),
    .AXI_B_INJECTSBITERR(),
    .AXI_W_PROG_FULL(),
    .AXI_W_PROG_EMPTY(),
    .AXI_B_INJECTDBITERR(),
    .AXI_B_PROG_FULL_THRESH(),
    .AXI_B_PROG_EMPTY_THRESH(),
    .AXI_B_DATA_COUNT(),
    .AXI_B_WR_DATA_COUNT(),
    .AXI_B_RD_DATA_COUNT(),
    .AXI_B_SBITERR(),
    .AXI_B_DBITERR(),
    .AXI_B_OVERFLOW(),
    .AXI_B_UNDERFLOW(),
    .AXI_AR_INJECTSBITERR(),
    .AXI_B_PROG_FULL(),
    .AXI_B_PROG_EMPTY(),
    .AXI_AR_INJECTDBITERR(),
    .AXI_AR_PROG_FULL_THRESH(),
    .AXI_AR_PROG_EMPTY_THRESH(),
    .AXI_AR_DATA_COUNT(),
    .AXI_AR_WR_DATA_COUNT(),
    .AXI_AR_RD_DATA_COUNT(),
    .AXI_AR_SBITERR(),
    .AXI_AR_DBITERR(),
    .AXI_AR_OVERFLOW(),
    .AXI_AR_UNDERFLOW(),
    .AXI_AR_PROG_FULL(),
    .AXI_AR_PROG_EMPTY(),
    .AXI_R_INJECTSBITERR(),
    .AXI_R_INJECTDBITERR(),
    .AXI_R_PROG_FULL_THRESH(),
    .AXI_R_PROG_EMPTY_THRESH(),
    .AXI_R_DATA_COUNT(),
    .AXI_R_WR_DATA_COUNT(),
    .AXI_R_RD_DATA_COUNT(),
    .AXI_R_SBITERR(),
    .AXI_R_DBITERR(),
    .AXI_R_OVERFLOW(),
    .AXI_R_UNDERFLOW(),
    .AXIS_INJECTSBITERR(),
    .AXI_R_PROG_FULL(),
    .AXI_R_PROG_EMPTY(),
    .AXIS_INJECTDBITERR(),
    .AXIS_PROG_FULL_THRESH(),
    .AXIS_PROG_EMPTY_THRESH(),
    .AXIS_DATA_COUNT(),
    .AXIS_SBITERR(),
    .AXIS_DBITERR(),
    .AXIS_OVERFLOW(),
    .AXIS_UNDERFLOW(),
    .AXIS_PROG_FULL(),
    .AXIS_PROG_EMPTY()
  );

// synthesis translate_on

endmodule
