use <top2pin.scad>

module dupontTopMiddle() {

	render()
	difference() {
		dupont2pinTop();

		translate( [26,-20,0] ) cube( [10,40,10] );

		translate( [42.00,-20,0] ) cube( [10,40,10] );
	}
}
