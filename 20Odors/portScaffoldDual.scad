module slopeScaffold(){
            intersection(){
            translate([-7.5,-55,0])
                cube([15,110,37]);
            translate([-7.5,-35,0])
            rotate([30,0,0])
                cube([15,2,100]);
    }
}

union(){
    difference(){
        union(){
        translate([-7.5,-36,0])
            cube([15,72,2]);
        translate([-7.5,-55,35])
            cube([15,110,2]);
        translate([-18,-55,35])
            cube([17,55,2]);
//        translate([-7.5,-30-10,35])
//            cube([15,20,4]);
//        translate([-7.5,30-10,35])
//            cube([15,20,4]);
        }
//        translate([-10,-53,2])
//            #cube([20,106,32.5]);
//        translate([-10,-30-7.5,36.5])
//            cube([20,15,20]);
//        translate([-10,30-7.5,36.5])
//            cube([20,15,20]);
        
        
        for (yy=[-15,15]){
        
        translate([0,yy,-1])
            hull(){
                translate([0,-3,0])
                    cylinder(d=6,h=10,$fn=24);
                translate([0,3,0])
                    cylinder(d=6,h=10,$fn=24);
                }
            }
//        translate([0,-15,10])
//            cylinder(d=4,h=50,$fn=24);
//        translate([0,15,10])
//            cylinder(d=4,h=50,$fn=24);    
//        
        hull(){
        translate([-2,-30,20])
            cylinder(d=4,h=50,$fn=24);
        translate([-12,-30,20])
            cylinder(d=4,h=50,$fn=24);

        }
        hull(){
        translate([0,20,20])
            cylinder(d=4,h=50,$fn=24);
        translate([0,40,20])
            cylinder(d=4,h=50,$fn=24);
        }
        
//        translate([0,-100,10])
//            rotate([-90,0,0])
//                cylinder(d=4,h=200,$fn=24);
//        translate([0,-100,20])
//            rotate([-90,0,0])
//                cylinder(d=4,h=200,$fn=24);
        
    }
    translate([-7.5,-1,0])
    cube([15,2,37]);
    slopeScaffold();
    mirror([0,1,0])
    slopeScaffold();
}
