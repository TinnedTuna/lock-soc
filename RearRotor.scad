$fn=55;
module rearRotor() {
	union() {
		difference() {
			cylinder(h=5, r=40);
			cylinder(h=5, r=5);
			translate([15,15,0]) {
				rotate([0,0,45]) {
					hull() {
						translate([0,-2.5,0]) {
							cube([20,5,5]);
						}
						cylinder(h=5, r=2.5);
					}
				}
			}
		}
		translate([-39.735,-2.5,0]) {
			cube([15,5,10]);
		}
	}
}

rearRotor();