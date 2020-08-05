l=10;
irw=10;
irl=-14.5;
ird=10;

module irScaffold(){
	linear_extrude(height=2.5)
	polygon(points=[[irw-6,0],[irw+3,irl],[irw,irl],[irw-8,irl+ird],[-irw+8,irl+ird],[-irw,irl],[-irw-3,irl],[-irw+6,0]]);
}

module irHolder(){
		rotate([0,90,0])
		translate([-9,-13.2,10]){
		difference(){
			cylinder(h=3,d=5,$fn=30);
			translate([0,0,-0.5])
			cylinder(h=4,d=2.85,$fn=40);
			//IR Holder crack
			translate([-0.5,-5,-3])
			cube([1,5,10]);
		}
	}
}

module screwedHolder(){
	difference(){
		union(){
			cylinder(h=20,d=5,$fn=30);
			translate([0,-3,0]){
				cylinder(h=8,d=11,$fn=30);
				translate([-5.5,-13,0])
				cube([11,13,8]);
			}
			

		}
		// color([0,0,1,1])
		translate([-0.8,-23,-1])
			cube([1.6,15,12]);
		
		// color([1,0,0,1])
		translate([-3.5,-8,-1])
			cube([7,2,12]);
		color([1,0,0,1])
		translate([0,-6.1,-1]){
			cylinder(h=12,d=7,$fn=20);
		}
		// color([1,0,0,1])
		translate([0,-7.5,-1]){
			cylinder(h=12,d=7,$fn=20);
		}
		
		translate([0,-6.8,3])
		sphere(d=7.5,$fn=20);
		
		color([1,1,0,1])
		translate([-8,-13.5,4])
		rotate([0,90,0])
		cylinder(h=20,d=3.1,$fn=30);
		
		color([0,1,1,1])
		translate([-12,-13.5,4])
		rotate([0,90,0])
		cylinder(h=10,d=6.35,$fn=6);
		
		color([0,1,1,1])
		translate([2,-13.5,4])
		rotate([0,90,0])
		cylinder(h=10,d=6.35,$fn=6);
		
			translate([4.9,-9,1.5])
			rotate([90,0,90])
			// color([0,1,0])
			linear_extrude(height=5)
			text("ZX",font="sans",size=4);
			
	}

}

module feedBody(){
difference(){
	union(){
		translate([0,0,25])
		sphere(d=8,$fn=25);
		cylinder(d=5,h=25,$fn=50);
		//odor tube out
		rotate([90,0,0]){
			translate([0,15,-7])
			cylinder(h=11,d=7,$fn=40);
			//water tube out
			translate([0,9,-8])
			cylinder(h=8,d=7,$fn=40);
			translate([0,10,0])
			cylinder(h=10,d1=3.8,d2=1.9,$fn=40);
		}
	
		//lick sphere
		translate([0,-10,10])
		sphere(d=2.5,$fn=40);
	}
	
	//odor tube inner
	translate([0,l+7,15])
	rotate([90,0,0])
	cylinder(h=24,d=4,$fn=30);

	//water tube posterior inner
	translate([0,l+4,9])
	rotate([90,0,0])
	cylinder(h=11,d=4,$fn=30);
	
	//water tube anterior inner
	translate([0,l+6,10])
	rotate([90,0,0])
	cylinder(h=30,d=0.9,$fn=20);
	
}
}



module wiskerPuff(){
puffx=-0.7;
puffy=0.7;
	translate([5.5,6.5,15])
	rotate([90,0,0]){
	difference(){
		union(){
			translate([puffx,puffy,5])
			//posterior puff tube
			color([0,0,1])
			cylinder(h=8,d=3.6,$fn=16);
			//puff Tube Adaptor
			cylinder(h=10,d=7,$fn=24);
			translate([puffx+0.4,puffy,13.5])
			rotate([10,30,0])
			//anterior puff tube
				color([0,0,1])
				cylinder(h=4,d=3.6,$fn=16);
			translate([puffx+0.1,puffy,13])
			//puff sphere
				color([0,0,1])
				sphere(d=4,$fn=36);
			}
			translate([0,0,-0.5])
			//adaptor
		cylinder(d=4,h=9,$fn=32);
		translate([puffx,puffy,-1])
		//posterior puff tube
		cylinder(h=14.5,d=2,$fn=12);
		
		translate([puffx+0.4,puffy,13.5])
			rotate([10,30,0])
			translate([0,0,-1])
			// anterior puff tube
				cylinder(h=6,d=2,$fn=16);
		
		}
	}

}
		
difference(){
	union(){
		translate([0,40,0])
			screwedHolder();
		feedBody();
		// IR Tube Holder
		translate([0,1,0]){
			rotate([-30,0,0])
			irScaffold();
			irHolder();
			mirror([1,0,0]){
				irHolder();
			}
		}
		
		wiskerPuff();
		mirror([1,0,0]){
			wiskerPuff();
		}
	}
}
	
