module tube1(){
    difference(){
        union(){
            translate([0,0,-9.99])
                cylinder(d=6,h=11,$fn=28);
                
            cylinder(d=3.5,h=10,$fn=24);
        }
        translate([0,0,-10])
            cylinder(d1=4,d2=3.85,h=10,$fn=28);
        
        translate([0,0,-1.01])
            cylinder(d1=1.4,d2=1.55,h=11.1,$fn=28);
    }
}

module tube2(){
    bias=1.2;
    difference(){
        union(){
            translate([0,0,-9.99])
                cylinder(d=6,h=11,$fn=28);
            translate([bias,-0.8,0])    
                cylinder(d=3.5,h=10,$fn=24);
            translate([-bias,-0.8,0])    
                cylinder(d=3.5,h=10,$fn=24);
            translate([0,1.3,0])    
                cylinder(d=3.5,h=10,$fn=24);
        }
        translate([0,0,-10])
            cylinder(d1=4,d2=3.85,h=10,$fn=28);
        
        translate([bias,-0.8,-1.01])
            cylinder(d1=1.4,d2=1.65,h=11.1,$fn=28);
        translate([-bias,-0.8,-1.01])
            cylinder(d1=1.4,d2=1.65,h=11.1,$fn=28);
        translate([0,1.3,-1.01])
            cylinder(d1=1.4,d2=1.65,h=11.1,$fn=28);
    }
}

//tube1();
tube2();