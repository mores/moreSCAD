use <moreSCAD/general/centerLines.scad>

_hole_offset = 3.2;
_hole_spacing = 24.3;
_lcd = [26.5,30,1.7];
_pcb = [30.4, 38.5, 1.7];
_space_between_holes = 24.3;

function get_HoleOffset() = _hole_offset;
function get_HoleSpacing() = _hole_spacing;
function get_Lcd() = _lcd;
function get_Pcb() = _pcb;

module oneThree() {

	$fn=50;

	translate([2,2.8,1.7]) cube_center_lines( _lcd, center=false );
	color( "black" ) translate([2,2.8,1.7]) cube( _lcd );

	color( "gray" ) translate([3,32.8,1.7]) cube( [24, 0.8, 0.8] );

	cube_center_lines( [30.5, 38.5, 1.7], center=false );
	difference()
	{
		color( "green" ) cube( _pcb );
		color( "red" ) translate( [_hole_offset,36,-1] )  cylinder(h=8,d=4.7);
		color( "red" ) translate( [_hole_offset + _hole_spacing,36,-1] )  cylinder(h=8,d=4.7);
	}

	translate( [9.8,34.5,-4] ) cube_center_lines( [11,4,4], center=false );
	translate( [9.8,34.5,-4] ) color( "white" ) cube( [11,4,4] );
}
