use <female2pin.scad>

module dupontFemaleLeft() {

	render()
	difference() {
		dupontFemale2pin();
		translate( [20.45,-20,0] ) cube( [10,40,10] );
	}
}
