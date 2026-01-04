include <moreSCAD/seeed/grove16x2lcd.scad>
use <moreSCAD/heatNutInsert/m2.scad>

module grove16x2lcdFaceplate()
{
	padding = 1;

	difference()
	{
		color( "red" ) translate( [-10,-10,6]) cube( [60,100,2] );
		translate( [12-padding/2,7-padding/2,5] ) cube( [grove16x2lcdDisplayHeight+padding,grove16x2lcdDisplayWidth+padding,8] );
	}

	color( "red" ) rotate( [0,0,0] ) translate( [grove16x2lcdHeight-2,grove16x2lcdWidth-2,1] ) nutInsertM2( additionalHeight=0, additionalDiameter=-2 );
	color( "red" ) rotate( [0,0,0] ) translate( [grove16x2lcdHeight-2,0+2,1] ) nutInsertM2( additionalHeight=0, additionalDiameter=3 );
	color( "red" ) rotate( [0,0,0] ) translate( [0+2,grove16x2lcdWidth-2,1] ) nutInsertM2( additionalHeight=0, additionalDiameter=0 );
	color( "red" ) rotate( [0,0,0] ) translate( [0+2,0+2,1] ) nutInsertM2( additionalHeight=0, additionalDiameter=5 );
}
