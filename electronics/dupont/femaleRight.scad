use <female2pin.scad>

module femaleRight() {

	render()
	difference() {
		dupontFemale2pin();
		translate( [14.5,-20,0] ) cube( [10,40,10] );
	}
}
