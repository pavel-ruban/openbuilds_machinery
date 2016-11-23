include <../../colors.scad>;

module ball_bearing_5x16x5() {
    color(color_steel) import("ball_bearing_rings.stl", convexity=3);
    translate([0, 0, 0.5]) color(color_black_plastic) import("ball_bearing_plastic.stl", convexity=3);
}
