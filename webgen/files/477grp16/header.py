import modules as mx
from buttons import *

### Menu ###
class menu:
    def __init__(self, buttons=[], primary_color='white', accent_color='black', button_style='underline sharp', button_colors=None):
        self.buttons = buttons
        self.primary = primary_color
        self.accent = accent_color
        self.button_underline = True if 'underline' in button_style else False
        if 'rounded' in button_style: self.button_radius = 'rounded'
        elif 'sharp' in button_style: self.button_radius = 'sharp'
        else: self.button_radius = button_style.split(' ')[0]
        self.button_inverse = False if 'inverse' in button_style else True
        self.button_primary = button_colors.split()[0] if button_colors else self.primary
        self.button_accent = button_colors.split()[1] if button_colors else self.accent

    def c(self, inadmissible, dynamic):
        ### OBJECTS ###
        headermenu = mx.Nav()

        ### CONTENT ###
        buttons = list()
        for b in range(len(self.buttons)):
            button_b = Button(self.buttons[b][0],self.buttons[b][1],self.buttons[b][2],self.buttons[b][2],primary_color=self.accent,accent_color=self.button_accent,width='92%',padding='1vh',radius=self.button_radius,underline=self.button_underline,inverse=self.button_inverse)
            button_b.id = 'navmenubutton'+str(b)
            button_b.cl = 'navmenubutton'
            buttons.append([button_b])
        headermenu.content = buttons
        headermenu.id = 'headermenu'
        headermenu.background_color = self.accent
        headermenu.var__accent_color = self.primary
        headermenu.position = 'fixed'
        headermenu.tableid = 'headermenutable'
        return headermenu.c(inadmissible, dynamic)
        

### Header ###
class header_obj:
    def __init__(self,logo_name=None,site_name=None,buttons=[],base_url='',position='fixed',primary_color='white',accent_color='black',navbar='normal',logo_height='75px',button_style='underline sharp',button_colors=None,button_width='auto',nav_switch='1000',underline=False,menubar_float='center',brand_float='left',button_gradient=None,header_gradient=None,menubar_gradient=None,header_id='header',button_padding='5px'):
        self.logo_url = 'images/' + logo_name if logo_name != None else ''
        self.site_name = site_name if site_name != None else ''
        self.buttons = buttons
        self.primary = primary_color
        self.accent = accent_color
        self.logo_height = logo_height
        self.button_underline = True if 'underline' in button_style else False
        if 'rounded' in button_style: self.button_radius = 'rounded'
        elif 'sharp' in button_style: self.button_radius = 'sharp'
        else: self.button_radius = button_style.split(' ')[0]
        self.button_style = button_style
        self.button_colors = button_colors
        self.button_inverse = True if 'inverse' in button_style else False
        self.button_primary = button_colors.split()[0] if button_colors else self.primary
        self.button_accent = button_colors.split()[1] if button_colors else self.accent
        self.button_width = button_width
        self.button_gradient = button_gradient
        self.button_padding = button_padding
        self.navbar_rounded = False if navbar == 'normal' else True
        self.navbar_conditions = None if navbar == 'normal' else navbar
        self.nav_switch = [5000,1250,1000,750,500][min(range(len([5000,1250,1000,750,500])), key = lambda i: abs([5000,1250,1000,750,500][i]-int(nav_switch)))]
        self.position = position
        self.underline = '2px' if underline else '0px'
        self.base_url = base_url
        self.menubar_float = menubar_float
        self.brand_float = brand_float
        self.header_container = mx.C()
        self.header = mx.Nav()
        self.branding = mx.Link()
        self.menubar = mx.C()
        self.menuicon = mx.Menu()
        self.header_gradient = header_gradient
        self.menubar_gradient = menubar_gradient
        self.header_id = header_id

    def generate(self):
        ### OBJECTS ###
        logo = mx.Image()
        title = mx.T()
        brandcontainer = mx.C()
        navmenu = menu(self.buttons, primary_color=self.primary, accent_color=self.accent, button_style=self.button_style, button_colors=self.button_colors)

        ### CONTENT ###
        self.header_container.content = [self.header, navmenu]
        if self.logo_url != '':
            brandcontainer.content.append(logo)
        if self.site_name != '':
            brandcontainer.content.append(title)
        self.branding.content = [brandcontainer]
        
        logo.src = self.logo_url
        title.content = self.site_name
        buttons = list()
        for b in range(len(self.buttons)):
            button_b = Button(self.buttons[b][0],self.buttons[b][1],self.buttons[b][2],self.buttons[b][2],primary_color=self.button_primary,accent_color=self.button_accent,width=self.button_width,padding=self.button_padding,radius=self.button_radius,underline=self.button_underline,inverse=self.button_inverse,gradient=self.button_gradient)
            button_b.id = 'navbutton'+str(b)
            button_b.cl = 'navbutton'
            buttons.append(button_b)
        self.menubar.content = buttons

        ### PROPERTIES ###
        self.header_container.id = self.header_id
        self.header_container.position = self.position
        self.header_container.var__accent_color = self.accent
        self.header_container.var__border_width = self.underline
        self.header_container.top = "0"
        self.header_container.z_index = "50"
        self.header.cl = 'nav'
        if self.header_gradient:
            self.header.cl += ' header-gradient'
            self.header_container.var__header_gradient = self.header_gradient
            self.header_container.var__primary_color = self.primary
        self.header.tablecl = 'navtable'
        self.header.background_color = self.primary
        self.header.position = 'relative'
        self.branding.src = self.base_url
        self.branding.text_decoration = 'none'
        brandcontainer.cl = 'navbrand'
        brandcontainer.justify_content = self.brand_float
        logo.cl = 'navlogo'
        logo.var__logo_height = self.logo_height
        title.cl = 'navtitle'
        title.type = 'h1'
        self.menuicon.radius = '1'
        self.menuicon.width = '3'
        self.menuicon.custom = '<animate xlink:href="#my-circle" attributeName="cx" from="50" to="450" dur="1s" begin="click" fill="freeze" />'
        self.menuicon.id = 'navmenuicon'
        self.menubar.cl = 'navmenubar'
        if self.menubar_gradient:
            self.menubar.cl += ' menubar-gradient'
            self.menubar.var__menubar_gradient = self.menubar_gradient
            self.menubar.var__menubar_color = self.navbar_conditions.split(' ')[1] if self.navbar_rounded else self.primary
        self.menubar.var__navmenubar_float = self.menubar_float
        if self.navbar_rounded: self.menubar.border_radius = self.navbar_conditions.split(' ')[0]
        if self.navbar_rounded: self.menubar.background_color = self.navbar_conditions.split(' ')[1]
        for x in [5000, 1250, 1000, 750, 500]:
            if x <= self.nav_switch:
                exec('self.header_container.var__nav_width_' + str(x) + ' = "95vw"')
                exec('self.header_container.var__nav_margin_' + str(x) + ' = "2.5vw"')
                exec('self.header_container.var__nav_display_' + str(x) + ' = "none"')
                exec('self.header_container.var__menu_display_' + str(x) + ' = "flex"')
            else:
                exec('self.header_container.var__nav_width_' + str(x) + ' = "100vw"')
                exec('self.header_container.var__nav_margin_' + str(x) + ' = "0vw"')
                exec('self.header_container.var__nav_display_' + str(x) + ' = "flex"')
                exec('self.header_container.var__menu_display_' + str(x) + ' = "none"')
        
        ### IDENTIFIERS ###
        self.header.id = 'nav'
        self.header.tableid = 'navtabletype1'
        logo.id = 'navlogo'
        title.id = 'navtitle'

    def c(self, inadmissible, dynamic):
        return self.header_container.c(inadmissible, dynamic)

class Header(header_obj):
    def __init__(self, branding='left', menubar='right'):
        self.logo_name=None
        self.site_name=None
        self.buttons=[]
        self.base_url=''
        self.position='sticky'
        self.primary_color='white'
        self.accent_color='black'
        self.navbar='normal'
        self.logo_height='75px'
        self.button_style='underline sharp'
        self.button_colors=None
        self.button_width='auto'
        self.button_padding='5px'
        self.nav_switch='1000'
        self.underline=False
        self.button_gradient=None
        self.header_gradient=None
        self.menubar_gradient=None
        self.id='header'
        if menubar == 'right': self.menubar_float='right'
        if menubar == 'left': self.menubar_float='left'
        if menubar == 'center': self.menubar_float='center'
        if branding == 'left': self.brand_float='flex-start'
        if branding == 'right': self.brand_float='flex-end'
        if branding == 'center': self.brand_float='center'
        self.Header = None
        self.branding = branding
        self.menubar = menubar
        
    def build(self):
        if self.branding != self.menubar and self.menubar_float == 'center': self.menubar_float = 'left'
        self.Header = header_obj(logo_name=self.logo_name,site_name=self.site_name,buttons=self.buttons,base_url=self.base_url,position=self.position,primary_color=self.primary_color,accent_color=self.accent_color,navbar=self.navbar,logo_height=self.logo_height,button_style=self.button_style,button_colors=self.button_colors,button_width=self.button_width,nav_switch=self.nav_switch,underline=self.underline,menubar_float=self.menubar_float,brand_float=self.brand_float,button_gradient=self.button_gradient,header_gradient=self.header_gradient,menubar_gradient=self.menubar_gradient,header_id=self.id,button_padding=self.button_padding)
        menuicon = self.Header.menuicon if self.buttons != [] else mx.X()
        
        if self.branding == self.menubar:
            header_layout = [[self.Header.branding, menuicon],[self.Header.menubar]]
        elif self.branding == 'left' or self.branding == 'center':
            header_layout = [[self.Header.branding, self.Header.menubar, menuicon]]
        elif self.branding == 'right':
            header_layout = [[self.Header.menuicon, self.Header.menubar, menuicon]]
        self.Header.header.content = header_layout
        self.Header.generate()

    def c(self, inadmissible, dynamic):
        return self.Header.c(inadmissible, dynamic)
