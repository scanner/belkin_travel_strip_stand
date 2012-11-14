//
// a simple stand for a belkin travel power strip to help it stand up when used
// with a 2-prong to 3-prong adapter
//
use <Libs.scad>;

padding = 0.05;

stand_h = 40;
// stand_h = 3;
ear_h = 15;
total_stand_h = ear_h + stand_h;
stand_int_w = 40.5;
stand_w = stand_int_w + 5;
stand_l = 25;

module belkin_cutout() {
    translate( v = [0, 0, (ear_h + 5) / 2] ){
        rotate([0,90,0]) {
            roundRect( size = [ (ear_h + 5), stand_int_w, stand_l + 5 ], round = 3, center = true);
        }
    }
}

module belkin_stand() {
    difference() {
        translate(v = [0, 0, total_stand_h / 2]) {
            roundRect(size = [stand_l, stand_w, total_stand_h], round = 4, center = true);
        }
        translate(v = [0, 0, stand_h]) {
            belkin_cutout();
        }
    }
}

belkin_stand();
// belkin_cutout();

