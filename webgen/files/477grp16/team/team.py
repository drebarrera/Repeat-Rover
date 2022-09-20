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

data.title = 'Repeat Rover | Our Team'
base = mx.X()
base.content = '<base href="https://engineering.purdue.edu/ece477grp16/"/>'

### OBJECTS ###
page = Page()

# Slide 1
slide1 = Slide()
slide1title = mx.T()
slide1caption = mx.T()
profiles = mx.C()
profiles.content = []
images = ['images/dre.jpg', 'images/amir.jpg', 'images/christine.jpg', 'images/waewta.jpg']
names = ['Andres (Dre) Barrera', 'Amir Issa', 'Christine Fang', 'Waewta Saw']
links = ['https://engineering.purdue.edu/477grp16/Team/barrer10.html', 'https://engineering.purdue.edu/477grp16/Team/issa9.html','https://engineering.purdue.edu/477grp16/Team/fang245.html','https://engineering.purdue.edu/477grp16/Team/wsaw.html']
positions = ['<em>Team Leader</em>','<em>Systems Engineer</em>','<em>Hardware Engineer</em>','<em>Firmware Engineer</em>']
reports = ['https://engineering.purdue.edu/477grp16/Team/progress/AndresProgress.html','https://engineering.purdue.edu/477grp16/Team/progress/AmirProgress.html','https://engineering.purdue.edu/477grp16/Team/progress/ChristineProgress/ChristineProgress.html','https://engineering.purdue.edu/477grp16/Team/progress/WaewtaProgress.docx.html']
for ind in range(4):
    container = mx.C()
    link = mx.Link()
    img = mx.Image()
    name = mx.T()
    position = mx.T()
    container.cl = 'profile'
    link.content = [img, name, position]
    link.src = links[ind]
    link.id = 'profilelink'
    img.src = images[ind]
    img.cl = 'profileimg'
    name.content = names[ind]
    name.cl = 'profilename'
    position.content = positions[ind]
    position.cl = 'profileposition'
    button = Button('link','Progress Report',reports[ind],None,primary_color='#F35046',accent_color='white',width='auto',padding='0.75vh',radius='8px',underline=None,inverse=None)
    button.cl = 'profilebutton'
    container.content = [link, button]
    profiles.content.append(container)

# Slide 2
slide2 = Slide()
slide2description = mx.X()

### CONTENT ###
body.content = [header, page]
page.content = [slide1,slide2]

# Slide 1
slide1.content = [[[slide1title]],[[profiles]],[[]],[[]]]
slide1title.content = "OUR TEAM"

# SLIDE 2
slide2.content = [[[slide2description]]]
slide2description.content = "<div id='slide2description'><p><em>Click on a profile above to learn more about our team.</em></p><br><br><p>Our team is dedicated to designing the next generation of technology. With backgrounds in prototyping, software, and vehicle design, the Repeat Rover team has the ability to develop embedded systems, machine learning, and IoT technology."

### PROPERTIES ###
slide1.background = 'linear-gradient(175deg, rgb(250,250,250) 0%, #edf9fe 55%, #76aac2 85%, #36687d 100%)'
slide1.id = 'slide1'
slide1title.type = 'h2'
profiles.id = 'profiles'
slide1.build()
slide2.height = "300px"
slide2.id = 'slide2'
slide2.build()
