use <female2pin.scad>

module dupontFemaleBottom() {

	render()
	difference() {
		dupontFemale2pin();
		translate( [25.10,-20,0] ) cube( [10,40,10] );
		translate( [9.82,-20,0] ) cube( [10,40,10] );
	}
}
