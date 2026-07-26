SHOW_CENTER_LINES = true; 

CENTER_LINE_COLOR = "cyan";
CENTER_LINE_THICKNESS = 0.2;

module global_center_line(p1, p2) {
    valid_p1 = (p1 == true || p1 == false || p1 == undef) ? [0,0,0] : p1;
    valid_p2 = (p2 == true || p2 == false || p2 == undef) ? [0,0,0] : p2;

    if (SHOW_CENTER_LINES) {
        color(CENTER_LINE_COLOR) hull() {
            translate(valid_p1) sphere(d=CENTER_LINE_THICKNESS, $fn=8);
            translate(valid_p2) sphere(d=CENTER_LINE_THICKNESS, $fn=8);
        }
    }
}

module cylinder_center_lines(h=1, r=undef, d=undef, r1=undef, r2=undef, d1=undef, d2=undef, center=false) {
    if (SHOW_CENTER_LINES) {
        // 1. Resolve diameters/radii for both ends (handles cones as well)
        start_r = (r1 != undef) ? r1 : ((d1 != undef) ? d1/2 : ((r != undef) ? r : ((d != undef) ? d/2 : 1)));
        end_r   = (r2 != undef) ? r2 : ((d2 != undef) ? d2/2 : ((r != undef) ? r : ((d != undef) ? d/2 : 1)));
        
        // 2. Calculate Z height bounds based on center flag
        z_min = center ? -h/2 : 0;
        z_max = center ?  h/2 : h;
        
        // 3. --- BOTTOM FACE CROSSHAIRS ---
        global_center_line([-start_r, 0, z_min], [start_r, 0, z_min]); // X-axis cross
        global_center_line([0, -start_r, z_min], [0, start_r, z_min]); // Y-axis cross
        
        // 4. --- TOP FACE CROSSHAIRS ---
        global_center_line([-end_r, 0, z_max], [end_r, 0, z_max]);     // X-axis cross
        global_center_line([0, -end_r, z_max], [0, end_r, z_max]);     // Y-axis cross
        
        // 5. --- SIDE WALL VERTICAL LINES ---
        // Slices down the 4 quadrants of the cylinder wall (adjusts automatically for tapered cones)
        global_center_line([-start_r, 0, z_min], [-end_r, 0, z_max]);   // Left wall
        global_center_line([start_r, 0, z_min],  [end_r, 0, z_max]);    // Right wall
        global_center_line([0, -start_r, z_min], [0, -end_r, z_max]);   // Front wall
        global_center_line([0, start_r, z_min],  [0, end_r, z_max]);    // Back wall
    }
}

module cube_center_lines(size=[1,1,1], center=false) {
    if (SHOW_CENTER_LINES) {
        // Safely extract X, Y, Z dimensions
        x = (size[0] == undef) ? size : size[0];
        y = (size[1] == undef) ? size : size[1];
        z = (size[2] == undef) ? size : size[2];
        
        // Midpoint calculations
        cx = center ? 0 : x / 2;
        cy = center ? 0 : y / 2;
        cz = center ? 0 : z / 2;
        
        // Bounding edges
        x_min = center ? -x/2 : 0;
        x_max = center ?  x/2 : x;
        y_min = center ? -y/2 : 0;
        y_max = center ?  y/2 : y;
        z_min = center ? -z/2 : 0;
        z_max = center ?  z/2 : z;
        
        // --- TOP FACE CROSSHAIRS ---
        global_center_line([x_min, cy, z_max], [x_max, cy, z_max]); // Horizontal (X)
        global_center_line([cx, y_min, z_max], [cx, y_max, z_max]); // Vertical (Y)
        
        // --- BOTTOM FACE CROSSHAIRS ---
        global_center_line([x_min, cy, z_min], [x_max, cy, z_min]); // Horizontal (X)
        global_center_line([cx, y_min, z_min], [cx, y_max, z_min]); // Vertical (Y)
        
        // --- SIDE WALL VERTICAL LINES (Slices down either side) ---
        global_center_line([cx, y_min, z_min], [cx, y_min, z_max]); // Front face wall
        global_center_line([cx, y_max, z_min], [cx, y_max, z_max]); // Back face wall
        global_center_line([x_min, cy, z_min], [x_min, cy, z_max]); // Left face wall
        global_center_line([x_max, cy, z_min], [x_max, cy, z_max]); // Right face wall
    }
}
