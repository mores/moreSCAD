use <femaleBottom.scad>
use <maleBottom.scad>
use <maleLeft.scad>
use <maleRight.scad>

module dupontMale6pin(scale) { 

	color( "green" ) translate( [0,0,0] ) rotate( [0,0,0] ) dupontMaleLeft();
	color( "green" ) translate( [10.5,0,0] ) rotate( [0,0,0] ) dupontMaleRight();

	color( "green" ) translate( [0,0,0] ) rotate( [0,0,0] ) dupontMaleBottom();
	color( "green" ) translate( [7.75,0,0] ) rotate( [0,0,0] ) dupontFemaleBottom();
	color( "green" ) translate( [10.5,0,0] ) rotate( [0,0,0] ) dupontMaleBottom();
}
