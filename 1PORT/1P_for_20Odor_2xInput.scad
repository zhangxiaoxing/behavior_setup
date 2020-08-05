l=10;
irw=7.5;
irl=-14.5;
ird=10;

module irScaffold(){
	linear_extrude(height=2.5)
	polygon(points=[[irw-6,0],[irw+3,irl],[irw,irl],[0,irl+ird],[0,irl+ird],[-irw,irl],[-irw-3,irl],[-irw+6,0]]);
}
module irHolder(){

		rotate([0,90,0])
		translate([-9,-13.2,7.5])
		difference(){
			cylinder(h=3,d=6,$fn=30);
			translate([0,0,-0.5])
			cylinder(h=4,d=2.85,$fn=40);
		}	
}

		
		
difference(){
	union(){

		cylinder(d=5,h=15,$fn=50);
		//odor tube out
		rotate([90,0,0]){
			translate([0,15.5,-8])
			cylinder(h=11,d=7,$fn=40);
            hull(){
                for(xx=[-2.5,2.5]){
                    translate([xx,15.5,-8])
                        cylinder(h=8,d=7,$fn=40);
                }
            }
			//water tube out
			translate([0,9.5,-8])
			cylinder(h=8,d=7,$fn=40);
			translate([0,10,0])
			cylinder(h=10,d1=3.8,d2=1.9,$fn=40);
		}

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
                
        //strenthen link
        translate([-6,-6,5.5])
        rotate([0,90,0])
        cylinder(h=12,d=2,$fn=12);
        
        //leg
        
        translate([-7,-3,-1]){
            cube([14,43,5.1]);
        }

	}
	
	//odor tube inner
	translate([0,l-8,15.5])
	rotate([90,0,0])
	cylinder(h=5.5,d1=3.9,d2=4.1,$fn=30);
    for(yy=[2.5,-2.5]){
    translate([yy,l-1.55,15.5])
        rotate([90,0,0])
        cylinder(h=6.5,d1=4.1,d2=3.9,$fn=30);
    }
    hull(){
        for(yy=[2.5,-2.5]){
        translate([yy,l-6.5,15.5])
            rotate([90,0,0])
            cylinder(h=2,d=4,$fn=30);
        }
    }

//    translate([0,l-7.5,15.5])
//        cylinder(h=6.5,d=4,$fn=30);

	//water tube posterior inner
	translate([0,l+4,9.5])
	rotate([90,0,0])
	cylinder(h=11,d=4,$fn=30);
	
	//water tube anterior inner
	translate([0,l+6,10])
	rotate([90,0,0])
	cylinder(h=30,d=0.9,$fn=20);
	
	//IR Holder crack
	translate([-25,-18,8.5])
	cube([50,5,1]);
    
    
	//Leg hole
    hull(){
    translate([0,15,-10])
        cylinder(d=4,h=15,$fn=12);
    translate([0,35,-10])
        cylinder(d=4,h=15,$fn=12);
    }

	
	
	}
