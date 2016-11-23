include <../../colors.scad>;

module vslot(w_segments, h_segments, length) {
	// Do origin of object as centre point of the 3d model.
	translate([-length / 2, (-w_segments * 20) / 2, (-h_segments * 20) / 2]) rotate([90, 0, 90]) {
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
	echo(str("Used profile W=", w_segments * 20, " H=", h_segments * 20, " Length=", length, "mm X 1"));
}
