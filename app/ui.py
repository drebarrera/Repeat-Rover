import sys
import os
from utility import *
from Webgen import modules as mx
from header import *
from buttons import *
from map import Map

data = mx.Data()
body = mx.Body()
data.title = "Repeat Rover"

### PUSH MAP
def push_map(m: Map):
    f = open(r_path(os.getcwd(), 'Webgen', 'files', 'app', 'frontend', 'frontend.js'), 'r')
    javascript = f.read()
    f.close()
    prepend_javascript = "const bounds = " + str(m.bounds) + ";\n"
    prepend_javascript += "const obstacles = " + str(m.obstacles) + ";\n"
    prepend_javascript += "const grid = " + str(m.grid) + ";\n"
    prepend_javascript += "var path = " + str(m.path) + ";\n"
    prepend_javascript += "var speed = " + str(m.speed) + ";\n"
    f = open(r_path(os.getcwd(), 'Webgen', 'files', 'app', 'frontend', 'frontend.js'), 'w')
    f.write(prepend_javascript + javascript)
    f.close()

with open(r_path(os.getcwd(), 'ui.css'), 'r') as f:
    css = f.read()
with open(r_path(os.getcwd(), 'Webgen', 'files', 'app', 'frontend', 'frontend.css'), 'w') as f:
    f.write(css)

with open(r_path(os.getcwd(), 'ui.js'), 'r') as f:
    js = f.read()
with open(r_path(os.getcwd(), 'Webgen', 'files', 'app', 'frontend', 'frontend.js'), 'w') as f:
    f.write(js)

### OBJECTS
region = mx.C()
frame = mx.C()
canvas = mx.X()
strip = mx.C()
textbox = mx.X()
submit = Button('func','Submit',None,'text_submit()',primary_color='white',accent_color='#45AF82',width='auto',padding='1vh',underline=True,inverse=True,radius='sharp')
rover = mx.Image()

### CONTENT
canvas.content = '<canvas id="canvas"></canvas>'
body.content = [region, header]
region.content = [frame, strip]
frame.content = [canvas, rover]
strip.content = [textbox, submit]
textbox.content = '<input id="textbox" type="text"></input>'
rover.src = 'images/cursor.png'

### PROPERTIES
body.overflow_y = 'hidden'
region.id = "region"
frame.id = "frame"
strip.id = "strip"
submit.id = 'submit'
rover.id = 'rover'