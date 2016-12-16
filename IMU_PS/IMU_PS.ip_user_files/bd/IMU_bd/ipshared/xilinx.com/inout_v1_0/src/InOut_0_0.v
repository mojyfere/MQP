// (c) Copyright 1995-2016 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:user:InOut:1.0
// IP Revision: 2

(* X_CORE_INFO = "InOut,Vivado 2016.2" *)
(* CHECK_LICENSE_TYPE = "IMU_bd_InOut_0_0,InOut,{}" *)
(* CORE_GENERATION_INFO = "IMU_bd_InOut_0_0,InOut,{x_ipProduct=Vivado 2016.2,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=InOut,x_ipVersion=1.0,x_ipCoreRevision=2,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module IMU_bd_InOut_0_0 (
  miso_O,
  sclk,
  mosi,
  cs_nM,
  sclk_O,
  mosi_O,
  cs_nAG_O,
  cs_nALT_O,
  cs_nM_O,
  miso_I
);

output wire miso_O;
input wire sclk;
input wire mosi;
input wire cs_nM;
output wire sclk_O;
output wire mosi_O;
output wire cs_nAG_O;
output wire cs_nALT_O;
output wire cs_nM_O;
input wire miso_I;

  InOut inst (
    .miso_O(miso_O),
    .sclk(sclk),
    .mosi(mosi),
    .cs_nM(cs_nM),
    .sclk_O(sclk_O),
    .mosi_O(mosi_O),
    .cs_nAG_O(cs_nAG_O),
    .cs_nALT_O(cs_nALT_O),
    .cs_nM_O(cs_nM_O),
    .miso_I(miso_I)
  );
endmodule

