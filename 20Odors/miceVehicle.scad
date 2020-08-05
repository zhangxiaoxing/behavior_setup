lll=150;
www=70;

dd=47;
hh=38;



difference(){
    union(){
        
        //fake water tube
//        translate([-10,0,51])
//            rotate([0,90,0])
//                cylinder(d1=6,d2=2,h=10);
        
        //Main tube
        difference(){
            union(){
                translate([0,0,dd/2+hh])
                    rotate([0,90,0])
                        cylinder(d=dd,h=lll);
                //feet
                translate([20,-www/2,30])
                    cube([15,www,10]);
                translate([lll-55,-www/2,30])
                    cube([15,www,10]); 
       
               //head fix base
            
            translate([0,-dd/2-3,hh+10])
                cube([15,dd+6,dd/2-10+5]);
            }
            
        //Main tube open    
        translate([-2,0,dd/2+hh])
            rotate([0,90,0])
                cylinder(d=dd-2,h=lll);
            
        translate([-1,-50,dd+hh-10])
            cube([lll+2,100,20]);
            
        translate([-1,-50,dd/2+hh+3])
            cube([20,100,20]);
        
  

        }
        
        //head fix
        translate([0,dd/2-13,hh+dd/2-0.1+2])
            cube([15,18,3]);


        
        //bottom slab
        translate([20,-www/2,0])
            cube([lll-60,www,2.5]);
        //head fix trans
        translate([0,-dd/2-14.9,hh+dd/2-0.1+2])
            cube([15,17,3]);
        
        translate([7.5,-dd/2-12.9,hh+dd/2-0.1])
            cylinder(d=3,h=8,$fn=12);
        

    }
    
    //supporting screw holes
    for(xx2=[-www/2+7.5,www/2-7.5])
        for(yy2=[27.5, 42.5, lll-62.5, lll-47.5]){
             translate([yy2,xx2,-1])
                cylinder(d=3,h=60,$fn=15);
            
             translate([yy2,xx2,29])
                cylinder(d=6.4,h=3,$fn=6);
        }
    
    
    
    //headfix screw hole
    for(yy4=[dd/2-7.5,-dd/2-6]){
        translate([7.5,yy4,hh+15])
            cylinder(d=3,h=50,$fn=15);
        translate([7.5,yy4,hh+dd/2-1])
            cylinder(d=6.4,h=3,$fn=6);
    }
    
    //shit hole
    for (xx=[lll-30:7:lll-9])
        for (yy=[-10.5:7:10.5])
            translate([xx,yy,10])
                cylinder(d=5,h=50);
        
    //magnet hole
    for (yy3=[50,80])
        translate([yy3,0,-1])
            cylinder(d=20,h=10,$fn=20);
    
    
}


//head fix slab
difference(){
    union(){
        hull(){
            cylinder(d=9,h=1.5,$fn=12);
            translate([0,-25,0])
                cylinder(d=9,h=1.5,$fn=12);
        }
        translate([0,3,0])
            cylinder(d=2.8,h=4,$fn=12);
    }
    hull(){
        for(yy5=[-35,-7])
            translate([0,yy5,-1])
                cylinder(d=3.1,h=5,$fn=12);
        
    }
}