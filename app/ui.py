import sys
import os
from utility import *
from webgen import modules as mx
from header import *

data = mx.Data()
body = mx.Body()
data.title = "Repeat Rover"

### PUSH MAP
def push_map(bounds, obstacles, grid, path):
    f = open(r_path(os.getcwd(), 'webgen', 'files', 'app', 'frontend', 'frontend.js'), 'r')
    javascript = f.read()
    f.close()
    prepend_javascript = "const bounds = " + str(bounds) + ";\n"
    prepend_javascript += "const obstacles = " + str(obstacles) + ";\n"
    prepend_javascript += "const grid = " + str(grid) + ";\n"
    prepend_javascript += "var path = " + str(grid) + ";\n"
    f = open(r_path(os.getcwd(), 'webgen', 'files', 'app', 'frontend', 'frontend.js'), 'w')
    f.write(prepend_javascript + javascript)
    f.close()

with open(r_path(os.getcwd(), 'ui.css'), 'r') as f:
    css = f.read()
with open(r_path(os.getcwd(), 'webgen', 'files', 'app', 'frontend', 'frontend.css'), 'w') as f:
    f.write(css)

with open(r_path(os.getcwd(), 'ui.js'), 'r') as f:
    js = f.read()
with open(r_path(os.getcwd(), 'webgen', 'files', 'app', 'frontend', 'frontend.js'), 'w') as f:
    f.write(js)

### OBJECTS
region = mx.C()
frame = mx.C()
canvas = mx.X()

### CONTENT
canvas.content = '<canvas id="canvas"></canvas>'
body.content = [region, header]
region.content = [frame]
frame.content = [canvas]

### PROPERTIES
body.overflow_y = 'hidden'
region.id = "region"
frame.id = "frame"
