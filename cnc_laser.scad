use <parts/parts_lib.scad>;
include <nutsnbolts/cyl_head_bolt.scad>;

    //translate([160, -45, 90]) rotate([0, 0, 180]) derlin_wheel();
    
/*
for (i = [0 : 24]) {
    translate([i * 12 - 144, 165.2, 10.2]) rotate([0, 90, 0]) t_nut_m5();
}*/
translate([-150, -160, -10]) rotate([0, 0, 270]) join_plate_20_5_90_4();

mirror([1, 0, 0]) translate([150, 160, -10]) rotate([0, 0, 90]) join_plate_20_5_90_4();

translate([150, 160, -10]) rotate([0, 0, 90]) join_plate_20_5_90_4();
mirror([1, 0, 0]) translate([-150, -160, -10]) rotate([0, 0, 270]) join_plate_20_5_90_4();

length = 300;
y_length = 340 + (2.5 * 2);
z_length = 250;

w_segments = 1;
h_segments = 2;
w_offset = w_segments * 20 / 2;
h_offset = h_segments * 20 / 2;

w_profile = 20;
w_segments_l = w_segments * w_profile;

// CNC frame.
translate([0, length / 2 + w_offset, 20]) vslot(w_segments, h_segments, length);
translate([0, -length / 2 + -w_offset, 20]) vslot(w_segments, h_segments, length);

//translate([65, 182.5, 80]) rotate([0, 90, 0]) vslot(1, 3, 200);
//translate([65, 182.5 - 340 -5 - 20, 80]) rotate([0, 90, 0]) vslot(1, 3, 200);

//translate([65, 182.5, 50]) rotate([0, 90, 0]) vslot(1, 3, 140);
//translate([65, 182.5 - 340 -5 - 20, 50]) rotate([0, 90, 0]) vslot(1, 3, 140);

translate([length / 2 + -w_offset, 0, -20]) rotate([0, 0, 90]) vslot(w_segments, h_segments, length  + 40);
translate([-length / 2 + w_offset, 0, -20]) rotate([0, 0, 90]) vslot(w_segments, h_segments, length  + 40);

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
    
    translate([160, -85, 30]) rotate([0, 0, 180]) derlin_wheel();
    translate([160, -45, 30]) rotate([0, 0, 180]) derlin_wheel();
    
    translate([160, -85, 90]) rotate([0, 0, 180]) derlin_wheel();
    translate([160, -45, 90]) rotate([0, 0, 180]) derlin_wheel();
    
    // CNC Y axis.
    translate([0, -length / 4 + -w_offset + 0, -50]) vslot(w_segments, h_segments, y_length);
    
   // translate([0, -length / 4 + -w_offset + 20, -210]) vslot(1, 3, y_length);
  //  translate([0, -length / 4 + -w_offset + 20, -310]) vslot(1, 3, y_length);
  //  translate([0, -length / 4 + -w_offset + 20, -410]) vslot(1, 1, y_length);
    
  //  translate([0, -length / 4 + -w_offset + 20, -510]) vslot(1, 1, 340);
    
  //  translate([0, -length / 4 + -w_offset + 20, -10]) vslot(1, 1, y_length);
    
    //translate([0, -length / 4 + -w_offset + 20, -110]) rotate([90, 0, 180]) //vslot(1, 3, y_length + 40);
  //  translate([0, -length / 4 + -w_offset + 20, -50]) rotate([90, 0, 180]) vslot(1, 3, y_length + 40);
    // CNC Z axis.
    //translate([0, -length / 4 + w_offset + 28, h_offset * 2 + 120])
    //rotate([0, 90, 0])
    //vslot(w_segments, h_segments, z_length);

    // CNS sides.
    translate([y_length / 2 + 0, -85, 70 + 20]) rotate([0, 180, 90]) laser_side_170_12();
    
    translate([y_length / 2 + 6, -85, -40]) rotate([0, 90, 0]) screw("M5x30", thread="modeled");
        translate([y_length / 2 + 6, -85, -60]) rotate([0, 90, 0]) screw("M5x30", thread="modeled");
        
    translate([-y_length / 2 - 6, -85, -60]) rotate([180, 90, 0]) screw("M5x30", thread="modeled");
    
            
    translate([-y_length / 2 - 6, -85, -40]) rotate([180, 90, 0]) screw("M5x30", thread="modeled");
    
    
    translate([-y_length / 2 - 0, -85 , 70 + 20]) rotate([0, 180, 90]) mirror([0, 1, 0])laser_side_170_12();
    //translate([y_length / 2 + 20, 15, w_segments_l / 2]) rotate([0, 0, 180]) cnc_side();
    //translate([-y_length / 2, 15, w_segments_l / 2]) rotate([0, 0, 180]) cnc_side();
}

