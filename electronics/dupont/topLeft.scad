use <top2pin.scad>

module dupontTopLeft() {

	render()
	difference() {
		dupont2pinTop();

		translate( [37.00,-20,0] ) cube( [10,40,10] );
	}
}
