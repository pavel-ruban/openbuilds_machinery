use <parts/parts_lib.scad>;

length = 500;
y_length = 556;
z_length = 250;

w_segments = 3;
h_segments = 4;
w_offset = w_segments * 20 / 2;
h_offset = h_segments * 20 / 2;

// CNC frame.
translate([0, length / 2 + w_offset, 0]) vslot(w_segments, h_segments, length);
translate([0, -length / 2 + -w_offset, 0]) vslot(w_segments, h_segments, length);

translate([length / 2 + -w_offset, 0, 0]) rotate([0, 0, 90]) vslot(w_segments, h_segments, length);
translate([-length / 2 + w_offset, 0, 0]) rotate([0, 0, 90]) vslot(w_segments, h_segments, length);

// Bottom rigidity strutw.
translate([0, 0, -w_offset / 2 + 15]) rotate([180, 0, 90]) vslot(w_segments, h_segments, length);
translate([(length / 2 - 90) / 2 + w_offset, 0, -w_offset / 2 + 15]) rotate([180, 0, 180]) vslot(w_segments, h_segments, length / 2 - 90);
translate([(-length / 2 - 90) / 2 + w_offset * 2, 0, -w_offset / 2 + 15]) rotate([180, 0, 180]) vslot(w_segments, h_segments, length / 2 - 90);

// Table.
translate([0, 0, h_offset + 10]) rotate([0, 0, 90]) vslot(25, 1, length + w_offset * 4);

// CNC Portal.
translate([0, -200, 10]) {
    // CNC Y axis.
    translate([0, -length / 4 + -w_offset, h_offset * 2 + 160]) vslot(w_segments, h_segments, y_length);

    // CNC Z axis.
    translate([0, -length / 4 + w_offset, h_offset * 2 + 120])
    rotate([0, 90, 0])
    vslot(w_segments, h_segments, z_length);

    // CNS sides.
    translate([y_length / 2 + 20, 15, 30]) rotate([0, 0, 180]) cnc_side();
    translate([-y_length / 2, 15, 30]) rotate([0, 0, 180]) cnc_side();
}
