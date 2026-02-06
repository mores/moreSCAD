module dome(d=50, h=25, thickness=2, hollow=false) {
    $fn = 100;
    
    difference() {
        // Main dome shape
        scale([1, 1, h/(d/2)]) sphere(d=d);
        
        // Hollow out if requested
        if (hollow) {
            scale([1, 1, h/(d/2)]) 
                sphere(d=d - (thickness*2));
        }
        
        // Slice the bottom
        translate([-d, -d, -d*2]) 
            cube([d*2, d*2, d*2]);
    }
}
