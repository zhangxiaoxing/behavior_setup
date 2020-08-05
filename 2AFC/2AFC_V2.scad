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

module needleSlot(xx,yy,zz){
	l=55;
	translate([xx-(l-5)*cos(30)+25,yy-sin(30)*l-2.25,zz+5])
	rotate([-90,0,-60]){
		cylinder(d=1.2,h=l,$fn=10);
		translate([-0.4,-10,0])
		cube([0.8,10,l]);
	}
}



module waterNeedleHolder(xx,yy,zz){
	narrowY=2.25+sin(30)*5+5;
	wideY=narrowY+tan(30)*25;
	
	difference(){
		union(){

			//Top Scaffold Adaptor
			translate([10,0,zz]){
				cylinder(d=4.9,h=50,$fn=20);
				cylinder(d1=13,d2=5,h=35,$fn=30);
			}
		
			//Base
			translate([xx,yy,zz])
			linear_extrude(height=10)
			polygon(points=[[25,narrowY],[25,-narrowY],[0,-wideY],[0,wideY]]);

			//Odor Tube
			translate([xx,yy,zz+10])
			rotate([0,90,0])	
			cylinder(h=19,d=6,$fn=20);

		}
		
		//Bottom Groove
		translate([xx,yy,zz-5])
		linear_extrude(height=10)
		polygon(points=[[15,tan(30)*10+narrowY-10],[15,-tan(30)*10-narrowY+10],[0,-wideY+10],[0,wideY-10]]);

		//Nose Groove
		translate([xx+18,yy,zz+16])
		rotate([0,90,0])
		cylinder(h=20,d=20,$fn=80);
		
		
		//Odor Tube
		translate([xx-15,yy,zz+10])
		rotate([0,90,0])
		cylinder(h=60,d=4,$fn=20);

		needleSlot(xx,yy,zz);
		mirror([0,1,0]) needleSlot(xx,yy,zz);

	}
	
	//Odor Tube Fixer
	translate([2,0,zz+6]){
		cylinder(d1=4,d2=0.5,h=2.4,$fn=20);
	}
}

// module measureCube(){
	// translate([29,-2.25,0])
	// cube([20,4.5,4.5]);
// }


// module functionColumn(){
	
// }

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
if (false) difference(){
	waterNeedleHolder(0,0,30);
	translate([20,-50,0])cube([100,100,100]);
}else difference(){
	waterNeedleHolder(0,0,30);
	translate([-80,-50,0])cube([100,100,100]);
}
//measureCube();