//do=42;
//
//module feet(beamZPos){
//    color("Aqua")
//    difference(){
//        union(){
//            translate([do/2-2.5,-do/2-6,0])
//                cube([2.5,30,15]);
//            translate([do/2-5,-do/2-6,beamZPos])
//                cube([5,30,2]);
//            translate([do/2-2,-do/2+8,7])
//                rotate([0,90,0])
//                    cylinder(d=3, h=6,$fn=18); 
//        }
//        
//translate([do/2-3,-do/2-1,7])
//    rotate([0,90,0])
//        cylinder(d=6.5, h=1.5, $fn=6);
//
//translate([10,-do/2-1,7])
//    rotate([0,90,0])
//        cylinder(d=3.5, h=20,$fn=18); 
//    }
//}
//
//
//
//module scaffold(){
//    color("Indigo")
//    difference(){
//    union(){
//        translate([0,0,0])
//            cube([45,17,2]);
//        cube([2.5,17,45]);
//        cube([4,17,4]);
//        
//        cube([45,2,30]);
//    }
//    translate([-1,8.5,6.5])
//        cube([15,3.5,42]);
//    translate([30,8.5,-1])
//        cylinder(d=8.5,h=10,$fn=18);
//    translate([8,-5,8])
//        cube([100,100,100]);
//}
//}
//
//color("Red")
//difference(){
//    union(){
//            cylinder(d=do,h=105);
//        translate([-1,-do/2-11,50])
//            cube([2,12,70]);
//        mirror([1,0,0])
//        feet(0);
//    }
//    translate([0,0,1.5])
//        cylinder(d=do-3,h=152);
//    
//    translate([-25,10,-1])
//        cube([50,50,152]);
//    translate([0,0,125.1])
//        cube([50,do+1,40],true);
//    
//    for (zShift=[110,120])
//    {
//    translate([-10,-do/2-6,zShift])
//        rotate([0,90,0])
//            cylinder(d=4,h=20,$fn=15);
//    }
//    for(zShit=[20,28,36])
//        for(xShit=[-8,0,8])
//            translate([xShit,0,zShit])
//                rotate([90,0,0])
//                    cylinder(d=4,h=60,$fn=15);
//    translate([-25,-72.6,41])
//        rotate([10,0,0])   
//            cube([50,50,70]);
////    
//}
//
//rotate([180,0,0])
//translate([100,0,-25])
//union(){
//    difference(){
//        union(){
//            cylinder(d=do+1,h=25);
//            translate([1,-do/2-11])
//                cube([2,12,25]);
//            translate([0,0,10])
//                feet(13);
//        }
//        translate([0,0,-1])
//            cylinder(d=do-3,h=27);
//        for (zShift=[5,15])
//        {
//            translate([-10,-do/2-6,zShift])
//                rotate([0,90,0])
//                    cylinder(d=4,h=20,$fn=15);
//        }
//                
//        translate([-25,2,-1])
//            cube([50,50,27]);
//    
//        
//
//    }
//    
//    difference(){    
//        union(){
//            for (yy=[-do/2-1,do/2-4]){
//                translate([yy,-5,10])
//                    cube([4,7,15]);
//            }
//            
//            translate([-do/2-1,2,10])    
//                    cube([12,3,15]); 
//            //TODO:HERE
//            translate([do/2-4,0.5,10])    
//                    cube([13,3,15]); 
//            
//            translate([do/2,1,17.5])    
//                rotate([-90,0,0])
//                    cylinder(d=3,h=6,$fn=15);
//        }
//        for (yy=[[-do/2+7,-6.5],[do/2+5,-8]]){
//            translate([yy[0],-3,17.5])
//                rotate([-90,0,0])
//                    cylinder(d=3.2,h=10, $fn=15);
//            translate([yy[0],yy[1],17.5])
//                rotate([-90,0,0])
//                    cylinder(d=6.5,h=10,$fn=6);
//        }
//            
//    }
//}
//
//
//
//
//for (trans=[0,80])
//    translate([trans,50,0])
//        scaffold();



module headTransFix(){
    difference(){
        union(){
            hull(){
                cylinder(d=9,h=1.5,$fn=12);
                translate([0,-18,0])
                    cylinder(d=9,h=1.5,$fn=12);
            }
            translate([0,3,0])
                cylinder(d=2.8,h=4,$fn=12);
        }
        hull(){
            for(yy5=[-35,-4])
                translate([0,yy5,-1])
                    cylinder(d=3.1,h=5,$fn=12);
            
        }
    }
}

for (xShift=[37,57]){
    translate([xShift,0,0])
    headTransFix();
}