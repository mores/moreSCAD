module nutInsertM2point5( additionalHeight = 0, additionalDiameter = 0 )
{
	// M2.5 Heat-Set Insert Spacer (generic safe default)

	insert_od      = 4.3;
	insert_depth   = 5.2;
	spacer_od      = 8.0 + max(0, additionalDiameter);
	spacer_height  = 6.0 + max(0, additionalHeight);

	difference() {
	    cylinder(h = spacer_height, d = spacer_od, $fn = 40);
	    translate([0,0,-1])
		cylinder(h = insert_depth + 1, d = insert_od, $fn = 30);
	}
}
