import modules as mx
import sys
import os
import importlib
homedir = os.getcwd() + r'/files/library/'
sys.path.append(homedir)
data = mx.Data()
body = mx.Body()
from buttons import *
importlib.reload(sys.modules['buttons'])
from content import *
importlib.reload(sys.modules['content'])
from tiles import *
importlib.reload(sys.modules['tiles'])

data.title = "Designed By Dre"

### OBJECTS
page = Page()
slide = Slide()
tileSlide = Tile_Slide()
tileStatic = Tile()
tileAbout = Tile()
tileWeb = Tile()
tileMine = Tile()
tileAudio = Tile()
tileOther = Tile()
tileContact = Tile()
overlay = mx.C()
title = mx.T()
subtitle = mx.T()
songContainer = mx.C()
songAudio = mx.T()
songTitle = mx.T()

### CONTENT
body.content = [page]
page.content = [slide, title, subtitle, songContainer]
slide.content = [[[tileSlide,overlay]]]
title.content = 'Designed By Dre'
subtitle.content = 'Welcome. Click on a blue tile to begin.'
songContainer.content = [songAudio, songTitle]
songAudio.content = '<iframe frameborder="0" id="iframe"></iframe>'
songTitle.content = 'Song: <i>Somewhere out there...</i> by Dre Barrera'

# SLIDE 2
tileSlide.content = [[tileStatic,tileStatic,tileStatic,None,tileStatic,None,tileStatic,tileStatic,tileStatic,None,tileStatic],[None,tileStatic,tileStatic,tileStatic,None,tileStatic,tileStatic,tileStatic,tileStatic],[None,None,tileStatic,tileStatic,tileAbout,None,tileStatic,None,tileStatic],[None,None,tileStatic,tileStatic,tileStatic,tileAudio,tileStatic],[None,None,tileStatic,tileMine,None,tileStatic,None,tileStatic],[None,None,None,tileStatic,tileWeb,tileStatic,tileStatic,None],[None,None,None,None,tileOther,tileStatic],[None,None,None,tileContact]]

# SLIDE 2
slide.height = 'auto'
slide.id = 'slide2'
tileStatic.color2 = '#36687d'
tileStatic.color3 = '#F35046'
tileAbout.color1 = '#002233'
tileAbout.color2 = '#005580'
tileAbout.color3 = '#36687d'
tileAbout.static = False
tileAbout.id = 'about-tile'
tileAbout.icon = "url('images/vector_about.png')"
tileAbout.link = "https://www.designedbydre.com/about"
tileMine.color1 = '#002233'
tileMine.color2 = '#005580'
tileMine.color3 = '#36687d'
tileMine.static = False
tileMine.id = 'mine-tile'
tileMine.icon = "url('images/vector_mine.png')"
tileMine.link = "https://www.designedbydre.com/datamine"
tileWeb.color1 = '#002233'
tileWeb.color2 = '#005580'
tileWeb.color3 = '#36687d'
tileWeb.static = False
tileWeb.id = 'web-tile'
tileWeb.icon = "url('images/vector_web.png')"
tileWeb.link = "https://www.designedbydre.com/webdesign"
tileAudio.color1 = '#002233'
tileAudio.color2 = '#005580'
tileAudio.color3 = '#36687d'
tileAudio.static = False
tileAudio.id = 'audio-tile'
tileAudio.icon = "url('images/vector_audio.png')"
tileAudio.link = "https://www.designedbydre.com/audio"
tileOther.color1 = '#002233'
tileOther.color2 = '#005580'
tileOther.color3 = '#36687d'
tileOther.static = False
tileOther.id = 'other-tile'
tileOther.icon = "url('images/vector_other.png')"
tileOther.link = "https://www.designedbydre.com/design"
tileContact.color1 = '#002233'
tileContact.color2 = '#005580'
tileContact.color3 = '#36687d'
tileContact.static = False
tileContact.id = 'contact-tile'
tileContact.icon = "url('images/vector_contact.png')"
tileContact.link = "https://www.designedbydre.com/contact"
overlay.background = 'linear-gradient(rgba(21,41,49,1) 0%,rgba(255,255,255,0) 30%)'
overlay.background_size = '100% 100%'
overlay.cl = 'tile_slide_overlay'
title.id = 'title'
title.type = 'h1'
title.font_family = 'Courier New'
subtitle.id = 'subtitle'
subtitle.type = 'h2'
subtitle.font_family = 'Courier New'
subtitle.font_weight = '300'
songContainer.id = 'song-container'
songContainer.display = 'flex'
songContainer.flex_flow = 'row wrap'
songContainer.align_items = 'center'
songTitle.display = 'inline-block'
songTitle.position = 'relative'
songTitle.font_family = 'Courier New'

### BUILD
slide.build()
