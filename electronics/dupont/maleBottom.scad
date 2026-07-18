use <male2pin.scad>

module dupontMaleBottom() {

	render()
	difference() {
		dupontMale2pin();

		translate( [27.6,-20,0] ) cube( [10,40,10] );

		translate( [12.37,-20,0] ) cube( [10,40,10] );
	}
}
