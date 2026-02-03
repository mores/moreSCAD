use <moreSCAD/heatNutInsert/m2.scad>

module groveShieldXIAOmount()
{
	translate( [2.3,1.8,0] ) nutInsertM2( additionalHeight=0, additionalDiameter=3 );
	translate( [25-2.3,1.8,0] ) nutInsertM2( additionalHeight=0, additionalDiameter=3 );

	translate( [2.3,37.2,0] ) nutInsertM2( additionalHeight=0, additionalDiameter=3 );
	translate( [25-2.3,37.2,0] ) nutInsertM2( additionalHeight=0, additionalDiameter=3 );

}
