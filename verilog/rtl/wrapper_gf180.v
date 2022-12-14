// SPDX-FileCopyrightText: 
// 2022 Nguyen Dao
// 2022 Myrtle Shah
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
// SPDX-License-Identifier: Apache-2.0

module user_project_wrapper(
`ifdef USE_POWER_PINS
    inout vdd,      // User area 5.0V supply
    inout vss,      // User area ground
`endif
    // Wishbone Slave ports (WB MI A)
    input wb_clk_i,
    input wb_rst_i,
    input wbs_stb_i,
    input wbs_cyc_i,
    input wbs_we_i,
    input [3:0] wbs_sel_i,
    input [31:0] wbs_dat_i,
    input [31:0] wbs_adr_i,
    output wbs_ack_o,
    output [31:0] wbs_dat_o,

    // Logic Analyzer Signals
    input  [63:0] la_data_in,
    output [63:0] la_data_out,
    input  [63:0] la_oenb,

    // IOs
    input  [`MPRJ_IO_PADS-1:0] io_in,
    output [`MPRJ_IO_PADS-1:0] io_out,
    output [`MPRJ_IO_PADS-1:0] io_oeb,

    // Independent clock (on independent integer divider)
    input   user_clock2,

    // User maskable interrupt signals
    output [2:0] user_irq
);
	assign wbs_ack_o = 1'b0;
	assign wbs_dat_o = 32'b0;
	assign user_irq = 3'b0;

	eFPGA_top Inst_eFPGA_top(
		.I_top(io_out[37:14]),
		.T_top(io_oeb[37:14]),
		.O_top(io_in[37:14]),
		.A_config_C(),
		.B_config_C(),
		.CLK(io_in[5]),
		.SelfWriteStrobe(1'b0),
		.SelfWriteData(32'b0),
		.Rx(io_in[6]),
		.ComActive(io_out[7]),
		.ReceiveLED(io_out[8]),
		.s_clk(io_in[9]),
		.s_data(io_in[10])
	);
	// unused (shared with caravel)
	assign io_oeb[4:0] = 5'b11111;
	assign io_out[4:0] = 5'b00000;
    // fixed purpose
    assign io_oeb[10:5] = 6'b110011;
    assign io_out[10:9] = 2'b00;
    assign io_out[6:5] = 2'b00;
	// unused currently
	assign io_oeb[13:11] = 3'b111;
	assign io_out[13:11] = 3'b000;

endmodule
