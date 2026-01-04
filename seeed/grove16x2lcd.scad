use <moreSCAD/seeed/groveConnector.scad>

module grove16x2lcd()
{
	rotate([0,0,0]) translate([6,55,5.3]) groveConnector();

	$fn=50;

	difference()
	{
		color( "blue" ) cube( [40,80,1] );
		translate( [2,2,0] ) cylinder( h=2, r=1 );
		translate( [40-2,2,0] ) cylinder( h=2, r=1 );

		translate( [2,80-2.2,0] ) cylinder( h=2, r=1 );
		translate( [40-2,80-2,0] ) cylinder( h=2, r=1 );
	};

	color( "black" ) translate( [12,7,0] )  cube( [24,70,8] );

	color( "gray" ) translate( [15,3,0] )  cube( [18,4,4] ); 
}
