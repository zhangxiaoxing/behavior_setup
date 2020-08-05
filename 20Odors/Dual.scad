use <tubeCore.scad>;



module odorAdaptor()
{
    difference(){
        union(){
        intersection(){
            sphere(r=13,$fn=29);
            union(){
            rotate([-60,0,0])
                translate([0,-1,-1])
                cylinder(d1=7,d2=60,h=15);
            translate([0,0,0.5])
                rotate([115,0,0])
                    translate([0,0,-3])
                    cylinder(d=6,h=10,$fn=24);  
            }
        }
               
    }

        #tubeCore(15,1.5,0.32);
        translate([0,0,0.5])
            rotate([115,0,0])
                translate([0,0,-5])
                    cylinder(d1=3.5,d2=4.2,h=13,$fn=28);
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


        translate([0,-3,15])
            rotate([-22.5,0,0])
                odorAdaptor();
        


}