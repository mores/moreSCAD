use <moreSCAD/general/centerLines.scad>

module cermantUsbC() {

        $fn=50;

	difference()
	{
		color( "red" ) translate([0,0,0]) cube( [21.5,13,1.6] );
		cube_center_lines( [21.5,13,1.6], center=false );

		color( "black" ) translate( [2.7,10.6,-1] ) cylinder(h=3,d=3.4);
		color( "black" ) translate( [18.5,10.6,-1] ) cylinder(h=3,d=3.4);

	}
}
