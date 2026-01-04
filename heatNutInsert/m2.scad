module nutInsertM2( additionalHeight = 0, additionalDiameter = 0 )
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

	insert_od      = 3.0;
	insert_depth   = 4.5;
	spacer_od      = 6.0 + additionalDiameter;
	spacer_height  = 5.0 + additionalHeight;

	difference() {
	    cylinder(h = spacer_height, d = spacer_od, $fn = 40);
	    translate([0,0,-1])
		cylinder(h = insert_depth + 1, d = insert_od, $fn = 30);
	}
}
