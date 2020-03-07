$fn = 120;

$unit = 19.05;
$grid = 1 / 64;

function u(u = 0, g = 0) = (u + g(g)) * $unit;
function g(g = 0) = g * $grid;

function rotate(pos, r, axis = [0, 0]) =
    let(
        x = pos[0] - axis[0],
        y = pos[1] - axis[1]
    )
    [
        x * cos(r) - y * sin(r) + axis[0],
        y * cos(r) + x * sin(r) + axis[1]
    ];

function add(p, v) = [p[0] + v[0], p[1] + v[1]];

// -----------------------------------------------------------------------

module round(r) {
    offset(r) offset(-r) children();
}

// -----------------------------------------------------------------------

$switch_hole_size = 14;

function calc_switch_x(arr, index, i = 0, a = 0) = 
    i < index
        ? calc_switch_x(arr, index, i + 1, a + arr[i] * $unit)
        : a;

module align_switch_row(units) {
    for (i = [0 : len(units) - 1]) {
        let (
            unit = units[i],
            x = calc_switch_x(units, i)
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

$distance = 6.25;

bridgeTop = rotate([u(4), u(4)], -10);
bridgeBottom = rotate(rotate([u(5), -u(1)], -30, [u(3), 0]), -10);
module bridge() {
    let(
        top = bridgeTop,
        bottom = bridgeBottom,
        ty = top[1],
        bx = bottom[0] - u($distance),
        by = bottom[1]
    )
    polygon([
        [bx, ty],
        [bx, by],
        [-bx, by],
        [-bx, ty]
    ]);
}

translate([0, -bridgeBottom[1], 0])
difference() {
    round(u(g = 4)) round(-u(g = 4))
    union() {
        translate([-u($distance), 0]) left_outline();
        bridge();
        translate([ u($distance), 0]) right_outline();
    }
    translate([-u($distance), 0]) left_switch_holes();
    translate([ u($distance), 0]) right_switch_holes();
}