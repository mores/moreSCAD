module imperial8(additionalHeight = 0, additionalDiameter = 0)
{
    // #8-32 screw into plastic (no insert)

    if (additionalHeight < 0)
    {
        echo("Warning: You are going below recommended height !");
    }

    if (additionalDiameter < 0)
    {
        echo("Warning: You are going below recommended diameter !");
    }

    pilot_od      = 3.3;  // mm (thread-forming pilot for #8-32)
    hole_depth    = 6.5;  // mm
    spacer_od     = 8.5 + additionalDiameter;
    spacer_height = 7.0 + additionalHeight;

    difference() {
        cylinder(h = spacer_height, d = spacer_od, $fn = 48);

        // lead-in chamfer + pilot hole
        translate([0,0,-1])
            cylinder(
                h  = hole_depth + 1,
                d1 = pilot_od + 0.7,
                d2 = pilot_od,
                $fn = 36
            );
    }
}
