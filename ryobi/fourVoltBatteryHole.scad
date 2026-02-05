module fourVoltBatteryHole(scale)
{
	translate([0,0,0]) rotate([0,0,0])
	
	difference()
	{
		translate( [0,0,0] ) cylinder(h=78,r=13);
		translate( [-8,11,-1] ) cube( [16,5,80] );
	}

};
