include <../../colors.scad>;

module t_nut_m5() {
	color(color_steel) import("nuts/t-nut-m5.stl");
	echo(str("Used t nut m5 x 1"));
}

