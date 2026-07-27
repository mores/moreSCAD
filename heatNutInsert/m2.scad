module nutInsertM2( additionalHeight = 0, additionalDiameter = 0, spacer = true )
{
	// M2 Heat-Set Insert Spacer (generic safe default)

	if( additionalHeight < 0 )
	{
		echo("Warning: You are going below recommended height !");
	}

	if( additionalDiameter < 0 )
	{
		echo("Warning: You are going below recommended diameter !");
	}

	// 3.1 too skinny
	// 3.2 too skinny
	insert_od      = 3.3;
	insert_depth   = 4.5;

	if( spacer ) {
		spacer_od      = 6.0 + additionalDiameter;
		spacer_height  = 5.0 + additionalHeight;

		difference() {
		    cylinder(h = spacer_height, d = spacer_od, $fn = 40);
		    translate([0,0,-1])
			cylinder(h = insert_depth + 1, d = insert_od, $fn = 30);
		}
	}
	else
	{
		translate([0,0,-1]) cylinder(h = insert_depth + 1 + additionalHeight, d = insert_od, $fn = 30);
	}
}
