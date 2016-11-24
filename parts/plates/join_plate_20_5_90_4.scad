include <../../colors.scad>;

use <../../nutsnbolts/cyl_head_bolt.scad>;

module join_plate_20_5_90_4() {
	color(color_steel) import("plates/join_plate_20_5_90_4.stl");
    	translate([0, -4, 0]) rotate([90, 0, 0]) screw("M5x8", thread="modeled");
    	translate([0, -4, 40]) rotate([90, 0, 0]) screw("M5x8", thread="modeled");
    	translate([0, -4, 20]) rotate([90, 0, 0]) screw("M5x8", thread="modeled");
    	translate([-20, -4, 0]) rotate([90, 0, 0]) screw("M5x8", thread="modeled");
    	translate([-40, -4, 0]) rotate([90, 0, 0]) screw("M5x8", thread="modeled");
	echo(str("Used plate 20 5 90 4 x 1"));
}

