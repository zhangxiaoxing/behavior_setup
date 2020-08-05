module beam() {
    waterPort=[2.9,1,-5];
    
    module oneside() {
        difference() {
            union() {
                //water tubes
                tubeLen=9.75;
                translate([5,0,0])
                rotate([90,0,-45]) {
                    // color([0,1,1])
                    translate(waterPort) {
                        cylinder(d1=3.8,d2=1.9,h=tubeLen, $fn=20);
                        translate([0,0,tubeLen-0.25]) {
                            sphere(d=2.25,$fn=24);
                        }
                    }
                }

                //water tube out
                translate([11.5,0,1])
                rotate([-90,0,0])
                cylinder(h=8,d=7,$fn=20);

                //water tube scaffold
                color("yellow")
                translate([2,12,-8])
                rotate([0,60,-40])
                cylinder(h=15,d=3,$fn=10);

                //local ir holder

                
                color("Indigo")
                translate([0,5,1])
                rotate([0,90,0])
                cylinder(h=10,d=3,$fn=10);
                
                color("blue")
                translate([-2,-6,-1])
                rotate([0,0,-45])
                cube([1.7,5.9,4.7]);


            }

             
            #translate([5,0,0])
            rotate([90,0,-45])
            translate(waterPort)
            cylinder(d1=1.8,d2=0.9,h=11.5, $fn=20);

        }
    }

for (mm=[0])
    mirror([mm,0,0])
    oneside();

}

module scaffoldHull() {
        cylinder(d=5,h=15,$fn=30);
        //odor tube out
        rotate([90,0,0]) {
            translate([0,15,-7])
            cylinder(h=11,d=7,$fn=40);
        }
}





difference() {
    union() {
        translate([0,5,-8.5])
        //central column etc
        scaffoldHull();
        beam();
        //feet
        color("brown")
        translate([ -7, 1, -9.5 ]) { cube([ 14, 25, 5.1 ]); }
        
        
    }
    //odor remove
    rotate([90,0,0])
    translate([0,6.5,-16])
    cylinder(h=50,d=4,$fn=40);
    
    
    //water tube out remove
    for(xx=[11.5,-11.5])
            translate([xx,1,1])
            rotate([-90,0,0])
            // translate([0,0,2])
            cylinder(h=10,d=4,$fn=40);
    
    
      // Leg hole
  hull()
  {
    translate([ 0, 15, -10 ]) cylinder(d = 4, h = 15, $fn = 12);
    translate([ 0, 20, -10 ]) cylinder(d = 4, h = 15, $fn = 12);
  }

}

