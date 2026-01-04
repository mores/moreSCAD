module nutInsertM2point5( additionalHeight = 0, additionalDiameter = 0 )
{
	// M2.5 Heat-Set Insert Spacer (generic safe default)

	if( additionalHeight < 0 )
        {
                echo("Warning: You are going below recommended height !");
        }

        if( additionalDiameter < 0 )
        {
                echo("Warning: You are going below recommended diameter !");
        }

	insert_od      = 4.3;
	insert_depth   = 5.2;
	spacer_od      = 8.0 + additionalDiameter;
	spacer_height  = 6.0 + additionalHeight;

	difference() {
	    cylinder(h = spacer_height, d = spacer_od, $fn = 40);
	    translate([0,0,-1])
		cylinder(h = insert_depth + 1, d = insert_od, $fn = 30);
	}
}
