/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module memory_8 (
    input clk,
    input rst,
    input [15:0] wd,
    input [4:0] wa,
    input [4:0] ra,
    input [4:0] rb,
    input [15:0] alit,
    input [15:0] blit,
    input [0:0] asel,
    input [0:0] bsel,
    input [0:0] we,
    output reg [15:0] aout,
    output reg [15:0] bout,
    output reg [1:0] timer,
    output reg [3:0] leds,
    output reg [3:0] s1,
    output reg [3:0] s2,
    output reg [2:0] att1,
    output reg [2:0] def1,
    output reg [2:0] att2,
    output reg [2:0] def2,
    output reg [3:0] p1l1,
    output reg [3:0] p1l2,
    output reg [3:0] p1l3,
    output reg [3:0] p2l1,
    output reg [3:0] p2l2,
    output reg [3:0] p2l3,
    output reg [0:0] animation_start
  );
  
  
  
  reg [1:0] M_rtimer_d, M_rtimer_q = 1'h0;
  reg [2:0] M_ratt1_d, M_ratt1_q = 1'h0;
  reg [2:0] M_rdef1_d, M_rdef1_q = 1'h0;
  reg [2:0] M_ratt2_d, M_ratt2_q = 1'h0;
  reg [2:0] M_rdef2_d, M_rdef2_q = 1'h0;
  reg [3:0] M_rs1_d, M_rs1_q = 1'h0;
  reg [3:0] M_rs2_d, M_rs2_q = 1'h0;
  reg [3:0] M_rled_d, M_rled_q = 1'h0;
  reg [0:0] M_rt_s1_d, M_rt_s1_q = 1'h0;
  reg [0:0] M_rt_s2_d, M_rt_s2_q = 1'h0;
  reg [3:0] M_rl1_d, M_rl1_q = 1'h0;
  reg [3:0] M_rl2_d, M_rl2_q = 1'h0;
  reg [3:0] M_rl3_d, M_rl3_q = 1'h0;
  reg [0:0] M_rstart_d, M_rstart_q = 1'h0;
  reg [0:0] M_rerror_d, M_rerror_q = 1'h0;
  reg [4:0] M_temp1_d, M_temp1_q = 1'h0;
  reg [4:0] M_temp2_d, M_temp2_q = 1'h0;
  
  always @* begin
    M_rt_s2_d = M_rt_s2_q;
    M_rstart_d = M_rstart_q;
    M_rt_s1_d = M_rt_s1_q;
    M_rdef2_d = M_rdef2_q;
    M_rdef1_d = M_rdef1_q;
    M_rled_d = M_rled_q;
    M_temp2_d = M_temp2_q;
    M_rtimer_d = M_rtimer_q;
    M_temp1_d = M_temp1_q;
    M_rs2_d = M_rs2_q;
    M_rs1_d = M_rs1_q;
    M_ratt1_d = M_ratt1_q;
    M_rl1_d = M_rl1_q;
    M_ratt2_d = M_ratt2_q;
    M_rl3_d = M_rl3_q;
    M_rl2_d = M_rl2_q;
    M_rerror_d = M_rerror_q;
    
    if (asel) begin
      aout = alit;
    end else begin
      
      case (ra)
        1'h1: begin
          aout = M_rtimer_q;
        end
        2'h2: begin
          aout = M_rdef2_q;
        end
        2'h3: begin
          aout = M_ratt1_q;
        end
        3'h4: begin
          aout = M_rdef1_q;
        end
        3'h5: begin
          aout = M_rs1_q;
        end
        1'h0: begin
          aout = M_ratt2_q;
        end
        4'h8: begin
          aout = M_rs2_q;
        end
        4'h9: begin
          aout = M_rled_q;
        end
        4'ha: begin
          aout = M_rt_s1_q;
        end
        4'hb: begin
          aout = M_rt_s2_q;
        end
        5'h1e: begin
          aout = M_rl1_q;
        end
        4'hd: begin
          aout = M_rl2_q;
        end
        4'he: begin
          aout = M_rl3_q;
        end
        4'hf: begin
          aout = M_temp1_q;
        end
        5'h10: begin
          aout = M_temp2_q;
        end
        5'h11: begin
          aout = M_rstart_q;
        end
        default: begin
          M_rerror_d = 1'h1;
          aout = 1'h0;
        end
      endcase
    end
    if (bsel) begin
      bout = blit;
    end else begin
      
      case (rb)
        1'h1: begin
          bout = M_rtimer_q;
        end
        2'h2: begin
          bout = M_rdef2_q;
        end
        2'h3: begin
          bout = M_ratt1_q;
        end
        3'h4: begin
          bout = M_rdef1_q;
        end
        3'h5: begin
          bout = M_rs1_q;
        end
        1'h0: begin
          bout = M_ratt2_q;
        end
        4'h8: begin
          bout = M_rs2_q;
        end
        4'h9: begin
          bout = M_rled_q;
        end
        4'ha: begin
          bout = M_rt_s1_q;
        end
        4'hb: begin
          bout = M_rt_s2_q;
        end
        5'h1e: begin
          bout = M_rl1_q;
        end
        4'hd: begin
          bout = M_rl2_q;
        end
        4'he: begin
          bout = M_rl3_q;
        end
        4'hf: begin
          bout = M_temp1_q;
        end
        5'h10: begin
          bout = M_temp2_q;
        end
        5'h11: begin
          bout = M_rstart_q;
        end
        default: begin
          M_rerror_d = 1'h1;
          bout = 1'h0;
        end
      endcase
    end
    if (we) begin
      
      case (wa)
        1'h1: begin
          M_rtimer_d = wd;
        end
        2'h2: begin
          M_rdef2_d = wd;
        end
        2'h3: begin
          M_ratt1_d = wd;
        end
        3'h4: begin
          M_rdef1_d = wd;
        end
        3'h5: begin
          M_rs1_d = wd;
        end
        1'h0: begin
          M_ratt2_d = wd;
        end
        4'h8: begin
          M_rs2_d = wd;
        end
        4'h9: begin
          M_rled_d = wd;
        end
        4'ha: begin
          M_rt_s1_d = wd;
        end
        4'hb: begin
          M_rt_s2_d = wd;
        end
        5'h1e: begin
          M_rl1_d = wd;
        end
        4'hd: begin
          M_rl2_d = wd;
        end
        4'he: begin
          M_rl3_d = wd;
        end
        4'hf: begin
          M_temp1_d = wd;
        end
        5'h10: begin
          M_temp2_d = wd;
        end
        5'h11: begin
          M_rstart_d = wd;
        end
        default: begin
          M_rerror_d = 1'h1;
        end
      endcase
    end
    timer = M_rtimer_q;
    leds = M_rled_q;
    att1 = M_ratt1_q;
    def1 = M_rdef1_q;
    att2 = M_ratt2_q;
    def2 = M_rdef2_q;
    s1 = M_rs1_q;
    s2 = M_rs2_q;
    animation_start = M_rstart_q;
    p1l1 = M_rl1_q[0+3-:4];
    p1l2 = M_rl2_q[0+3-:4];
    p1l3 = M_rl3_q[0+3-:4];
    p2l1 = {M_rl1_q[0+1-:2], M_rl1_q[2+1-:2]};
    p2l2 = {M_rl2_q[0+1-:2], M_rl2_q[2+1-:2]};
    p2l3 = {M_rl3_q[0+1-:2], M_rl3_q[2+1-:2]};
  end
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_rtimer_q <= 1'h0;
      M_ratt1_q <= 1'h0;
      M_rdef1_q <= 1'h0;
      M_ratt2_q <= 1'h0;
      M_rdef2_q <= 1'h0;
      M_rs1_q <= 1'h0;
      M_rs2_q <= 1'h0;
      M_rled_q <= 1'h0;
      M_rt_s1_q <= 1'h0;
      M_rt_s2_q <= 1'h0;
      M_rl1_q <= 1'h0;
      M_rl2_q <= 1'h0;
      M_rl3_q <= 1'h0;
      M_rstart_q <= 1'h0;
      M_rerror_q <= 1'h0;
      M_temp1_q <= 1'h0;
      M_temp2_q <= 1'h0;
    end else begin
      M_rtimer_q <= M_rtimer_d;
      M_ratt1_q <= M_ratt1_d;
      M_rdef1_q <= M_rdef1_d;
      M_ratt2_q <= M_ratt2_d;
      M_rdef2_q <= M_rdef2_d;
      M_rs1_q <= M_rs1_d;
      M_rs2_q <= M_rs2_d;
      M_rled_q <= M_rled_d;
      M_rt_s1_q <= M_rt_s1_d;
      M_rt_s2_q <= M_rt_s2_d;
      M_rl1_q <= M_rl1_d;
      M_rl2_q <= M_rl2_d;
      M_rl3_q <= M_rl3_d;
      M_rstart_q <= M_rstart_d;
      M_rerror_q <= M_rerror_d;
      M_temp1_q <= M_temp1_d;
      M_temp2_q <= M_temp2_d;
    end
  end
  
endmodule
