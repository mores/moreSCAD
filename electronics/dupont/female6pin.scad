use <femaleBottom.scad>
use <femaleLeft.scad>
use <femaleRight.scad>

use <maleBottom.scad>

module dupontFemale6pin(scale) { 

	color( "green" ) translate( [0,0,0] ) rotate( [0,0,0] ) dupontFemaleLeft();
	color( "green" ) translate( [10.5,0,0] ) rotate( [0,0,0] ) dupontFemaleRight();

	color( "green" ) translate( [0,0,0] ) rotate( [0,0,0] ) dupontFemaleBottom();
	color( "green" ) translate( [2.7,0,0] ) rotate( [0,0,0] ) dupontMaleBottom();
	color( "green" ) translate( [10.5,0,0] ) rotate( [0,0,0] ) dupontFemaleBottom();
}
