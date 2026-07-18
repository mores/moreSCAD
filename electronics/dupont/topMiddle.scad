use <top2pin.scad>

module dupontTopMiddle() {

	render()
	difference() {
		dupont2pinTop();

		translate( [25.50,-20,0] ) cube( [10,40,10] );

		translate( [42.50,-20,0] ) cube( [10,40,10] );
	}
}
