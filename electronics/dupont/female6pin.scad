use <femaleBottom.scad>
use <femaleLeft.scad>
use <femaleRight.scad>

module dupontFemale6pin(scale) { 

	color( "green" ) translate( [0,0,0] ) rotate( [0,0,0] ) femaleLeft();
	color( "green" ) translate( [10.5,0,0] ) rotate( [0,0,0] ) femaleRight();

	color( "green" ) translate( [0,0,0] ) rotate( [0,0,0] ) femaleBottom();
	color( "green" ) translate( [5.25,0,0] ) rotate( [0,0,0] ) femaleBottom();
	color( "green" ) translate( [10.5,0,0] ) rotate( [0,0,0] ) femaleBottom();
}
