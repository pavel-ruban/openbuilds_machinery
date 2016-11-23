use <parts/parts_lib.scad>;

length = 500;
w_segments = 3;
h_segments = 4;
w_offset = w_segments * 20 / 2;
h_offset = h_segments * 20 / 2;

// CNC frame.
translate([0, length / 2 + w_offset, 0]) vslot(w_segments, h_segments, length);
translate([0, length / 2 + w_offset, 0]) vslot(w_segments, h_segments, length);

translate([length / 2 + -w_offset, 0, 0]) rotate([0, 0, 90]) vslot(w_segments, h_segments, length);
translate([-length / 2 + w_offset, 0, 0]) rotate([0, 0, 90]) vslot(w_segments, h_segments, length);
