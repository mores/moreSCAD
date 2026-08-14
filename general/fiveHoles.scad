module fiveHoles(centerDiameter, outerDiameter, distanceFromCenter, height)
{
    $fn=50;
    // Center hole
    cylinder(d = centerDiameter, h = height);

    // Four equally spaced outer holes
    for (angle = [0 : 90 : 270])
    {
        rotate([0, 0, angle])
            translate([distanceFromCenter, 0, 0])
                cylinder(d = outerDiameter, h = height);
    }
}
