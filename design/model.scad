use <parts.scad>

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

function getDegree(p1, p2) = atan2(p2[1] - p1[1], p2[0] - p1[0]);

function screw_offset(edge, prev, next, width) =
    let (
        pAngle = getDegree(edge, prev) - 90,
        nAngle = getDegree(next, edge) - 90,
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

module switches() {
    translate([-u($distance), 0]) left_switch_holes();
    translate([ u($distance), 0]) right_switch_holes();
}

// -----------------------------------------------------------------------

$distance = 6.75;
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

sl1 = add([-u(2.75, 21), -u(1)], origin);
sl2 = add([-u(2.75, 21),  u(4, 3)], origin);
sr2 = add([-u(3, 30), u(4,3)], origin);
sr1 = add([-u(3, 30), -u(1)], origin);

_x0 = abs(l7[0]) * 2 / 5;
sc3 = [l7[0] + _x0,  u(4, 3)];
sc4 = [l7[0] + _x0 * 2,  u(4, 3)];
sc0 = [0, c0[1]];
c23 = int(c22, c23a, c23b, c24);

// -----------------------------------------------------------------------

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
    union() {
        polygon(lefts);
        polygon(rights);
    }
}

function generateScrewPositions(offset) =
    let (
        s0 = screw_offset(c0, sc0, c2, offset),
        s2 = screw_offset(c2, c0, c3, offset),
        s3 = add(sl1, [-offset, -offset]),
        s4 = add(sl2, [-offset, offset]),
        s5 = add(sc3, [0, offset]),
        s6 = add(sc4, [0, offset]),
        s7 = flip(s6),
        s8 = flip(s5),
        s9 = add(flip(sr2), [offset, offset]),
        s10 = add(flip(sr1), [offset, -offset]),
        s11 = flip(s2),
        s13 = flip(s0)
    )
    [s0, s2, s3, s4, s5, s6, s7, s8, s9, s10, s11, s13];

module plate_outline() {
    let (
        left  = [c0, c2, sl1, sl2],
        right = [sr2, sr1, c2, c0],
        ps = concat(left, flip_all(right))
    )
    polygon(ps);
}

ss = generateScrewPositions(0);
module gasket_tab(p, n) {
    let (
        width = 7,
        angle = getDegree(n, p),
        c = [(p[0] + n[0]) / 2, (p[1] + n[1]) / 2],
        a1 = move(c, angle, 18),
        b1 = move(c, angle - 180, 18),
        a2 = move(a1, angle - 90, width),
        b2 = move(b1, angle - 90, width)        
    )
    polygon([a1, a2, b2, b1]);
}

module top_plate_outline() {
    union() {
        plate_outline();
        gasket_tab(ss[0], ss[1]);
        gasket_tab(ss[1], ss[2]);
        gasket_tab(ss[3], ss[4]);
        gasket_tab(ss[4], ss[5]);
        gasket_tab(ss[6], ss[7]);
        gasket_tab(ss[7], ss[8]);
        gasket_tab(ss[9], ss[10]);
        gasket_tab(ss[10], ss[11]);
        gasket_tab(ss[11], sc0);
        gasket_tab(sc0, ss[0]);
    }
}

module pcb_outline() {
    difference() {
        round(u(g = 4)) round(-u(g = 4))
        plate_outline();

        // Cutout for USB-C Connector
        round(u(g = 2)) round(-u(g = 2))
        union() {
            translate([-10, u(4, 3)]) square([20, 8]);
            translate([-5, u(4, 3) - 8]) square([10, 8]);
        }
        
        // Cutout for Reset switch and Qwiic Connector
        round(u(g = 2)) round(-u(g = 2))
        translate([-5, u(4, 3) - 33.05]) square([10, 8]);
    }
}

module pcb_with_anchor() {
    difference() {
        pcb_outline();

        square(u(g=4));
        translate([-u($distance), 0]) square(u(g=4));
        translate([u($distance), 0]) square(u(g=4));
    }
}

// -----------------------------------------------------------------------

$layer_thickness = [3, 3, 3, 3, 3, 3, 3];
module layer(index) {
    color("#8db4b988")
    translate([0, 0, sum($layer_thickness, index)])
    linear_extrude($layer_thickness[index])
    children();
}

$base_offset = 12;
$step_offsets = [1.5, 1.1, 0.7];
function calc_bezel_width(level) =
    $base_offset + sum($step_offsets, level);

module offset_step(level) {
    let(
        br = $base_offset / 2,
        bo = $base_offset,
        bezel_width = calc_bezel_width(level),
        round_convex = br + sum($step_offsets, level),
        round_concave = br + sum($step_offsets, len($step_offsets) - level)
    )
    round(round_convex) round(-round_concave)
    offset(delta = bezel_width)
    children();
}

screws = generateScrewPositions(calc_bezel_width(2) / 2);
module screw_hole(r, bottom = false) {
    difference() {
        children();
        for (i = [0 : len(screws) - 1]) {
            if (bottom && (i <= 2 || i >= 9)) {
                translate(screws[i]) circle(1.0);
            } else {
                translate(screws[i]) circle(r);
            }
        }
    }
}

module above_plate() {
    difference() {
        children();
        round(1) round(-1) offset(delta = 0.5) switch_zone_edges();
    }
}

module under_plate() {
    difference() {
        children();
        round(u(g = 4)) round(-u(g = 4)) offset(delta = 2.5) plate_outline();
    }
}

module gasket_plate() {
    round(u(g = 4)) round(-u(g = 4))
    difference() {
        children();
        round(u(g = 4)) round(-u(g = 4)) offset(delta = 2.5) plate_outline();
        round(u(g = 4)) round(-u(g = 4)) offset(delta = 1.5) top_plate_outline();
    }
}

module top_plate() {
    difference() {
        round(u(g = 4)) round(-u(g = 4)) offset(delta = 1.5) top_plate_outline();
        switches();
    }
}

module arrange_top_plate() {
    let (t = 1.5)
    color("goldenrod")
    translate([0, 0, sum($layer_thickness, 4) - t])
    linear_extrude(t)
    children();
}

module arrange_pcb() {
    let(
        mount_height = 5,
        t = 1.2,
        z_pos = sum($layer_thickness, 4) - mount_height - t
    )
    translate([0, 0, z_pos])
    union() {
        translate([0, 0, -(2.5 + t)])
        translate([0, u(4, 3), 0])
        elite_c();

        translate([14.88, 0, 0])
        translate([0, u(4, 3), 0])
        trrs_jack();

        translate([-16.07, -1.79, 0])
        translate([0, u(4, 3), 0])
        tvbp06();

        *translate([-208.3592, -148.828, 1.3])
        linear_extrude(0.25)
        import("angelina_integrated-brd.svg");

        color("green")
        linear_extrude(t)
        children();
    }
}

module cutout_shape() {
    let(
        ew = 4 + 18.6,
        eh = 3 + 33.1,
        tw = 6 + 6,
        th = 2 + 12.1,
        b = calc_bezel_width(0)
    )
    translate([0, u(4, 3), 0])
    round(u(g = 4)) round(-u(g = 4))
    union() {
        translate([0, -eh/2])
        square([ew, eh], center = true);
        translate([0, -th])
        square([14.88 + tw/2, th]);
        translate([-ew/2, 0])
        square([ew/2 + 14.88 + tw/2, b]);
        translate([0, b + 10/2])
        square([50, 10], center = true);
    }
}

module conn_cutout(level) {
    let(
        offset = calc_bezel_width(level) - calc_bezel_width(0)
    )
    difference() {
        children();
        translate([0, offset, 0])
        cutout_shape();
        if (level == 0) {
            translate([0, u(4, 3), 0])
            translate([-16.07, -1.79, 0])
            circle(2);
        }
    }
}

module leg_back(hole) {
    let (
        width = $base_offset / 2,
        pos = generateScrewPositions(calc_bezel_width(0) / 2)
    )
    union() {
        difference() {
            hull() {
                translate(pos[3]) circle(width);
                translate(pos[5]) circle(width);
            }
            translate(screws[3]) circle(hole);
            translate(screws[4]) circle(hole);
            translate(screws[5]) circle(hole);
        }
        difference() {
            hull() {
                translate(pos[6]) circle(width);
                translate(pos[8]) circle(width);
            }
            translate(screws[6]) circle(hole);
            translate(screws[7]) circle(hole);
            translate(screws[8]) circle(hole);
        }
    }
}

module leg_front(hole) {
    let (
        width = $base_offset / 2,
        pos = generateScrewPositions(calc_bezel_width(0) / 2)
    )
    union() {
        difference() {
            hull() {
                translate(pos[1]) circle(width);
                translate(pos[2]) circle(width);
            }
            translate(screws[1]) circle(hole);
            translate(screws[2]) circle(hole);
        }
        difference() {
            hull() {
                translate(pos[9]) circle(width);
                translate(pos[10]) circle(width);
            }
            translate(screws[9]) circle(hole);
            translate(screws[10]) circle(hole);
        }
    }
}

module layer6() { screw_hole(1.0) above_plate()  offset_step(0) plate_outline(); }
module layer5() { screw_hole(1.6) above_plate()  offset_step(1) plate_outline(); }
module layer4() { screw_hole(1.6) above_plate()  offset_step(2) plate_outline(); }
module layer3() { screw_hole(1.6) gasket_plate() offset_step(3) plate_outline(); }
module layer2() { conn_cutout(2) screw_hole(1.6) under_plate() offset_step(2) plate_outline(); }
module layer1() { conn_cutout(1) screw_hole(1.6) under_plate() offset_step(1) plate_outline(); }   
module layer0() { conn_cutout(0) screw_hole(1.6, bottom=true)  offset_step(0) plate_outline(); }

module all() {
    
//    translate([0, 0, 45])
    arrange_top_plate() top_plate();

//    translate([0, 0, 10])
    arrange_pcb() pcb_outline();

//    translate([0, 0, 120])
    union() {
        layer(6) layer6();
        layer(5) layer5();
        layer(4) layer4();
    }

//    translate([0, 0, 30])
    layer(3) layer3();

    union() {
        layer(2) layer2();
        layer(1) layer1();
        layer(0) layer0();
        translate([0, 0, -3]) linear_extrude(3) leg_back(1.6);
        translate([0, 0, -6]) linear_extrude(3) leg_back(1.6);
        translate([0, 0, -9]) linear_extrude(3) leg_back(1.6);
        translate([0, 0,-12]) linear_extrude(3) leg_back(1);
        translate([0, 0,-15]) linear_extrude(3) leg_back(1); // 15mm
        translate([0, 0, -3]) linear_extrude(3) leg_front(1);
    }
}

module tilt() {
    let (
        ps = generateScrewPositions($base_offset / 2),
        d1 = ps[0][1],
        d2 = ps[2][1] - d1,
        d3 = ps[3][1] - d1,
        theta = atan(15 / d3)
    ) {
        echo(0, d2, d3);
        echo(15 / d3 * d2);
        echo(theta);

        rotate(theta, [1, 0, 0])
        translate([0, -ss[0][1] + $base_offset, 0])
        children();
    }
}

tilt()
all();

*pcb_with_anchor();
*top_plate();

*layer0();
*layer1();
*layer2();
*layer3();
*layer4();
*layer5();
*layer6();

*leg_back(1.6);
*leg_back(1);
*leg_front(1);
