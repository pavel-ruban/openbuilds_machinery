include <../../colors.scad>;

module vslot(w_segments, h_segments, length) {
	for (i = [1 : w_segments]) {
		translate([(i - 1) * 20, 0, 0])
		color(color_steel) linear_extrude(height = length) import("extrusions/20x20.dxf");

		for (ii = [1 : h_segments]) {
			if (ii > 1) {
				translate([(i - 1) * 20, (ii - 1) * 20, 0])
				color(color_steel) linear_extrude(height = length) import("extrusions/20x20.dxf");
			}
		}
	}


}
