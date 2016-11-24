include <../../colors.scad>;

use <../bearings/ball_bearing_5x16x5.scad>;
use <../shims/precision_shim_10x5x1.scad>;
use <../spacers/spacer_5x6.scad>;
use <../../nutsnbolts/cyl_head_bolt.scad>;



module derlin_wheel() {
    
    color(color_polycarbonate) import("derlin_wheel/derlin_wheel.stl", convexity = 3);
    translate([0.5, 0, 0]) rotate([0, 90, 0]) ball_bearing_5x16x5();
    translate([-5 - 0.5, 0, 0]) rotate([0, 90, 0]) ball_bearing_5x16x5();
    translate([-0.5, 0, 0]) rotate([0, 90, 0]) precision_shim_10x5x1();
    
    plate_hole_depth = 6;
    
    translate([-6.5, 0, 0]) rotate([0, 90, 0]) precision_shim_10x5x1();
    translate([-0.5 - 6 - 6 - plate_hole_depth, 0, 0]) rotate([0, 270, 0]) screw("M5x30", thread="modeled");
    translate([-6.5 - 6, 0, 0]) rotate([0, 90, 0]) spacer_5x6();
    
    translate([6.5 + 3.7, 0, 0]) rotate([0, 90, 0]) nut("M5");
}
