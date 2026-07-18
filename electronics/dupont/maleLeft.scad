use <male2pin.scad>

module dupontMaleLeft() {

	render()
	difference() {
		dupontMale2pin();

		translate( [23.0,-20,0] ) cube( [10,40,10] );
	}
}
