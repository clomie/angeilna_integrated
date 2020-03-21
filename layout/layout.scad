$fn = 128;

function rotate(pos, r, axis = [0, 0]) =
    let (
        x = pos[0] - axis[0],
        y = pos[1] - axis[1]
    )
    [
        x * cos(r) - y * sin(r) + axis[0],
        y * cos(r) + x * sin(r) + axis[1]
    ];

function add(p, v) = [p[0] + v[0], p[1] + v[1]];
function move(p, a, o) = add(p, [cos(a) * o, sin(a) * o]);

// Y軸を中心に反転
function flip(v) = [-v[0], v[1]];
function flip_all(vs) = [ for (v = vs) flip(v) ];

// p1-p2, p3-p4の交点
function int(p1, p2, p3, p4) = 
    // https://qiita.com/uyuutosa/items/8de1f7602cb14c29606f
    let (
        a = (p2[1] - p1[1]) / (p2[0] - p1[0]),
        b = p1[1] - a * p1[0],
        c = (p4[1] - p3[1]) / (p4[0] - p3[0]),
        d = p3[1] - c * p3[0]
    )
    (p2[0] - p1[0]) == 0 ? [p1[0], c * p1[0] + d] :
    (p4[0] - p3[0]) == 0 ? [p3[0], a * p3[0] + b] :
    [(d - b) / (a - c), (a * d - b * c)/(a - c)];

function screw_offset(edge, prev, pAngle, next, nAngle, width) =
    let (
        a1 = move(prev, pAngle, width),
        a2 = move(edge, pAngle, width),
        b1 = move(edge, nAngle, width),
        b2 = move(next, nAngle, width)
    )
    int(a1, a2, b1, b2);

function sum(arr, index = -1) = 
    let (
        index = index < 0 ? len(arr) : index,
        i = index - 1
    )
    index == 0 ? 0 : arr[i] + sum(arr, i);

// -----------------------------------------------------------------------

$unit = 19.05;
$grid = 1 / 64;

function u(u = 0, g = 0) = (u + g(g)) * $unit;
function g(g = 0) = g * $grid;

module round(r) {
    offset(r) offset(-r) children();
}

// -----------------------------------------------------------------------

$switch_hole_size = 14;

module align_switch_row(units) {
    let (widths = [ for (u = units) u * $unit ])
    for (i = [0 : len(units) - 1]) {
        let (
            unit = units[i],
            x = sum(widths, i)
        )
        translate([x + u(unit) / 2, u(1) / 2])
        difference() {
//            square([u(unit), u(1)], true);
            square($switch_hole_size, true);
        }
    }
}

module cluster_switch(rows = []) {
    for (i = [0 : len(rows) - 1]) {
        let (
            offset = rows[i][0],
            row = rows[i][1]
        )
        translate([u(offset), -u(i)])
        align_switch_row(row);
    }
}

// -----------------------------------------------------------------------

module left_switch_holes() {
    mirror([1,0,0])
    translate([0, u(3)])
    cluster_switch([
        [g(30), [1, 1]],
        [g(10), [1, 1.5]],
        [g(21), [1, 1.75]],
        [g( 0), [1, 1.75]],
        [g(16), [1, 1.25]]
    ]);
    
    translate([0, u(3, 3)])
    cluster_switch([
        [-g(30), [1]],
    ]);

    rotate(-10)
    translate([0, u(3)])
    cluster_switch([
      [   0, [1, 1, 1, 1]],
      [-0.5, [1, 1, 1, 1]],
      [-0.5, [1, 1, 1, 1]],
      [   0, [1, 1, 1, 1]],
      [   0, [1.25, 1.25]]
    ]);

    rotate(-10)
    translate([u(3), 0])
    rotate(-30)
    cluster_switch([
      [1, [1]],
      [0, [1, 1]]
    ]);
}

module left_outline() {
    polygon([
        [ u(0.25), -u(1)],
        [ u(0.25),  u(4)],
        [-u(2.75, 21),  u(4)],
        [-u(2.75, 21), -u(1)]
    ]);

    translate([-u(0, 30), u(3, 3)])
    square($unit);
    
    rotate(-10)
    polygon([
        [-u(0.5), -u(1)],
        [ u(4.0), -u(1)],
        [ u(4.0),  u(4)],
        [-u(0.5),  u(4)]
    ]);

    rotate(-10)
    translate([u(3), 0])
    rotate(-30)
    polygon([
        [u(0), -u(1)],
        [u(0),  u(1)],
        [u(2),  u(1)],
        [u(2), -u(1)]
    ]);
}

// -----------------------------------------------------------------------

module right_switch_holes() {
    mirror([1,0,0]) {
        mirror([1,0,0])
        translate([0, u(3)])
        cluster_switch([
            [g(30), [1, 1, 1]],
            [g(10), [1, 1, 1]],
            [g(21), [1, 1, 1]],
            [g( 0), [1, 1, 1]],
            [g(16), [1, 1.25]]
        ]);
        
        translate([0, u(3, 3)])
        cluster_switch([
            [-g(30), [1]],
        ]);

        rotate(-10)
        translate([0, u(3)])
        cluster_switch([
          [   0, [1, 1, 1, 1]],
          [-0.5, [1, 1, 1, 1]],
          [-0.5, [1, 1, 1, 1]],
          [   0, [1, 1, 1, 1]],
          [   0, [1.25, 1.25]]
        ]);

        rotate(-10)
        translate([u(3), 0])
        rotate(-30)
        cluster_switch([
          [1, [1]],
          [0, [1, 1]]
        ]);
    }
}

module right_outline() {
    mirror([1, 0, 0]) {
        polygon([
            [ u(0.25),  -u(1)],
            [ u(0.25),   u(4)],
            [-u(3, 30),  u(4)],
            [-u(3, 30), -u(1)]
        ]);

        translate([-u(0, 30), u(3, 3)])
        square($unit);
        
        rotate(-10)
        polygon([
            [-u(0.5), -u(1)],
            [ u(4.0), -u(1)],
            [ u(4.0),  u(4)],
            [-u(0.5),  u(4)]
        ]);

        rotate(-10)
        translate([u(3), 0])
        rotate(-30)
        polygon([
            [u(0), -u(1)],
            [u(0),  u(1)],
            [u(2),  u(1)],
            [u(2), -u(1)]
        ]);
    }
}

// -----------------------------------------------------------------------

$distance = 6.75;

module bridge() {
    let(
        top = [0, u(4)],
        //top = rotate([u(4), u(4)], -10),
        bottom = rotate(rotate([u(5), -u(1)], -30, [u(3), 0]), -10),
        tx = top[0] - u($distance),
        ty = top[1],
        bx = bottom[0] - u($distance),
        by = bottom[1]
    )
    polygon([
        [tx, ty],
        [bx, by],
        [-bx, by],
        [-tx, ty]
    ]);
}

module pcb_outline() {
    round(u(g = 4)) round(-u(g = 4))
    union() {
        translate([-u($distance), 0]) left_outline();
        bridge();
        translate([ u($distance), 0]) right_outline();
    }
}

module pcb_with_anchor() {
    difference() {
        pcb_outline()
        square(u(g=4));
        translate([-u($distance), 0]) square(u(g=4));
        translate([u($distance), 0]) square(u(g=4));
    }
}

module switches() {
    translate([-u($distance), 0]) left_switch_holes();
    translate([ u($distance), 0]) right_switch_holes();
}

// -----------------------------------------------------------------------

origin = [-u($distance), 0];

c0 = add(rotate(rotate([u(5), -u(1)], -30, [u(3), 0]), -10), origin);
c1a = add(rotate(rotate([u(4), -u(1)], -30, [u(3), 0]), -10), origin);
c1b = add(rotate([u(2.5), -u(1)], -10), origin);
c2a = add(rotate([0, -u(1)], -10), origin);
c2b = add([-u(1, 16), -u(1)], origin);
c1 = int(c0, c1a, c1b, c2a);
c3 = add([-u(2.25, 16), -u(1)], origin);
c2 = int(c1b, c2a, c2b, c3);
c4 = add([-u(2.25, 16), -u(0)], origin);

l5 = add([-u(2.75, 0), u(0)], origin);
l6 = add([-u(2.75, 0), u(1)], origin);
l7 = add([-u(2.75, 21), u(1)], origin);
l8 = add([-u(2.75, 21), u(2)], origin);
l9 = add([-u(2.5, 10), u(2)], origin);
l10 = add([-u(2.5, 10), u(3)], origin);
l11 = add([-u(2, 30), u(3)], origin);
l12 = add([-u(2, 30), u(4)], origin);

r5 = add([-u(3), u(0)], origin);
r6 = add([-u(3), u(1)], origin);
r7 = add([-u(3, 21), u(1)], origin);
r8 = add([-u(3, 21), u(2)], origin);
r9 = add([-u(3, 10), u(2)], origin);
r10 = add([-u(3, 10), u(3)], origin);
r11 = add([-u(3, 30), u(3)], origin);
r12 = add([-u(3, 30), u(4)], origin);

c13 = add([-u(0, 30), u(4)], origin);
c14 = add([-u(0, 30), u(4, 3)], origin);
c15 = add([u(1, -30), u(4, 3)], origin);
c16a = add([u(1, -30), u(3, 3)], origin);
c17 = add(rotate([0, u(4)], -10), origin);
c18 = add(rotate([u(4), u(4)], -10), origin);
c16 = int(c15, c16a, c17, c18);
c19 = add(rotate([u(4), u(3)], -10), origin);
c20 = add(rotate([u(3.5), u(3)], -10), origin);
c21 = add(rotate([u(3.5), u(1)], -10), origin);
c22 = add(rotate([u(4), u(1)], -10), origin);
c23a = add(rotate([u(4), u(0)], -10), origin);
c23b = add(rotate(rotate([u(4), u(1)], -30, [u(3), 0]), -10), origin);
c24 = add(rotate(rotate([u(5), u(1)], -30, [u(3), 0]), -10), origin);
c23 = int(c22, c23a, c23b, c24);

module switch_zone_edges() {
    let (
        lefts = [
            c0, c1, c2, c3, c4,
            l5, l6, l7, l8, l9, l10, l11, l12,
            c13, c14, c15, c16,
            c17, c18, c19, c20, c21, c22,
            c23, c24,
        ],
        rights = flip_all([
            c0, c1, c2, c3, c4,
            r5, r6, r7, r8, r9, r10, r11, r12,
            c13, c14, c15, c16,
            c17, c18, c19, c20, c21, c22,
            c23, c24,
        ])
    )
    round(1) round(-1) 
    offset(delta = 0.5)
    union() {
        polygon(lefts);
        polygon(rights);
    }
}

// -----------------------------------------------------------------------

sl1 = add([-u(2.75, 21), -u(1)], origin);
sl2 = add([-u(2.75, 21),  u(4, 3)], origin);
sr2 = add([-u(3, 30), u(4,3)], origin);
sr1 = add([-u(3, 30), -u(1)], origin);

sc3 =  add([u(1),  u(4, 3)], origin);
sc4 =  add([u(5),  u(4, 3)], origin);
sc0 = [0, c0[1]];

function generateScrewPositions(offset) =
    let (
        s0 = screw_offset(c0, sc0, -90, c1, -130, offset),
        s1 = screw_offset(c1, c0, -130, c2, -100, offset),
        s2 = screw_offset(c2, c1, -100, c3, -90, offset),
        s3 = add(sl1, [-offset, -offset]),
        s4 = add(sl2, [-offset, offset]),
        s5 = add(sc3, [0, offset]),
        s6 = add(sc4, [0, offset]),
        s7 = flip(s6),
        s8 = flip(s5),
        s9 = add(flip(sr2), [offset, offset]),
        s10 = add(flip(sr1), [offset, -offset]),
        s11 = flip(s2),
        s12 = flip(s1),
        s13 = flip(s0),
        s14 = move(sc0, -90, offset)
    )
    echo(s3)
    [s0, s1, s2, s3, s4, s5, s6, s7, s8, s9, s10, s11, s12, s13, s14];

module plate_outline() {
    let (
        left = [
            c0,
            int(c0, c1a, c1b, c2a),
            int(c1b, c2a, c2b, c3),
            sl1, sl2,
        ],
        right = [
            sr2, sr1,
            int(c1b, c2a, c2b, c3),
            int(c0, c1a, c1b, c2a),
            c0
        ],
        ps = concat(left, flip_all(right))
    )
    polygon(ps);
}

// -----------------------------------------------------------------------

module cross_position() {
    translate([-25, -100]) {
        color("cyan") difference() {
            union() {
                translate([ 0, 9]) square([50 + 0, 3.0-0.1]);
                translate([-1, 6]) square([50 + 2, 3.0-0.1]);
                translate([-2, 3]) square([50 + 4, 3.0-0.1]);
//                translate([-3, 0]) square([50 + 6, 3.0-0.1]);
//                translate([-2,-3]) square([50 + 4, 3.0-0.1]);
//                translate([-1,-6]) square([50 + 2, 3.0-0.1]);
//                translate([ 0,-9]) square([50 + 0, 3.0-0.1]);
                translate([-3,-1.5]) square([50 + 6, 3.0-0.1]);
                translate([-2,-4.5]) square([50 + 4, 3.0-0.1]);
                translate([-1,-7.5]) square([50 + 2, 3.0-0.1]);
                translate([ 0,-10.5]) square([50 + 0, 3.0-0.1]);
            }
//            translate([ 1, 0])   square([48, 3.0]);
//            translate([ 5,-6])   square([40, 9.0]);
            translate([ 5,-7.5])   square([40, 9.0]);
        }

//        color("gold") translate([ 1, 1.5]) square([48, 1.5-0.1]);
        color("gold") translate([ -2, 1.5]) square([50+4, 1.5-0.1]);

//        translate([ 1, 0]) square([4, 1.6]);
//        translate([45, 0]) square([4, 1.6]);

        color("lime") translate([ 5, 3 - 5 - 1.6])     square([40, 1.6]);
        color("gray") translate([ 5, 3 - 5 - 1.6 - 5.5])     circle(0.3);
        color("gray") translate([10, 3 - 5 - 1.6 - 2]) square([10, 2]);
        color("gray") translate([30, 3 - 5 - 1.6 - 2]) square([10, 2]);
    }
}

// -----------------------------------------------------------------------

$layer_thickness = [3, 3, 3, 3, 1.5, 3, 3, 3];
$z_span = 0;
module layer(index) {
    color(index == 4 ? "Goldenrod" : "powderblue")
    translate([0, 0, sum($layer_thickness, index) + $z_span * index])
    linear_extrude($layer_thickness[index])
    children();
}

$base_offset = 12;
module offset_step(level) {
    let(
        br = $base_offset / 2,
        bo = $base_offset,
        step_offsets = [1.5, 1.1, 0.7],
//        step_offsets = [0, 0, 0],
        bezel_width = bo + sum(step_offsets, level),
        round_convex = br + sum(step_offsets, level),
        round_concave = br + sum(step_offsets, len(step_offsets) - level)
    )
    round(round_convex) round(-round_concave)
    offset(delta = bezel_width)
    children();
}

screws = generateScrewPositions($base_offset / 2);
module screw_hole(r) {
    difference() {
        children();
        for (p = screws) {
            translate(p) circle(r);
        }
    }
}

module above_plate() {
    difference() {
        children();
        switch_zone_edges();
    }
}

module top_plate() {
    difference() {
        children();
        switches();
    }
}

module under_plate() {
    difference() {
        children();
        pcb_outline();
    }
}

module pcb() {
    translate([0, 0, 3 * 4 - 5 - 1.6])
    linear_extrude(1.6)
    pcb_outline();    
}

module leg_back(hole) {
    let(width = $base_offset / 2)
    union() {
        difference() {
            hull() {
                translate(screws[4]) circle(width);
                translate(screws[6]) circle(width);
            }
            translate(screws[4]) circle(hole);
            translate(screws[5]) circle(hole);
            translate(screws[6]) circle(hole);
        }
        difference() {
            hull() {
                translate(screws[7]) circle(width);
                translate(screws[9]) circle(width);
            }
            translate(screws[7]) circle(hole);
            translate(screws[8]) circle(hole);
            translate(screws[9]) circle(hole);
        }
    }
}

module leg_front(hole) {
    let(width = $base_offset / 2)
    union() {
        difference() {
            hull() {
                translate(screws[2]) circle(width);
                translate(screws[3]) circle(width);
            }
            translate(screws[2]) circle(hole);
            translate(screws[3]) circle(hole);
        }
        difference() {
            hull() {
                translate(screws[10]) circle(width);
                translate(screws[11]) circle(width);
            }
            translate(screws[10]) circle(hole);
            translate(screws[11]) circle(hole);
        }
    }
}

module all() {
    layer(7) screw_hole(1.0) above_plate() offset_step(0) plate_outline();
    layer(6) screw_hole(1.5) above_plate() offset_step(1) plate_outline();
    layer(5) screw_hole(1.5) above_plate() offset_step(2) plate_outline();
    layer(4) screw_hole(1.5) top_plate()   offset_step(2) plate_outline();
    layer(3) screw_hole(1.5) under_plate() offset_step(3) plate_outline();
    layer(2) screw_hole(1.5) under_plate() offset_step(2) plate_outline();
    layer(1) screw_hole(1.5) under_plate() offset_step(1) plate_outline();
    layer(0) screw_hole(1.0)               offset_step(0) plate_outline();

    color("lightgray") pcb();

    translate([0, 0, -3]) linear_extrude(3) leg_back(1.5);
    translate([0, 0, -6]) linear_extrude(3) leg_back(1.5);
    translate([0, 0, -9]) linear_extrude(3) leg_back(1.5);
    translate([0, 0, -11]) linear_extrude(2) leg_back(1.5);
    translate([0, 0, -13]) linear_extrude(2) leg_back(1);

    translate([0, 0, -3]) linear_extrude(3) leg_front(1);
}

all();
//cross_position();

y0 = screws[0][1];
y1 = screws[3][1] - y0;
y2 = screws[4][1] - y0;
echo(0, y1, y2);
echo(0, 3, y2 / y1 * 3);
