use <topMiddle.scad>
use <topLeft.scad>
use <topRight.scad>

module dupontTop6pin(scale) { 

	color( "red" ) translate( [0,0,0] ) rotate( [0,0,0] ) dupontTopLeft();
	color( "red" ) translate( [10.5,0,0] ) rotate( [0,0,0] ) dupontTopRight();

	color( "red" ) translate( [0,0,0] ) rotate( [0,0,0] ) dupontTopMiddle();
	color( "red" ) translate( [5.25,0,0] ) rotate( [0,0,0] ) dupontTopMiddle();
	color( "red" ) translate( [10.5,0,0] ) rotate( [0,0,0] ) dupontTopMiddle();
}
