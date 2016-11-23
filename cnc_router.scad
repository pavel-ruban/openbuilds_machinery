use <parts/parts_lib.scad>;

length = 500;
y_length = 556;
z_length = 250;

w_segments = 2;
h_segments = 4;
w_offset = w_segments * 20 / 2;
h_offset = h_segments * 20 / 2;

w_profile = 20;
w_segments_l = w_segments * w_profile;

// CNC frame.
translate([0, length / 2 + w_offset, 0]) vslot(w_segments, h_segments, length + -w_segments_l * 2);
translate([0, -length / 2 + -w_offset, 0]) vslot(w_segments, h_segments, length + -w_segments_l * 2);

translate([length / 2 + -w_offset, 0, 0]) rotate([0, 0, 90]) vslot(w_segments, h_segments, length + w_segments_l * 2);
translate([-length / 2 + w_offset, 0, 0]) rotate([0, 0, 90]) vslot(w_segments, h_segments, length + w_segments_l * 2);

// Bottom rigidity strutw.
translate([0, 0, -w_offset / 2 + w_profile / 2]) rotate([180, 0, 90]) vslot(w_segments, h_segments, length);
translate([(length / 2 - w_segments_l + -w_profile) / 2 + w_offset, 0, -w_offset / 2 + + w_profile / 2]) rotate([180, 0, 180]) vslot(w_segments, h_segments, length / 2 - w_segments_l - w_profile);
translate([(-length / 2 - w_segments_l - w_profile) / 2 + w_offset * 2, 0, -w_offset / 2 + + w_profile / 2]) rotate([180, 0, 180]) vslot(w_segments, h_segments, length / 2 - w_segments_l - w_profile);

// Table.
translate([0, 0, h_offset + 10]) rotate([0, 0, 90]) vslot(25, 1, length + w_offset * 4);

// CNC Portal.
translate([0, -230, 0]) {
    // CNC Y axis.
    translate([0, -length / 4 + -w_offset, h_offset * 2 + 150]) vslot(w_segments, h_segments, y_length);

    // CNC Z axis.
    translate([0, -length / 4 + w_offset + 28, h_offset * 2 + 120])
    rotate([0, 90, 0])
    vslot(w_segments, h_segments, z_length);

    // CNS sides.
    translate([y_length / 2 + 20, 15, w_segments_l / 2]) rotate([0, 0, 180]) cnc_side();
    translate([-y_length / 2, 15, w_segments_l / 2]) rotate([0, 0, 180]) cnc_side();
}
