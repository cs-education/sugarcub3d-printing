import subprocess
from string import ascii_uppercase
for char1 in ascii_uppercase:
	for char2 in ascii_uppercase:
		# Call slic3r with argument: input file, "-load", and config file
		subprocess.call(["Slic3r.app/Contents/MacOS/slic3r", "{}.stl".format(char1), "-load", "config.ini"])