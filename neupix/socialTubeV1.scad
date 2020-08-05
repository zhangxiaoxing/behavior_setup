difference(){
union(){
linear_extrude(height=70)
import("sociaTubeV1.dxf",$fn=32);

}

translate([0,30,15])
cube([100,100,100]);

for (xx=[8.5-0.75,50-8-0.75])
translate([xx,40,5])
rotate([90,0,0])
hull(){
cylinder(d=3.5,h=20,$fn=36);
translate([1,0,])
    cylinder(d=3.5,h=20,$fn=36);
    
}

translate([17.5,10,20])
rotate([90,0,0])
cylinder(d=3.3,h=10,$fn=32);


translate([0,20,0])
rotate([0,90,0])
cylinder(d=12,h=20,$fn=32);
    
//translate([76-20,-0.5,4.5])
//rotate([0,90,0])
//#cylinder(d=3,h=20,$fn=32);
}