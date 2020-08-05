difference(){
union(){
linear_extrude(height=2)
import("neuPixHeadEnds_V5.dxf");

linear_extrude(height=8.51)
import("neuPixHeadMid_V5.dxf");

translate([0,0,8.5])
linear_extrude(height=3)
import("neuPixHeadEnds_V5.dxf");

linear_extrude(height=95)
import("neuPixBody2_V5.dxf");

hull()
for (zz=[6,18])
translate([24+1,7-2.5,zz])
rotate([90,0,0])
cylinder(d=9.5,h=7,$fn=36);

for (xx=[75-4-1,65-4-4+1])
translate([xx,-5,0])
cube([4,9,9]);

}

for (zz=[6,18,78,90])
translate([24+1,20,zz])
rotate([90,0,0])
cylinder(d=6.5,h=50,$fn=36);


for (xx=[8.5-0.75,50-8-0.75])
translate([xx,40,5])
rotate([90,0,0])
hull(){
cylinder(d=3.5,h=20,$fn=36);
translate([1,0,])
    cylinder(d=3.5,h=20,$fn=36);
}
translate([25,20,0])
rotate([0,90,0])
cylinder(d=12,h=50,$fn=32);

translate([76-20,-0.5,4.5])
rotate([0,90,0])
#cylinder(d=3,h=20,$fn=32);

hull()
for (zz=[20,60])
translate([66,20,zz])
rotate([90,0,0])
cylinder(d=8,h=50,$fn=36);

}