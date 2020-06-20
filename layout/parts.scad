// ----------------------------------------------------------------------

module conthrough_pin(h = 2.5) {
    let(
        ph = h / 2 + 3,
        pd = 0.3
    )
    color("gold")
    translate([0, 0, h / 2])
    cube([1, pd, ph * 2], center = true);
}

module conthrough(h = 2.5, n = 12) {
    let(
        l = 0.625 + (2.54 * (n - 1)) + 0.625
    )
    union() {
        for (i = [0 : n - 1]) {
            translate([0, 2.54 * i, 0]) conthrough_pin(h); 
        }
        color("#444444")
        translate([-1, -0.625, 0])
        cube([2, l, h]);
    }
}

// ----------------------------------------------------------------------

module usb_plug() {
    let(w = 15, h = 8, d = 20)
    rotate(90, [1, 0, 0])
    linear_extrude(d)
    offset(2) offset(-2)
    square([w, h], center = true);
}

module elite_c_conn() {
    let (
        w = 9.2,
        h = 3.3,
        d = 7.5
    )
    color("silver")
    translate([-w / 2, d])
    rotate(90, [1, 0, 0])
    linear_extrude(d)
    offset(1.5) offset(delta = -1.5)
    square([w, h]);
}

module elite_c() {
    let(
        w = 18.6,
        h = 33.1,
        t = 1.2
    )
    rotate(180, [0, 0, 1])
    union() {        
        translate([0, -0.7, t])
        elite_c_conn();
        
        translate([-7.62, 3.81, t])
        conthrough();
        
        translate([7.62, 3.81, t])
        conthrough();

        color("#444444")
        linear_extrude(t)
        translate([-w / 2, 0])
        square([w, h]);

        color("#88888866")
        translate([0, -1, t + 3.3 / 2])
        usb_plug();
    }
}

// ----------------------------------------------------------------------

module trrs_plug() {
    rotate(90, [1, 0, 0])
    cylinder(20, d = 8.5);
}

module trrs_leg() {
    translate([0, 0, -1])
    cylinder(1, d = 0.8);
}

module trrs_pin() {
    color("silver")
    translate([0, 0, -1.5])
    cube([0.2, 0.6, 3], center = true);
}

module trrs_jack() {
    let (
        w = 6,
        h = 5,
        r = h / 2
    )
    rotate(180, [1, 0, 0])
    union() {        
        color("#444444") {
            translate([-w/2, 0])
            cube([w, 12.1, h]);

            rotate(90, [1, 0, 0])
            translate([0, r])
            cylinder(2, r = r);

            translate([0, 1.5]) trrs_leg();
            translate([0, 8.5]) trrs_leg();
        }

        translate([ 2.1, 11.8]) trrs_pin();
        translate([-2.1, 10.3]) trrs_pin();
        translate([-2.1,  6.3]) trrs_pin();
        translate([-2.1,  3.3]) trrs_pin();
        
        color("#88888866")
        translate([0, -2.1, h/2])
        trrs_plug();
    }
}

// ----------------------------------------------------------------------

module tvbp06_leg() {
    let(
        t = 0.3,
        x = (7.7 - 6.5 - t) / 2
    ){
        color("silver")
        rotate(90, [1, 0, 0])
        polygon([
            [0.0, -3.5],
            [0.0, -(3.5 - 0.6)],
            [x,   -1.6],
            [0.0, -0.6],
            [0.0, 0],
            [0.0, 1],
            [0.3, 1],
            [0.3, 0],
            [0.3, -0.6],
            [x + 0.3, -1.6],
            [0.3, -(3.5 - 0.6)],
            [0.3, -3.5]
        ]);
    }
}

module tvbp06() {
    rotate(180, [1, 0, 0])
    union() {
        color("#444444") {
            linear_extrude(3)
            square([6.0, 3.5], center = true);

            linear_extrude(4.3)
            square([2.95, 1.45], center = true);
            
            translate([ 2.25, 0])
            linear_extrude(3.5)
            square([0.75, 1.85], center = true);
            
            translate([-2.25, 0])
            linear_extrude(3.5)
            square([0.75, 1.85], center = true);
        }

        color("silver")
        translate([0, 0, 3.0])
        linear_extrude(0.3)
        square([6.0, 3.5], center = true);

        translate([-3, 0])
        rotate(180, [0, 0, 1])
        tvbp06_leg();

        translate([3, 0])
        tvbp06_leg();
    }
}

// ----------------------------------------------------------------------

$fn = 128;
*elite_c();
trrs_jack();
*tvbp06();
