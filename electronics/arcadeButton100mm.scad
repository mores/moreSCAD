module arcadeButton100mm(  ) {

	color( "black" ) translate( [0,0,-15] ) cylinder(h=19,r=52);
	dome( 40 );
}

module dome(radius, h) {
    difference() {
        sphere(r = radius, $fn=100);
        translate([0,0,-radius]) 
            cube(size=[radius*2, radius*2, radius*2], center=true);
    }
}
