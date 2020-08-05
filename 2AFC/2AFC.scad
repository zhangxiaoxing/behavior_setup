/*
rotate([90,0,0])
difference(){
cylinder(h=100,r=20);
translate([0,0,-5])
cylinder(h=120,r=10);
}
*/
/*
linear_extrude(height=10,center=true,convexity=10,twist=0,slices=20,scale=1.0)*/



module tube(){
	rotate([90,0,0])
	rotate_extrude()
	rotate([0,0,90])
	translate([0,5,0])
	polygon(points=[[0,0],[150,0],[130,7],[130,5],[10,5]]);
}

module LedHolder(){
	difference(){
		cylinder(h=20,r=15);
		translate([0,0,-10]);
		cylinder(h=40,r=10);
	}
}

tube();
translate([80,0,0])
tube();
translate([-20,-80,-100])
cube([120,20,200]);

translate([0,10,40])
LedHolder();



