use <moreSCAD/general/centerLines.scad>
use <moreSCAD/heatNutInsert/m2.scad>
use <moreSCAD/electronics/swiftLCD.scad>

module oneThreeCaseTop() {

	$fn=50;

	module topSolid() {
		translate( [0,33.7,1.7] ) cube( [30.4, 6, 2] );
		color( "red" ) translate( [get_HoleOffset(),36,0] )  cylinder(h=3,d=4.4);
		color( "red" ) translate( [get_HoleOffset() + get_HoleSpacing(),36,0] )  cylinder(h=3,d=4.4);
	}

	difference()
	{
		topSolid();
		color( "red" ) translate( [get_HoleOffset(),36,-2] )  cylinder(h=8,d=2);
		color( "red" ) translate( [get_HoleOffset() + get_HoleSpacing(),36,-2] )  cylinder(h=8,d=2);
	}

	//oneThree();
}
