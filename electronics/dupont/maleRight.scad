use <male2pin.scad>

module dupontMaleRight() {

	render()
	difference() {
		dupontMale2pin();

		translate( [17.00,-20,0] ) cube( [10,40,10] );
	}
}
