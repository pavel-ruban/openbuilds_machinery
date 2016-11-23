use <parts/parts_lib.scad>;

for (i = [0:10]) {
    translate([i * 15, 0, 0])
    derlin_wheel();
}