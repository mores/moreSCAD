use <moreSCAD/general/centerLines.scad>

_lcd = [26.5,30,1.7];
_pcb = [30.5, 38.5, 1.7];

function get_Lcd() = _lcd;

function get_Pcb() = _pcb;

module oneThree() {

	$fn=50;

	translate([2,2.8,1.7]) cube_center_lines( _lcd, center=false );
	color( "black" ) translate([2,2.8,1.7]) cube( _lcd );

	cube_center_lines( [30.5, 38.5, 1.7], center=false );
	difference()
	{
		color( "green" ) cube( _pcb );
		color( "red" ) translate( [2.5,36,-1] )  cylinder(h=8,d=4.7);
		color( "red" ) translate( [28,36,-1] )  cylinder(h=8,d=4.7);
	}

	translate( [10,34.5,-4] ) color( "white" ) cube( [11,4,4] );
}
