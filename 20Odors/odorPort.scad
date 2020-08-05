use <tubeCore.scad>;



module odorAdaptor()
{
    difference(){
        union(){
        intersection(){
            sphere(r=9,$fn=29);
            translate([0,-10.5,-1])
                rotate([-60,0,0])
                    cylinder(d=18,h=100);
            union(){
            translate([0,8,6])
                rotate([0,0,0])
                    rotate([130,0,0])
                        cylinder(d1=45,d2=0,h=10.5,$fn=4);
            translate([0,0,0.5])
                rotate([115,0,0])
                    translate([0,0,-3])
                    cylinder(d=6,h=3,$fn=24);  
            }
        }
               
    }

        tubeCore(20,1.65);
        translate([0,0,0.5])
            rotate([115,0,0])
                translate([0,0,-5])
                    cylinder(d=4.1,h=20,$fn=28);
     }
    
   

}

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
		translate([-9,-13.2,10])
		difference(){
			cylinder(h=3,d=6,$fn=12);
			translate([0,0,-0.5])
			cylinder(h=4,d=2.85,$fn=12);
		}	
}

		
		
difference(){
	union(){
        //center shaft

        translate([0,0,-1])
            cylinder(d=5,h=11,$fn=12);
        
        //odor adaptor

        translate([0,-3,15])
            rotate([-22.5,0,0])
                odorAdaptor();
        
        //leg
        
        translate([-5,-3,-1]){
            cube([10,23,3.1]);
        }

		//odor tube out
		rotate([90,0,0]){
			//water tube out
			translate([0,10,-8])
			cylinder(h=8,d=7,$fn=15);
			translate([0,10,0])
			cylinder(h=10,d1=3.8,d2=2.2,$fn=15);
		}

		
		//lick sphere
		translate([0,-10,10])
		sphere(d=2.5,$fn=20);
		
		//IR Tube Holder
		translate([0,1,0]){
		rotate([-30,0,0])
		irScaffold();
		irHolder();
		mirror([1,0,0]){
			irHolder();
		}
		}
                
                //strengthen link
//                color([1,0,0])
                translate([-8.5,-6,5.5])
                rotate([0,90,0])
                cylinder(h=17,d=2,$fn=12);
	}
	


	//water tube posterior inner
	translate([0,l+4,10])
	rotate([90,0,0])
	cylinder(h=11,d=4,$fn=15);
	
	//water tube anterior inner
	translate([0,l+6,10])
	rotate([90,0,0])
	cylinder(h=30,d=1.1,$fn=12);
	
	//IR Holder crack
	translate([-25,-18,8.5])
	cube([50,5,1]);
    
    
    //Leg hole
    translate([0,15,-10])
        cylinder(d=4,h=15,$fn=12);

	}
    