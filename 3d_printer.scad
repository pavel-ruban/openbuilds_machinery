use <parts/parts_lib.scad>;

length = 300;
y_length = 340 + (2.5 * 2);
z_length = 250;

w_segments = 1;
h_segments = 1;
w_offset = w_segments * 20 / 2;
h_offset = h_segments * 20 / 2;

w_profile = 20;
w_segments_l = w_segments * w_profile;

// CNC frame.
translate([0, length / 2 + w_offset, 0]) rotate([0, 0, 0]) vslot(w_segments, h_segments, length);
translate([0, -length / 2 + -w_offset, 0]) rotate([0, 0, 0]) vslot(w_segments, h_segments, length);

translate([length / 2 + -w_offset + 20, 0, 0]) rotate([0, 0, 90]) vslot(w_segments, h_segments, length);
translate([-length / 2 + w_offset - 20, 0, 0]) rotate([0, 0, 90]) vslot(w_segments, h_segments, length);

translate([-length / 2 + w_offset - 20, 0, 0]) rotate([0, 0, 90]) vslot(w_segments, h_segments, length);
translate([-length / 2 + w_offset - 20, 0, 0]) rotate([0, 0, 90]) vslot(w_segments, h_segments, length);
translate([-length / 2 + w_offset - 20, 0, 0]) rotate([0, 0, 90]) vslot(w_segments, h_segments, length);
translate([-length / 2 + w_offset - 20, 0, 0]) rotate([0, 0, 90]) vslot(w_segments, h_segments, length);

translate([-length / 2 + w_offset - 0, 0, 20]) rotate([0, 0, 90]) vslot(w_segments, h_segments, length + 40);
translate([-length / 2 + w_offset - 0, 0, 40]) rotate([0, 0, 90]) vslot(w_segments, h_segments, length + 40);
translate([-length / 2 + w_offset - 0, 0, 60]) rotate([0, 0, 90]) vslot(w_segments, h_segments, length + 40);
translate([-length / 2 + w_offset - 0, 0, 80]) rotate([0, 0, 90]) vslot(w_segments, h_segments, length + 40);

translate([-length / 2 + w_offset - 0, 0, 80]) rotate([0, 0, 90]) vslot(w_segments, h_segments, length + 40);
translate([length / 2 - 150, 0, 480]) rotate([0, 0, 0]) vslot(w_segments, h_segments, length + 40);

translate([-length / 2 + w_offset - 20, 0, 400]) rotate([0, 90, 0]) vslot(w_segments, h_segments, length / 2);
translate([length / 2 - w_offset + 20, 0, 400]) rotate([0, 90, 0]) vslot(w_segments, h_segments, length / 2);

translate([0, 0, 320]) {
translate([0, length / 2 + w_offset, 0]) rotate([0, 0, 0]) vslot(w_segments, h_segments, length);
translate([0, -length / 2 + -w_offset, 0]) rotate([0, 0, 0]) vslot(w_segments, h_segments, length);

translate([length / 2 + -w_offset + 20, 0, 0]) rotate([0, 0, 90]) vslot(w_segments, h_segments, length);
translate([-length / 2 + w_offset - 20, 0, 0]) rotate([0, 0, 90]) vslot(w_segments, h_segments, length);
}

translate([160, length / 2 + w_offset, 160]) rotate([0, 90, 0]) vslot(w_segments, h_segments, length);
translate([160, -length / 2 - w_offset, 160]) rotate([0, 90, 0]) vslot(w_segments, h_segments, length);
translate([-160, length / 2 + w_offset, 160]) rotate([0, 90, 0]) vslot(w_segments, h_segments, length);
translate([-160, -length / 2 - w_offset, 160]) rotate([0, 90, 0]) vslot(w_segments, h_segments, length);


    
// X carriage
translate([0, length / 2 + -150, 220]) rotate([0, 0, 90]) vslot(2, h_segments, length -5 - 12 * 2);  
translate([10, length / 2 + -150, 220]) rotate([0, 0, 90]) vslot(1, h_segments, length -5 - 12 * 2);  

translate([0, length / 2 + w_offset, 220]) rotate([0, 0, 0]) vslot(1, 2, length);    
translate([0, -length / 2 + -w_offset, 220]) rotate([0, 0, 0]) vslot(1, 2, length);


translate([0, length / 2 + w_offset, 230]) rotate([0, 0, 0]) vslot(1, 1, length);    
translate([0, -length / 2 + -w_offset, 230]) rotate([0, 0, 0]) vslot(1, 1, length);


// Bed
translate([0, 0, 120]) {
translate([0, length / 2 + -12.5, 0]) rotate([0, 0, 0]) vslot(w_segments, h_segments, length - 40 - 5);
translate([0, -length / 2 + 12.5, 0]) rotate([0, 0, 0]) vslot(w_segments, h_segments, length - 40 - 5);

translate([length / 2 + -w_offset - 2.5, 0, 0]) rotate([0, 0, 90]) vslot(w_segments, h_segments, length - 40 - 5);
translate([-length / 2 + w_offset + 2.5, 0, 0]) rotate([0, 0, 90]) vslot(w_segments, h_segments, length - 40 - 5);
    
translate([0, length / 2 + -100, 20]) rotate([0, 0, 0]) vslot(w_segments, h_segments, length - 5);
translate([0, length / 2 + -140, 20]) rotate([0, 0, 0]) vslot(w_segments, h_segments, length - 5);
translate([0, length / 2 + -180, 20]) rotate([0, 0, 0]) vslot(w_segments, h_segments, length - 5);
translate([0, length / 2 + -220, 20]) rotate([0, 0, 0]) vslot(w_segments, h_segments, length - 5);    



}

/*
translate([65, 182.5, 80]) rotate([0, 90, 0]) vslot(1, 3, 200);
translate([65, 182.5 - 340 -5 - 20, 80]) rotate([0, 90, 0]) vslot(1, 3, 200);

translate([65, 182.5, 50]) rotate([0, 90, 0]) vslot(1, 3, 140);
translate([65, 182.5 - 340 -5 - 20, 50]) rotate([0, 90, 0]) vslot(1, 3, 140);



// Table.
translate([0, 0, h_offset + -10]) rotate([0, 0, 0]) vslot(length / 20, 1, length);

// CNC Portal.
translate([0, 0, 80]) rotate([0, 180, 90]) {
    
    translate([-320, 0, 0]) {
        translate([160, -85, 30]) derlin_wheel();
        translate([160, -45, 30]) derlin_wheel();
        
        translate([160, -85, 90]) derlin_wheel();
        translate([160, -45, 90]) derlin_wheel();
    }
    
    translate([160, -85, 30]) derlin_wheel();
    translate([160, -45, 30]) derlin_wheel();
    
    translate([160, -85, 90]) derlin_wheel();
    translate([160, -45, 90]) derlin_wheel();
    
    // CNC Y axis.
    translate([0, -length / 4 + -w_offset + 20, -110]) vslot(w_segments, h_segments, y_length);
    translate([0, -length / 4 + -w_offset + 20, -210]) vslot(1, 3, y_length);
    translate([0, -length / 4 + -w_offset + 20, -310]) vslot(1, 3, y_length);
    translate([0, -length / 4 + -w_offset + 20, -410]) vslot(1, 1, y_length);
    
    translate([0, -length / 4 + -w_offset + 20, -510]) vslot(1, 1, 340);
    
    translate([0, -length / 4 + -w_offset + 20, -10]) vslot(1, 1, y_length);
    
    //translate([0, -length / 4 + -w_offset + 20, -110]) rotate([90, 0, 180]) vslot(1, 3, y_length + 40);
    translate([0, -length / 4 + -w_offset + 20, -50]) rotate([90, 0, 180]) vslot(1, 3, y_length + 40);
    // CNC Z axis.
    //translate([0, -length / 4 + w_offset + 28, h_offset * 2 + 120])
    //rotate([0, 90, 0])
    //vslot(w_segments, h_segments, z_length);

    // CNS sides.
    //translate([y_length / 2 + 20, 15, w_segments_l / 2]) rotate([0, 0, 180]) cnc_side();
    //translate([-y_length / 2, 15, w_segments_l / 2]) rotate([0, 0, 180]) cnc_side();
}
