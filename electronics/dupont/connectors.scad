use <connector.scad>

module dupontConnectors( rows=3, cols=2 ) {

	cl = 2.6;

	for( col = [0: cols -1 ] ) {
                        for( row = [0 : rows -1 ] ) {

				translate( [ cl * row , cl * col, 0] ) dupontConnector();
			}
	}
}
