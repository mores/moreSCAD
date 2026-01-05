module pinHeader( height=12, upper=7, rows=3, cols=2 ) {

        cl = 2.54;
        padding = 1.0;
        // pinSize of 1.0 pins VERY snug - too snug
        // pinSize of 1.1 pins slide in easily with no friction
        pinSize = 1.05;

        translate( [ -(rows  * cl/2 ) + cl /2, -(cols  * cl/2 ) + cl /2, 0 ] ) {

                for( col = [0: cols -1 ] ) {
                        for( row = [0 : rows -1 ] ) {

                                translate( [ cl * row , cl * col, 0] ) {
        
                                        difference() {
                                                color( "black" )
                                                        translate( [0,0, cl / 2]) {
                                                                intersection() {
                                                                        cube( [ cl + padding, cl + padding, height -5 ], center=true );
                                                        }
                                                }

                                                color( "silver" ) {
                                                        translate( [0,0, (upper - ( height/2 )) + cl ] ) {
                                                                union() {
                                                                        cube( [pinSize,pinSize,height], center=true );
                                                                }
                                                        }
                                                }
                                        }
                                }
                        }
                }
        }
}
