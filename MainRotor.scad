module rotor() {
	union() {
		difference() {
			cylinder(h=5, r=40);
			cylinder(h=5, r=5);
			translate([0,40,0]) {
				cylinder(h=5, r=6);
			}
		}
		translate([0,-39.75, -5]) {
			cube(size=[4,15,15], centre=true);
		}
	}
}

rotor();
