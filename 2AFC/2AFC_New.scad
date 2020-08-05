module slidingSlot(){
	difference(){
		rotate_extrude(){
			translate([40,0,0])
			polygon(points=[[0,0],[16,0],[16,10],[11,10],[11,7],[13,4],[13,3],[3,3],[3,4],[5,7],[5,10],[0,10]]);
		}
		translate([0,0,-5])
		linear_extrude(height=20)
		polygon(points=[[60,60],[-60,60],[0,0],[-60,-60],[60,-60]]);
	}
}

module waterNeedleHolder(xx,yy,zz){
	difference(){
		union(){
			// translate([5,0,zz+8])
			// rotate([90,0,90])
			// linear_extrude(height=15)
			// polygon(points=[[1,0],[1,5],[2,5],[0,12],[-2,5],[-1,5],[-1,0]]);
			
			//Top Scaffold Adaptor
			translate([10,0,zz]){
				cylinder(d=4.9,h=50,$fn=20);
				cylinder(d1=13,d2=5,h=35,$fn=30);
			}
		
			//Base
			translate([xx,yy,zz])
			linear_extrude(height=10)
			polygon(points=[[20,13.5],[20,-13.5],[0,-25],[0,25]]);

			//Odor Tube
			translate([xx,yy,zz+10])
			rotate([0,90,0])	
			cylinder(h=19,d=6,$fn=20);
			
			//Back Odor Tube Adaptor
			// translate([xx,yy,zz+9])
			// rotate([0,-90,0])
			// rotate_extrude($fn=20)
			// polygon(points=[[0,0],[1.2,0],[1.2,4],[1.4,4],[0,8]]);			
		}
		
		//Bottom Groove
		translate([xx,yy,zz-5])
		linear_extrude(height=10)
		polygon(points=[[15,6],[15,-6],[0,-14],[0,14]]);

		// //Nose Groove
		// translate([xx+18,yy,zz+16])
		// rotate([0,90,0])
		// cylinder(h=20,d=20,$fn=80);
		
		// //Odor Tube
		// translate([xx+5,yy,zz+9])
		// rotate([0,90,0])
		// cylinder(h=32,d=2.5,$fn=20);
		
		//Odor Tube
		translate([xx-15,yy,zz+10])
		rotate([0,90,0])
		cylinder(h=60,d=4,$fn=20);
		
		//Left Needle Slot
		translate([xx-18,yy+30,zz+5])
		rotate([90,0,60]){
			cylinder(d=1.2,h=55,$fn=10);
			translate([-0.4,0,0])
			cube([0.8,10,55]);
		}
		
		//Right Needle Slot
		translate([xx-18,yy-30,zz+5])
		rotate([-90,0,-60]){
			cylinder(d=1.2,h=55,$fn=10);
			translate([-0.4,-10,0])
			cube([0.8,10,55]);
		}
	}
	
	translate([2,0,zz+5]){
		cylinder(d1=4,d2=0.5,h=3.4,$fn=20);
	}
}

module measureCube(){
	translate([29,-2.25,0])
	cube([20,4.5,4.5]);
}


module functionColumn(){
	
}

module mousePlatform(){
	translate([0,-100,0])
	color("grey",1.0){
		cube([200,200,10]);
		translate([60,50,0])
		cube([20,100,20]);
	}
	translate([50,0,37.5])
	rotate([0,90,0])
	{
		difference(){	
			difference(){
				color("white",0.7){
					cylinder(d=45,h=150);
				}
				translate([0,0,-10])
				cylinder(d=35,h=170);
			}
			translate([-30,-50,-10])
			cube([20,100,170]);
		}
	}
}


// mousePlatform();
// translate([70,0,20])
// slidingSlot();

waterNeedleHolder(0,0,30);

//measureCube();