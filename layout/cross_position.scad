module cross_position() {
    color("powderblue") difference() {
        union() {
            translate([ 0, 9]) square([50 + 0, 3.0-0.1]);
            translate([-1, 6]) square([50 + 2, 3.0-0.1]);
            translate([-2, 3]) square([50 + 4, 3.0-0.1]);
            translate([-3, 0]) square([50 + 6, 3.0-0.1]);
            translate([-2,-3]) square([50 + 4, 3.0-0.1]);
            translate([-1,-6]) square([50 + 2, 3.0-0.1]);
            translate([ 0,-9]) square([50 + 0, 3.0-0.1]);
        }
        translate([ 1, 0])   square([48, 3.0]);
        translate([ 5,-6])   square([40, 9.0]);
    }

    color("goldenrod") translate([ 1, 1.5]) square([48, 1.5-0.1]);

    translate([ 1, 0]) square([4, 1.6]);
    translate([45, 0]) square([4, 1.6]);

    color("lime") translate([ 5, 3 - 5 - 1.6])     square([40, 1.6]);
    color("lightgray") translate([10, 3 - 5 - 1.6 - 2]) square([10, 2]);
    color("lightgray") translate([30, 3 - 5 - 1.6 - 2]) square([10, 2]);
}

cross_position();