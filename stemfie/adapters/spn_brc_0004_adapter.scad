use <moreSCAD/general/fiveHoles.scad>
use <moreSCAD/stemfie/braces/spn_brc_0004.scad>

module spn_brc_0004_adapter()
{
	$fn=50;

	module main()
	{
		spn_brc_0004();
		translate( [25,0,1.5] ) rotate( [0,0,0] ) cylinder(h=3.0, d=23, center=true);

	}

	difference()
	{
		render()
		main();
		translate( [25,0,-1] ) rotate( [0,0,45] ) fiveHoles(
			centerDiameter = 3.2,
			outerDiameter = 3.2,
			distanceFromCenter = 7.25,
			height = 20
		);
		translate( [12.5,0,1.5] ) rotate( [0,0,0] ) cylinder(h=6.0, d=7, center=true);
                translate( [37.5,0,1.5] ) rotate( [0,0,0] ) cylinder(h=6.0, d=7, center=true);
	}
}
