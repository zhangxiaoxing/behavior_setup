module beam() {
    waterPort=[2.9,1,-5];
    irTrans=[7.2,2,6];
    irRotate=[110.5,0,-49.5];

    module oneside() {
        difference() {
            union() {
                //Ir Holder
                color("gray")
                translate(irTrans)
                rotate(irRotate) {
                    translate([0,0,-5])
                    difference(){
                    cylinder(d=6,h=33,$fn=20);
                    translate([0,0,8])
                    cylinder(d=8,h=17.5,$fn=20);    
                    }
                }
                
                
                translate([25,-4.5,7])
                rotate([90,00,-30]) 
                    translate([0,0,0])
                difference(){
                    color("orange")
                    cylinder(d=6,h=3,$fn=20);
                    translate([0,0,-1])
                    cylinder(d=3.1,h=6,$fn=20);
                }
                

                //remote IR scaffold
                color("LightGreen")
                translate([-10,4,-2])
                rotate([90,0,0])
                cylinder(h=15,d=3,$fn=10);
                
                color("LightBlue")
                translate([-6,0,-6])
                rotate([70,-50,0])
                translate([0,0,-5])
                cylinder(h=20,d=3,$fn=10);
                

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
                translate([11.5,0,0])
                rotate([-90,0,0])
                cylinder(h=8,d=7,$fn=20);

                //water tube scaffold
                color("yellow")
                translate([2,12,-8])
                rotate([0,60,-40])
                cylinder(h=30,d=3,$fn=10);

                //local ir holder
//
                color("blue")
                translate([0,8,7])
                rotate([30,90,0])
                cylinder(h=26,d=3,$fn=10);
                
                color("Indigo")
                translate([4,4,10])
                rotate([0,135,0])
                translate([0,0,4])
                cylinder(h=7,d=3,$fn=10);


            }
            
            translate([5,0,0])
            rotate([90,0,-45])
            translate(waterPort)
            cylinder(d1=1.8,d2=0.9,h=11.5, $fn=20);

            //IR remove
            
            translate(irTrans)
            rotate(irRotate) {
                translate([0,0,-6])
                cylinder(d=3.1,h=40,$fn=20);
            }

        }
    }

    oneside();
    mirror([1,0,0]) {
        oneside();
    }
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
            translate([xx,1,0])
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

