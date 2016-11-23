include <../../colors.scad>;

module precision_shim_10x5x1() {
	color(color_steel) import("precision_shim_10x5x1.stl", convexity=3);
}

