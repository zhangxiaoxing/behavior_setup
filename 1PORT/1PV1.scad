l=10;
irw=10;
irl=-14.5;
ird=10;

module irScaffold(){
	linear_extrude(height=2.5)
	polygon(points=[[irw-6,0],[irw+2,irl],[irw,irl],[irw-8,irl+ird],[-irw+8,irl+ird],[-irw,irl],[-irw-2,irl],[-irw+6,0]]);
}
module irHolder(){

		rotate([0,90,0])
		translate([-9,-13.2,10])
		difference(){
			cylinder(h=3,d=5.5,$fn=40);
			translate([0,0,-0.5])
			cylinder(h=4,d=2.85,$fn=40);
		}	
}
module upperHolder(){
	translate([0,25,7.5]){
		difference(){
			union(){
				//main shaft
				cylinder(d=5,h=30,$fn=40);
				translate([-7,0,0])
					rotate([0,90,0]){
						cylinder(d=15,h=14,$fn=60);
					}

			}
			translate([0,10,0])
			rotate([90,0,0])
			cylinder(d=6.6,h=20,$fn=40);
			
			translate([-3.3,-10,-9])
			cube([6.6,20,10]);

			translate([0,0,-5])
			sphere(d=7.5,$fn=20);
			
			translate([6.5,-2,-2])
			rotate([90,0,90])
			linear_extrude(height=5)
			text("ZX",font="serif",size=5);
		}
	}
}

		
difference(){
	union(){

		upperHolder();
		translate([0,0,25])
		sphere(d=8,$fn=25);
		cylinder(d=5,h=25,$fn=60);
		//odor tube out
		rotate([90,0,0]){
			translate([0,15,-7])
			cylinder(h=11,d=7,$fn=60);
			//water tube out
			translate([0,9,-8])
			cylinder(h=8,d=7,$fn=60);
			translate([0,10,0])
			cylinder(h=10,d1=3.8,d2=1.9,$fn=40);
		}
		//joint
		// translate([-2.5,0,40])	
		// rotate([0,90,0]){
			// cylinder(d=discD,h=2.5,$fn=40);
		// }
		
		//lick sphere
		translate([0,-10,10])
		sphere(d=2.5,$fn=40);
		
		//IR Tube Holder
		translate([0,1,0]){
		rotate([-30,0,0])
		irScaffold();
		irHolder();
		mirror([1,0,0]){
			irHolder();
		}
		}
	}
	
	//odor tube inner
	translate([0,l+7,15])
	rotate([90,0,0])
	cylinder(h=24,d=4,$fn=20);

	//water tube posterior inner
	translate([0,l+6,9])
	rotate([90,0,0])
	cylinder(h=11,d=4,$fn=20);
	
	//water tube anterior inner
	translate([0,l+6,10])
	rotate([90,0,0])
	cylinder(h=30,d=0.9,$fn=20);
	
	//IR Holder crack
	translate([-25,-18,8.5])
	cube([50,5,1]);
	
	//joint
	// translate([0,0,40])	
		// rotate([0,90,0]){
			// cylinder(d=discD,h=2.5,$fn=40);
			// translate([0,0,-10])
			// cylinder(d=6,h=20,$fn=40);
		// }
	
	// IR tunnel
	// rotate([0,90,0])
	// translate([-9,-12.5,-25])
	// cylinder(h=50,d=2,$fn=20);
	
	}
