import subprocess
from string import ascii_uppercase
for char1 in ascii_uppercase:
    for char2 in ascii_uppercase:
    	# System call with path to OpenSCAD with the arguments: output file name, parameter to scad file, scad file
    	subprocess.call(["/Applications/OpenSCAD.app/Contents/MacOS/OpenSCAD", "-o", "{}.stl".format(char1+char2), "-D", "param1=\"{}\"".format(char1+char2), "name_initials.scad"])