difference(){
//    union(){
//        color("red")
//    translate([-7.5,-25,0])
//        cube([15,50,22]);
    //translate([-7.5,-8,0])
      //  cube([15,16,38]);
//    }
//    translate([-10,-21,4])
//        cube([20,42,14]);
    //translate([-10,-5.5,36.5])
      //  cube([20,11,20]);
    translate([-10,-30,0])
    rotate([90,0,90])
    linear_extrude(height=20)
        import("scaffoldShort.dxf");
    
    #translate([0,-15,-1])
        cylinder(d=6,h=10,$fn=24);
    #translate([0,15,-1])
        cylinder(d=6,h=10,$fn=24);
    
    translate([0,-15,10])
        cylinder(d=4,h=50,$fn=24);
    translate([0,15,10])
        cylinder(d=4,h=50,$fn=24);    
    
    
    translate([0,0,10])
        cylinder(d=4,h=50,$fn=24);
    
    translate([0,-50,11])
        rotate([-90,0,0])
            cylinder(d=4,h=100,$fn=24);
//    translate([0,-50,26.7])
//        rotate([-90,0,0])
//            cylinder(d=4,h=100,$fn=24);
    
}