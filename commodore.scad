

use <body.scad>;
use <base.scad>;
use <monitor.scad>;
use <keyboard.scad>;

difference() {
  translate([0, 0, 10]) {
    frame = 1;  // 0: no frame, 1: frame only, 2: all
    monitor(frame);
    
    switches = 1; // 0: no keyboard switches, 1: keyboard switches
    *body(switches);
    *base(switches);
    *translate([-0, 0, 3.1])
      rotate([13, 0, 0])
        keyboard(switches);
    
    *translate([21, -10, -5])
      rotate([0, 180, 0])
        rotate([-90, 0, 0])
          import(file="esp.stl");
  }
  *translate([-50, -7, 0])
    cube([100, 100, 100]);
}



