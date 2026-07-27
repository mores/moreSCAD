use <moreSCAD/general/centerLines.scad>
use <moreSCAD/heatNutInsert/m2.scad>
use <moreSCAD/electronics/swiftLCD.scad>

module oneThreeCaseBottom() {

	$fn=50;

	difference()
	{
		translate( [0,29.5,-5] ) cube( [30.4, 9, 5] );
		translate( [get_HoleOffset(),36,0] ) rotate( [180,0,0] ) nutInsertM2( spacer = false );
		translate( [get_HoleOffset() + get_HoleSpacing(),36,0] ) rotate( [180,0,0] ) nutInsertM2( spacer = false );

		translate( [9.5,33,-6] ) color( "white" ) cube( [12,6,6] );
	}

	oneThree();

}
