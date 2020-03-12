$fn = 64;

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

function intersectionPoint(p1, p2, p3, p4) = 
    // https://qiita.com/uyuutosa/items/8de1f7602cb14c29606f
    let (
        a = (p2[1] - p1[1]) / (p2[0] - p1[0]),
        b = p1[1] - a * p1[0],
        c = (p4[1] - p3[1]) / (p4[0] - p3[0]),
        d = p3[1] - c * p3[0]
    )
    [(d - b) / (a - c), (a * d - b * c)/(a - c)];

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

bridgeTop = [0, u(4)];
bridgeBottom = rotate(rotate([u(5), -u(1)], -30, [u(3), 0]), -10);
module bridge() {
    let(
        top = bridgeTop,
        bottom = bridgeBottom,
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
    difference() {
        round(u(g = 4)) round(-u(g = 4))
        union() {
            translate([-u($distance), 0]) left_outline();
            bridge();
            translate([ u($distance), 0]) right_outline();
        }
        translate([-u($distance), 0]) left_switch_holes();
        translate([ u($distance), 0]) right_switch_holes();
        square(u(g=4));
        translate([-u($distance), 0]) square(u(g=4));
        translate([u($distance), 0]) square(u(g=4));
    }
}
//pcb_outline();

// -----------------------------------------------------------------------

function generateEdges() = 
    let (
        rp0 = rotate(rotate([u(5), -u(1)], -30, [u(3), 0]), -10),
        rp1 = rotate(rotate([u(4), -u(1)], -30, [u(3), 0]), -10),
        rp2 = rotate([u(2.5), -u(1)], -10),
        rp3 = rotate([0, -u(1)], -10),
        rp4 = [0, -u(1)],
        rp5 = [-u(2.75, 21),  -u(1)],
        rp6 = [-u(2.75, 21),   u(4, 3)],
        rp7 = [ u(5), u(4, 3)],
        leftEdges = [
            rp0,
            intersectionPoint(rp0, rp1, rp2, rp3),
            intersectionPoint(rp2, rp3, rp4, rp5),
            rp5,
            rp6,
            rp7
        ],
        lp0 = [u(3, 30),  u(4, 3)],
        lp1 = [u(3, 30), -u(1)],
        rightEdges = [
            [-leftEdges[5][0], leftEdges[5][1]],
            lp0,
            lp1,
            [-leftEdges[2][0], leftEdges[2][1]],
            [-leftEdges[1][0], leftEdges[1][1]],
            [-leftEdges[0][0], leftEdges[0][1]]
        ]
    )
    concat(
        [ for (e = leftEdges)  add(e, [-u($distance), 0]) ],
        [ for (e = rightEdges) add(e, [u($distance), 0]) ]
    );

function generateScrewPositions(edges, offset) =
    let (
        angles = [
            -105, -110, -95, -135, 135, 90,
            90, 45, -45, -85, -70, -75
        ]
    )
    assert(len(edges) == len(angles))
    [ 
        for (i = [0 : len(edges) - 1])
            add(edges[i], [cos(angles[i]) * offset, sin(angles[i]) * offset])
    ];


edges = generateEdges();
screws = generateScrewPositions(edges, 5);
module plate_outline() {
    difference() {
        round(5) round(-5) offset(delta = 10)
        polygon(edges);
        round(1) translate([-u($distance), 0]) left_outline();
        round(1) translate([ u($distance), 0]) right_outline();
    }
}

// -----------------------------------------------------------------------

module cross_position() {
    translate([-25, -100]) {
        color("pink") translate([ 0,  7.5]) square([50, 3.0-0.1]);
        color("pink") translate([-2,  4.5]) square([54, 3.0-0.1]);
        color("pink") translate([-4,  1.5]) square([58, 3.0-0.1]);
        color("gold") translate([-4,  0])   square([58, 1.5-0.1]);
        color("pink") difference() {
            union() {
                      translate([-6, -3])   square([62, 3.0-0.1]);
                      translate([-4, -6])   square([58, 3.0-0.1]);
                      translate([-2, -9])   square([54, 3.0-0.1]);
            }
            translate([5, -9])   square([40, 9.0]);
        }
        color("pink") translate([ 0,-12])   square([50, 3.0-0.1]);

        color("lime") translate([ 5,-5])   square([40, 1.6]);
        color("gray") translate([10,-7])   square([10, 2]);
        color("gray") translate([30,-7])   square([10, 2]);
    }
}
//cross_position();

// -----------------------------------------------------------------------

$layer_thickness = 3;
$z_span = 10;
$screw_holes = [1.5, 1.5, 1.5, 1.5, 1.5, 1.5, 1];
module layer(index) {
    translate([0, 0, ($layer_thickness + $z_span) * index])
    linear_extrude($layer_thickness)
    difference() {
        children();
        for (p = screws) {
            translate(p) circle($screw_holes[index]);
        }
    }
}

{
    layer(6) plate_outline();
    layer(5) plate_outline();
    layer(4) plate_outline();
    layer(3) plate_outline();
    layer(2) plate_outline();
    layer(1) plate_outline();
    layer(0) plate_outline();
}