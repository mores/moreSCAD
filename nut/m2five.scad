module nutM2point5( additionalHeight = 0, additionalDiameter = 0 )
{
	// M2.5 screw into plastic (no insert)

	if( additionalHeight < 0 )
        {
                echo("Warning: You are going below recommended height !");
        }

        if( additionalDiameter < 0 )
        {
                echo("Warning: You are going below recommended diameter !");
        }

	pilot_od      = 2.0;  // mm
	hole_depth    = 4.0;  // mm
	spacer_od     = 5.0 + additionalDiameter;
	spacer_height = 4.5 + additionalHeight;

	difference() {
	    cylinder(h = spacer_height, d = spacer_od, $fn = 36);
	    translate([0,0,-1])
		cylinder(h = hole_depth + 1, d = pilot_od, $fn = 28);
	}
}
