include <../../colors.scad>;

module cnc_side() {
    color(color_steel) import("router/side.stl", convexity = 3);
}
