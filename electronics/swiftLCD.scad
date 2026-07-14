module oneThree() {

	$fn=50;

	color( "black" ) translate([2,2.8,1.7]) cube( [26.5,30,1.7] );
	difference()
	{
		color( "green" ) cube( [30.5, 38.5, 1.7]);
		color( "red" ) translate( [2.5,36,-1] )  cylinder(h=8,d=4.7);
		color( "red" ) translate( [28,36,-1] )  cylinder(h=8,d=4.7);
	}
}
