import modules as mx
import sys
import os
import importlib
homedir = os.getcwd() + r'/files/477grp16/'
sys.path.append(homedir)
data = mx.Data()
body = mx.Body()
from buttons import *
importlib.reload(sys.modules['buttons'])
from header import *
importlib.reload(sys.modules['header'])
from content import *
importlib.reload(sys.modules['content'])
from tiles import *
importlib.reload(sys.modules['tiles'])

data.title = 'Repeat Rover | About'

### OBJECTS ###
page = Page()
slide1 = Slide()
slide1title = mx.T()
slide1caption = mx.T()
slide1list = mx.X()
slide1subcaption = mx.T()
slide1button = Button('link','Portfolio',link_url="https://www.drebarrera.com",radius='rounded')
slide2 = Slide()
slide2tileSlide = Tile_Slide()
slide2tileStatic = Tile()
slide2tileWeb = Tile()
slide2tileMine = Tile()
slide2tileAudio = Tile()
slide2tileOther = Tile()
slide2overlay = mx.C()

### CONTENT ###
body.content = [header, page]
page.content = [slide1]

# SLIDE 1
slide1.content = [[[slide1title]],[[slide1caption,slide1list]],[[slide1subcaption, slide1button]]]
slide1title.content = "REPEAT ROVER"
slide1caption.content = "Welcome to my site! You are most likely here because you are looking for design services. More information can be found below, but first let me tell you a little about myself!"
slide1list.content = "<ul id='slide1caption'><li>I am finishing a degree in Computer Engineering at Purdue University.</li><li>8 years of experience in graphic design, website development, and programming.</li><li>Graduated high school at 16 years old, exceeding testing standards.</li><li>Reliable and ambitious hard worker who is dedicated to getting the job done with minimal hassel!</li></ul>"
slide1subcaption.content = "For more about me, visit my"

### PROPERTIES ###
slide1.background = 'linear-gradient(175deg, rgb(250,250,250) 0%, #edf9fe 55%, #76aac2 85%, #36687d 100%)'
slide1.id = 'slide1'
slide1title.type = 'h2'
slide1caption.id = 'slide1caption'
slide1subcaption.color = 'white'
slide1subcaption.font_weight = '300'
slide1button.id = 'slide1button'
slide1button.primary = '#F35046'
slide1button.accent = 'white'
slide1.build()
