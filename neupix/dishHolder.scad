difference(){
    union(){
translate([-40,0,0])
cube([80,4,4]);

translate([-20,0,0])
cube([40,20,4]);


    translate([0,22,0])
    cylinder(d=40,h=5,$fn=60);
    }

    translate([0,22,2])
    cylinder(d=36.5,h=10,$fn=60);    
        translate([0,22,-2])
    cylinder(d=32.5,h=10,$fn=60);
    
}

