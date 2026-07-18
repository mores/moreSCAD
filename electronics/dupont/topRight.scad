use <top2pin.scad>

module dupontTopRight() {

	render()
	difference() {
		dupont2pinTop();

		translate( [31.00,-20,0] ) cube( [10,40,10] );
	}
}
