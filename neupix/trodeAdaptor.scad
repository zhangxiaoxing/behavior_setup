module npxl() {
  color("red")
  translate([0, 1.5 / 2, 2])
  rotate([90, 0, 0]) {
    cube([12.2, 7.2, 1.5]);
    translate([12.2, 0.5, 0])
    cube([10.7, 6.2, 1.5]);
  }
}

//translate([-3, 0, 6])
//npxl();
module modA(){
for(xh=[[-1,6],[12,6.5]]){

color("orange")
translate([xh[0], -1, 2])
cube([2, 3, xh[1]]);
color("brown")
translate([xh[0], 1, 2])
cube([2, 3, 13]);

}


difference() {
  union() {

    color("blue")
    translate([-10, -10, 0])
    cube([30, 20, 2]);
    color("aqua")
    translate([-1, -4, 0])
    cube([19, 3, 22]);

  }

//  color("black")
//  translate([-2, -0.75, 2])
//  cube([30, 1.5, 15]);

  color("silver")
  translate([25 * 1.414 + 12, 0, 0])
  rotate([0, 45, 0])
  cube([50, 50, 50], center = true);
  for(zz=[5,18]){
  translate([7,0,zz])
  rotate([90,0,0])
  cylinder(d=3.7,h=15,$fn=16);
  translate([7,-3,zz])
      rotate([90,0,0])
  cylinder(d=6.4,h=10,$fn=6); 
  translate([7,15,zz])
      rotate([90,0,0])
  cylinder(d=7,h=14,$fn=24); 
  }
  for(yy=[6,-6]){
  translate([-5,yy,-1]){
  cylinder(d=3.7,h=15,$fn=16);
      translate([0,0,2])
  cylinder(d=6.4,h=15,$fn=6);
  }
  }
  
}
}

module modB(){
difference(){
translate([2.5,0,2.5])
cube([9,3,22-2.5]);
  for(zz=[5,18]){
  translate([7.5,10,zz])
  rotate([90,0,0])
  cylinder(d=3.7,h=15,$fn=16);
  }
  translate([7.5,-1,0])
  rotate([0,45,0])
  cube([10,10,10]);
}
}
module modC(){
difference(){
    union(){
        translate([10,0,-10])
rotate([0,-90,0])
rotate([0,0,90]){
        
linear_extrude(height=10)
import("tubeAdaptorLite.dxf",$fn=32);
linear_extrude(height=20)
import("tubeAdaptorLiteHigh.dxf",$fn=32);
    }}
for(yy=[6,-6]){
  translate([-5,yy,-10]){
  cylinder(d=3.7,h=15,$fn=16);
  }
  }
  translate([5,-2,-21])
  rotate([90,0,0])
  cylinder(d=6.4,h=15,$fn=6);
  
  translate([5,-5,-21])
  rotate([-90,0,0])    
  cylinder(d=3.7,h=15,$fn=16);
  
}
}


module modD(){



difference() {
  union() {

    color("blue")
    translate([-10, -10, 0])
    cube([20, 20, 4]);
    color("aqua")
    translate([0, -9, 0])
    cube([35, 4, 22]);

  }


  for(yy=[6,-6]){
  translate([-5,yy,-1]){
  cylinder(d=3.7,h=15,$fn=16);
      translate([0,0,3.5])
  cylinder(d=6.4,h=15,$fn=6);
  }
  }
  for(xx=[21,29,13])
  for(zz=[0,22])
  translate([xx,0,zz])
  rotate([90,0,0])
  cylinder(d=5,h=50,$fn=12);
  
}
}


//modA();
//
modC();
//modB();
//modD();