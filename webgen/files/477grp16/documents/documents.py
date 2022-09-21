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

data.title = 'Repeat Rover | Documents'
base = mx.X()
base.content = '<base href="https://engineering.purdue.edu/ece477grp16/"/>'

### OBJECTS ###
page = Page()

# Slide
bg = mx.C()
slide1 = mx.FlexTable()
slide1title = mx.T()
doc_list = ['Initial Project Proposal','Final Project Proposal','Project Design Schedule','Functional Specification','Electrical Overview','Software Overview','Component Analysis','Bill of Materials','Mechanical Overview','Software Formalization','Legal Analysis','Reliability and Safety Analysis','Ethical and Environmental Analysis','User Manual','ECE477 Educational Report','ECE477 Final Report','ECE477 Final Project Archive']
for ind in range(len(doc_list)):
    container = mx.Link()
    container.cl = 'doc_container'
    container.display = 'flex'
    container.flex_direction = 'row'
    container.color = 'black'
    container.text_decoration = 'none'
    container.align_content = 'center'
    container.align_items = 'center'
    img = mx.Image()
    text = mx.T()
    container.content = [img, text]
    container.src = 'https://engineering.purdue.edu/477grp16/Files/docs/' + doc_list[ind].lower().replace(' ','') + '.html'
    img.src = 'images/vector_document.png'
    img.cl = 'doc_img'
    text.content = doc_list[ind]
    slide1.content.append([container])

### CONTENT ###
body.content = [base, bg, header, page]
page.content = [slide1]
slide1title.content = 'PROJECT DOCUMENTS'
slide1.content = [[slide1title]] + slide1.content

### PROPERTIES ###
bg.id = 'bg'
bg.position = 'fixed'
bg.background = 'linear-gradient(175deg, rgb(250,250,250) 0%, #edf9fe 55%, #76aac2 85%, #36687d 100%)'
slide1.position = 'absolute'
slide1.z_index = '1'
slide1title.type = 'h2'
