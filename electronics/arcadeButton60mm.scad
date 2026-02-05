module arcadeButton60mm(  ) {

	color( "black" ) translate( [0,0,-15] ) cylinder(h=19,r=32);
	dome( 20 );
	color( "black" ) translate( [0,0,-41] )  cylinder(h=26,r=12);
	color( "blue" ) translate( [-6,-14,-59] ) cube( [12,28,18] );
}

module dome(radius, h) {
    difference() {
        sphere(r = radius, $fn=100);
        translate([0,0,-radius]) 
            cube(size=[radius*2, radius*2, radius*2], center=true);
    }
}
