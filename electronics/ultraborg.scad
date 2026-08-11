use <moreSCAD/general/centerLines.scad>

module ultraborg() {

        $fn=50;

	difference()
	{
		color( "green" ) translate([0,0,0]) cube( [48,40,1.6] );
		cube_center_lines( [48,40,1.6], center=false );

		color( "black" ) translate( [3.6,36.5,-1] ) cylinder(h=3,d=3.4);
		color( "black" ) translate( [44.25,36.5,-1] ) cylinder(h=3,d=3.4);

		color( "black" ) translate( [18,14.5,-1] ) cylinder(h=3,d=3.4);
	}
}
