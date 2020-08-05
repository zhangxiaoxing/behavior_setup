module tubeCore (r,dd,delta)
{

    angs=[
[6.852, 137.508],
[15.359, 52.523],
[22.864, 105.047],
[26.766, 20.062],
[28.529, 157.570],
[31.788, 72.585],
[36.182, 125.109],
[38.870, 40.124],
[42.632, 92.648],
//[44.997, 7.663],
[46.143, 145.171],
[48.372, 60.186],
[51.579, 112.710],
[53.640, 27.725],
[54.650, 165.233],
[56.633, 80.248],
[59.526, 132.772],
[61.408, 47.787],
[64.169, 100.311],
//[65.975, 15.326],
[66.868, 152.834],
[68.636, 67.849],
[71.251, 120.373],
[72.971, 35.388],
//[73.825, 172.896],
[75.522, 87.911],
[78.045, 140.435],
[79.713, 55.450],
[82.200, 107.974],
//[83.849, 22.989],
//[84.672, 160.497],
[86.314, 75.512],
[88.772, 128.036],
[90.409, 43.051],
[92.866, 95.575],
//[94.506, 10.590],
//[95.328, 148.098],
[96.975, 63.113],
[99.456, 115.637],
//[101.120, 30.652],
//[101.955, 168.160],
[103.634, 83.175],
   
    ];
    for(a=angs)
    {
        rotate([0,a[0],a[1]])
            translate([0,0,2])
            cylinder(h=r,d1=dd-delta,d2=dd+delta, $fn=32);
        
    }
}

tubeCore(20,1.65,0.225);