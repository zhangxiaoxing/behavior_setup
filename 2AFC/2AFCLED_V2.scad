module beam(){
	waterPort=[2.9,1,-5];
	irTrans=[8.5,4,5.25];
	irRotate=[105,0,-45];
	
	module oneside(){
		difference(){
			union(){
				//Ir Holder
				translate(irTrans)	
				rotate(irRotate){
					// color([0,0,1])
					// cylinder(d=3,h=26,$fn=20);
					cylinder(d=6,h=3,$fn=20);
					translate([0,0,25])
					cylinder(d=6,h=3,$fn=20);
				}
				
				//remote IR scaffold
				// color([1,0,0])
				translate([-11,-13,-2])		
				rotate([-90,0,0])
				cylinder(h=15,d=3,$fn=40);
				
				
				translate([5,0,0])	
				rotate([90,0,-45]){
					// color([0,1,1])
					translate(waterPort){
						cylinder(d1=3.8,d2=1.9,h=10, $fn=20);
						translate([0,0,10]){
							sphere(d=2.5,$fn=16);
						}
					}
				}
				
				//water tube out
				translate([12.5,0,0])		
				rotate([-90,0,0])
				cylinder(h=8,d=7,$fn=40);
				
				//water tube scaffold
				translate([0,5,-7])		
				rotate([0,60,-15])
				cylinder(h=12.5,d=3,$fn=40);
				
				//local ir holder
				// color([1,0,0])
				translate([0,8,5])		
				rotate([0,90,-30])
				cylinder(h=7,d=3,$fn=40);
				
			}
			
			translate([5,0,0])	
			rotate([90,0,-45])
			translate(waterPort)
			cylinder(d1=1.8,d2=0.9,h=11.5, $fn=20);
			//water tube out
			translate([12.5,1,0])		
			rotate([-90,0,0])
			// translate([0,0,2])
			cylinder(h=10,d=4,$fn=40);
			
			
			
			translate(irTrans)	
			rotate(irRotate){
				translate([0,0,-1])
				cylinder(d=2.9,h=5,$fn=20);
				translate([0,0,24])
				cylinder(d=2.9,h=5,$fn=20);
				translate([0,-1,-1])
				cube([5,2,5]);
				translate([0,-1,24])
				cube([5,2,5]);
			}
			
			
			
			
		}
	}
	
	
	
	oneside();
	mirror([1,0,0]){
		oneside();
	}
}

module scaffold(){
	difference(){
		union(){
			translate([0,0,25])
			sphere(d=8,$fn=25);
			cylinder(d=5,h=25,$fn=20);
			//odor tube out
			rotate([90,0,0]){
				translate([0,15,-9])
				cylinder(h=11,d=7,$fn=40);
				
			}
			// color([1,0,0])
			// translate([0,-12,8])
			// cylinder(d=1.5,h=3,$fn=12);
			// translate([0,0,2])
			// rotate([60,0,0])
			// cylinder(d=1.5,h=14.3,$fn=12);
			
		}
		rotate([90,0,0])
		translate([0,15,-8])
		cylinder(h=13,d=4,$fn=40);
	}
}




difference(){
	union(){
		translate([0,5,-8.5])
		scaffold();
		beam();
	}
	rotate([90,0,0])
	translate([0,6.5,-16])
	cylinder(h=13,d=4,$fn=40);
}
	
		