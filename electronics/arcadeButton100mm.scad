use <moreSCAD/general/dome.scad>

module arcadeButton100mm(  ) {

	color( "black" ) translate( [0,0,-15] ) cylinder(h=19,r=52);
	dome( d=91, h=21 );

	color( "red" ) translate( [0,0,-41] )  cylinder(h=26,r=12);
	color( "orange" ) translate( [-6,-14,-59] ) cube( [12,28,18] );
}
