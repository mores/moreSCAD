module fourVoltBattery(scale)
{
	translate([0,0,0]) rotate([0,0,0])
	
	color("black" ) cylinder(h=8,r=12);
	
	difference()
	{
		translate( [0,0,8] ) cylinder(h=70,r=12);
		translate( [-7,10,8] ) cube( [14,5,71] );
	}

};
