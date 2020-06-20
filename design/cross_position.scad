acr = 3.0;
top = 1.5;
pad = 1.5;
pcb = 1.2;
skt = 1.85;

module cross_position() {
    color("powderblue")
    translate([0, -3])
    difference() {
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

    color("goldenrod") translate([ 1, -1.5]) square([48, 1.5-0.1]);

    translate([ 1, -3]) square([4, 1.5-0.1]);
    translate([45, -3]) square([4, 1.5-0.1]);

    color("lime") translate([ 5, -(5 + pcb)])    square([40, pcb]);
    color("lightgray") translate([10, -(5 + pcb + skt)]) square([10, skt]);
    color("lightgray") translate([30, -(5 + pcb + skt)]) square([10, skt]);
}

cross_position();

echo(9 - (5 + pcb + skt));