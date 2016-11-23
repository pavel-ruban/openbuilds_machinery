include <../../colors.scad>;

use <../bearings/ball_bearing_5x16x5.scad>;
use <../shims/precision_shim_10x5x1.scad>;

module derlin_wheel() {
    color(color_polycarbonate) import("derlin_wheel/derlin_wheel.stl", convexity = 3);
    translate([0.5, 0, 0]) rotate([0, 90, 0]) ball_bearing_5x16x5();
    translate([-5 - 0.5, 0, 0]) rotate([0, 90, 0]) ball_bearing_5x16x5();
    translate([-0.5, 0, 0]) rotate([0, 90, 0]) precision_shim_10x5x1();
}
