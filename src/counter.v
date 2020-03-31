/**
 * Counter Example 
 */

module counter(out, clk, reset);

  // Constants
  parameter WIDTH = 8;

  // Input Parameters
  input            clk, reset;
  output [WIDTH-1 : 0] out;

  // Internal Elements
  reg [WIDTH-1 : 0]   out;
  wire         clk, reset;

  // Main Process
  always @(posedge clk or posedge reset)
    if (reset)
      out <= 0;
    else
      out <= out + 1;

endmodule // counter
