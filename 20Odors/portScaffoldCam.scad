difference(){
    union(){
    translate([-12.5,-30,0])
        cube([25,60,37+32+5]);
//    translate([-17.5,-8,0])
//        cube([35,16,38]);
    }
    translate([-15,-25,5])
        cube([30,50,37+32-5]);
//    translate([-14,-5.5,36.5])
//        cube([20,11,20]);
    
    translate([6,-15,-1])
        cylinder(d=6,h=10,$fn=24);
    translate([6,15,-1])
        cylinder(d=6,h=10,$fn=24);
    
    translate([-5,-15,10+42])
        cylinder(d=4,h=50,$fn=24);
    translate([-5,15,42])
        cylinder(d=4,h=50,$fn=24);    
    
    
    translate([-5,0,62])
        cylinder(d=4,h=50,$fn=24);
    
    translate([0,-50,13.3])
        rotate([-90,0,0])
            cylinder(d=4,h=100,$fn=24);
    translate([0,-50,26.7])
        rotate([-90,0,0])
            cylinder(d=4,h=100,$fn=24);
    
}