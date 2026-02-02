module nutM4(additionalHeight = 0, additionalDiameter = 0)
{
    // M4 screw into plastic (no insert)

    if (additionalHeight < 0)
    {
        echo("Warning: You are going below recommended height !");
    }

    if (additionalDiameter < 0)
    {
        echo("Warning: You are going below recommended diameter !");
    }

    pilot_od      = 3.2;  // mm (thread-forming pilot)
    hole_depth    = 6.0;  // mm
    spacer_od     = 8.0 + additionalDiameter;
    spacer_height = 6.5 + additionalHeight;

    difference() {
        cylinder(h = spacer_height, d = spacer_od, $fn = 48);

        // lead-in chamfer + pilot hole
        translate([0,0,-1])
            cylinder(
                h  = hole_depth + 1,
                d1 = pilot_od + 0.6,
                d2 = pilot_od,
                $fn = 36
            );
    }
}
