module dial() {
	difference() {
		union() {
			cylinder(h=5, r=40);
			cylinder(h=20, r1=25, r2=15);
		}
		cylinder(h=30, r=5);
	}
}

dial();