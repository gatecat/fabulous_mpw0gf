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

module Frame_Data_Reg_0 (FrameData_I, FrameData_O, RowSelect, CLK);
	parameter FrameBitsPerRow = 32;
	parameter RowSelectWidth = 5;
	parameter Row = 1;
	input [FrameBitsPerRow-1:0] FrameData_I;
	output reg [FrameBitsPerRow-1:0] FrameData_O;
	input [RowSelectWidth-1:0] RowSelect;
	input CLK;
	
	always @ (posedge CLK) begin
		if (RowSelect==Row)
			FrameData_O <= FrameData_I;
	end//CLK
endmodule

module Frame_Data_Reg_1 (FrameData_I, FrameData_O, RowSelect, CLK);
	parameter FrameBitsPerRow = 32;
	parameter RowSelectWidth = 5;
	parameter Row = 2;
	input [FrameBitsPerRow-1:0] FrameData_I;
	output reg [FrameBitsPerRow-1:0] FrameData_O;
	input [RowSelectWidth-1:0] RowSelect;
	input CLK;
	
	always @ (posedge CLK) begin
		if (RowSelect==Row)
			FrameData_O <= FrameData_I;
	end//CLK
endmodule

module Frame_Data_Reg_2 (FrameData_I, FrameData_O, RowSelect, CLK);
	parameter FrameBitsPerRow = 32;
	parameter RowSelectWidth = 5;
	parameter Row = 3;
	input [FrameBitsPerRow-1:0] FrameData_I;
	output reg [FrameBitsPerRow-1:0] FrameData_O;
	input [RowSelectWidth-1:0] RowSelect;
	input CLK;
	
	always @ (posedge CLK) begin
		if (RowSelect==Row)
			FrameData_O <= FrameData_I;
	end//CLK
endmodule

module Frame_Data_Reg_3 (FrameData_I, FrameData_O, RowSelect, CLK);
	parameter FrameBitsPerRow = 32;
	parameter RowSelectWidth = 5;
	parameter Row = 4;
	input [FrameBitsPerRow-1:0] FrameData_I;
	output reg [FrameBitsPerRow-1:0] FrameData_O;
	input [RowSelectWidth-1:0] RowSelect;
	input CLK;
	
	always @ (posedge CLK) begin
		if (RowSelect==Row)
			FrameData_O <= FrameData_I;
	end//CLK
endmodule

module Frame_Data_Reg_4 (FrameData_I, FrameData_O, RowSelect, CLK);
	parameter FrameBitsPerRow = 32;
	parameter RowSelectWidth = 5;
	parameter Row = 5;
	input [FrameBitsPerRow-1:0] FrameData_I;
	output reg [FrameBitsPerRow-1:0] FrameData_O;
	input [RowSelectWidth-1:0] RowSelect;
	input CLK;
	
	always @ (posedge CLK) begin
		if (RowSelect==Row)
			FrameData_O <= FrameData_I;
	end//CLK
endmodule

module Frame_Data_Reg_5 (FrameData_I, FrameData_O, RowSelect, CLK);
	parameter FrameBitsPerRow = 32;
	parameter RowSelectWidth = 5;
	parameter Row = 6;
	input [FrameBitsPerRow-1:0] FrameData_I;
	output reg [FrameBitsPerRow-1:0] FrameData_O;
	input [RowSelectWidth-1:0] RowSelect;
	input CLK;
	
	always @ (posedge CLK) begin
		if (RowSelect==Row)
			FrameData_O <= FrameData_I;
	end//CLK
endmodule

