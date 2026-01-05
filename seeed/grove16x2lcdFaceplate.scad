include <moreSCAD/seeed/grove16x2lcd.scad>
use <moreSCAD/heatNutInsert/m2.scad>
use <moreSCAD/nut/m2.scad>

module grove16x2lcdFaceplate()
{
	padding = 1;

	difference()
	{
		union()
		{
			color( "red" ) translate( [-10,-10,6]) cube( [60,100,2] );
			color( "black" ) translate( [-10,42,6] ) cube( [60,1,2] );
			color( "black" ) translate( [23.5,-10,6] ) cube( [1,100,2] );
		}
		translate( [12-padding/2,7-padding/2,5] ) cube( [grove16x2lcdDisplayHeight+padding,(grove16x2lcdDisplayWidth+padding),8] );

		//translate( [12-padding/2,42.5,5] ) cube( [(grove16x2lcdDisplayHeight+padding)/2,(grove16x2lcdDisplayWidth+padding)/2,8] );
		//translate( [12-padding/2,6.5,5] ) cube( [(grove16x2lcdDisplayHeight+padding)/2,(grove16x2lcdDisplayWidth+padding)/2,8] );

	}

	color( "red" ) rotate( [0,0,0] ) translate( [grove16x2lcdHeight-2,grove16x2lcdWidth-2,1] ) nutM2( additionalHeight=2, additionalDiameter=-1 );
	color( "red" ) rotate( [0,0,0] ) translate( [grove16x2lcdHeight-2,0+2,1] ) nutInsertM2( additionalHeight=0, additionalDiameter=3 );
	color( "red" ) rotate( [0,0,0] ) translate( [0+2,grove16x2lcdWidth-2,1] ) nutInsertM2( additionalHeight=0, additionalDiameter=0 );
	color( "red" ) rotate( [0,0,0] ) translate( [0+2,0+2,1] ) nutInsertM2( additionalHeight=0, additionalDiameter=5 );
}
