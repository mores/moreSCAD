use <moreSCAD/seeed/groveConnector.scad>

/*
* Screws size: M2
*/

grove16x2lcdWidth = 80;
grove16x2lcdHeight = 40;

grove16x2lcdDisplayWidth = 70;
grove16x2lcdDisplayHeight = 24;

module grove16x2lcd()
{
	rotate([0,0,0]) translate([6,55,5.3]) groveConnector();

	$fn=50;

	difference()
	{
		color( "blue" ) cube( [grove16x2lcdHeight,grove16x2lcdWidth,1] );
		translate( [2,2,0] ) cylinder( h=2, r=1 );
		translate( [grove16x2lcdHeight-2,2,0] ) cylinder( h=2, r=1 );

		translate( [2,grove16x2lcdWidth-2.2,0] ) cylinder( h=2, r=1 );
		translate( [grove16x2lcdHeight-2,grove16x2lcdWidth-2,0] ) cylinder( h=2, r=1 );
	};

	color( "black" ) translate( [12,7,0] )  cube( [grove16x2lcdDisplayHeight,grove16x2lcdDisplayWidth,8] );

	color( "gray" ) translate( [15,3,0] )  cube( [18,4,4] ); 
}
