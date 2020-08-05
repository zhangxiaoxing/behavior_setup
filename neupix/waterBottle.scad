linear_extrude(height=5.01) 
import("waterBottleBottom.dxf",$fn=64);
translate([0,0,5])
linear_extrude(height=20) 
import("waterBottleTop.dxf",$fn=64);