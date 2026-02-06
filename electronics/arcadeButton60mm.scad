use <moreSCAD/general/dome.scad>

module arcadeButton60mm(  ) {

	color( "black" ) translate( [0,0,-15] ) cylinder(h=19,r=32);
	dome( d=51, h=16 );
	color( "black" ) translate( [0,0,-41] )  cylinder(h=26,r=12);
	color( "blue" ) translate( [-6,-14,-59] ) cube( [12,28,18] );
}
