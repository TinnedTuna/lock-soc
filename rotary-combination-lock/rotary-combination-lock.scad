$fn=55;

module tab() {
	cube([15,5,10]);
}

module largeTab() {
	translate([0,0,-5]) {
		cube([15,5,15]);
	}
}

module notch() {
	hull() {
		translate([0,-2.5,0]) {
			cube([20,5,5]);
		}
		cylinder(h=5, r=2.5);
	}
}

module rotorBody() {
	difference() {
		cylinder(h=5, r=40);
		cylinder(h=5, r=5);
	}
}

module rearRotor() {
	union() {
		translate([-39.735, -2.5, 0]) {
			tab();
		}
		difference() {
			rotorBody();
			translate([15,15,0]) {
				rotate([0,0,45]) {
					notch();
				}
			}
		}
	}
}

module centreRotor()  {
	union() {
		translate([-39.735, -2.5, 0]) {
			largeTab();
		}
		difference() {
			rotorBody();
			translate([20,0,0]) {
				notch();
			}
		}
	}
}

module frontRotor() {
	union() {
		translate([-39.735, -2.5, 0]) {
			tab();
		}
		difference() {
			rotorBody();
			rotate([0,0,-45]) {
				translate([20,0,0]) {
					notch();
				}
			}
		}
	}
}

module dial() {
	union() {
		cylinder(h=5, r=40);
		cylinder(h=20, r1=25, r2=15);
	}
}

module spindle() {
	translate([0,0,-30]) {
		cylinder(h=70, r=4.5);
	}
	translate([0,0,22]) {
		cylinder(h=5,r=5.1);
	}
}

union() {
	rearRotor();
	rotate([0,0,15]) {
		translate([0,0,11]) {
			centreRotor();
		}
	}
	translate([0,0,27]) {
		rotate([0,180,209]) {
			frontRotor();
		}
	}
	translate([0,0,31]) {
		dial();
	}
	spindle();
}