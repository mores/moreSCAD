use <moreSCAD/electronics/pinHeader.scad>
use <moreSCAD/seeed/groveConnector.scad>

module groveShieldXIAO()
{
	difference()
	{
		union()
		{
			color( [1,1,1] ) cube( [25,58.2,1] );

			cube( [25,1,1] );
			translate( [0,58.2-20.2,0] ) cube( [25,20.2,1] );

			cube( [1.6,58.2,1] );
			translate( [25 - 1.6 ,0,0] ) cube( [1.6,58.2,1] );
		}
		translate( [2.3,1.8,0] ) cylinder( h=2, r=0.8 );
		translate( [25-2.3,1.8,0] ) cylinder( h=2, r=0.8 );

		translate( [2.3,37.2,0] ) cylinder( h=2, r=0.8 );
		translate( [25-2.3,37.2,0] ) cylinder( h=2, r=0.8 );
	}

	rotate([0,0,90]) translate([48, 2.54 * -8,2]) pinHeader( 10, 7, 7, 1);
	rotate([0,0,90]) translate([48, 2.54 * -2,2]) pinHeader( 10, 7, 7, 1);

	rotate([90,0,0]) translate([6, 2,-4]) groveConnector();
	rotate([90,0,0]) translate([19,2,-4]) groveConnector();

	rotate([90,0,0]) translate([6, 2,-13]) groveConnector();
	rotate([90,0,0]) translate([19,2,-13]) groveConnector();

	rotate([90,0,0]) translate([6, 2,-22]) groveConnector();
	rotate([90,0,0]) translate([19,2,-22]) groveConnector();

	rotate([90,0,0]) translate([6, 2,-31]) groveConnector();
	rotate([90,0,0]) translate([19,2,-31]) groveConnector();
}
