module dupontConnector() {

	$fn=50;

	difference()
	{
		color( "black" ) translate([0,0,0]) cube( [2.6,2.6,14] );
                color( "white" ) translate( [1.3,1.3,-1] )  cylinder(h=16,d=0.5);
        }
}
