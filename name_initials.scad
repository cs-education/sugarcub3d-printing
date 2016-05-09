// logo_and_text.scad - Example for use<> and text()

// Set the initial viewport parameters
$vpr = [90, 0, 0];
$vpt = [250, 0, 80];
$vpd = 500;

logosize = 120;

translate([8, 5, 2]) green() t(param1, 16, 1.3);

// Helper to create 3D text with correct font and orientation
module t(t, s = 18, sp=1) {
  //rotate([90, 0, 0])
    linear_extrude(height = 2)
      text(t, size = s, font = str("Liberation Sans"), spacing = sp, $fn = 16);
}

// Color helpers
module green() color([81/255, 142/255, 4/255]) children();
module black() color([0, 0, 0]) children();
// Written in 2014 by Torsten Paul <Torsten.Paul@gmx.de>
//
// To the extent possible under law, the author(s) have dedicated all
// copyright and related and neighboring rights to this software to the
// public domain worldwide. This software is distributed without any
// warranty.
//
// You should have received a copy of the CC0 Public Domain
// Dedication along with this software.
// If not, see <http://creativecommons.org/publicdomain/zero/1.0/>.
