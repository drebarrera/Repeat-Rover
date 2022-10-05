import modules as mx

### BUTTON ###
class Button:
    def __init__(self, button_type, text, link_url=None, click_f=None, primary_color='black', accent_color='white', width='auto', padding='1vh', radius='sharp', shadow=False, inverse=False, underline=False, gradient=None):
        self.button_type = button_type
        self.text = text
        self.link_url = link_url
        self.click_f = click_f
        self.primary = primary_color
        self.accent = accent_color
        self.width = width if ' ' not in width else width.split(' ')[0]
        self.min_width = 'auto' if ' ' not in width else width.split(' ')[1]
        self.padding = padding
        if radius == 'sharp':
            radius = '0'
        elif radius == 'rounded':
            radius = '10px'
        self.radius = radius
        self.shadow = shadow
        self.inverse = inverse
        self.underline = underline
        self.id = ''
        self.cl = ''
        self.gradient = True if gradient != None else False
        self.button_gradient = gradient

    def c(self, inadmissible, dynamic):
        ### OBJECTS ###
        if self.button_type == 'link':
            button = mx.Link()
            if type(self.link_url) == str:
                button.src = self.link_url
                button.target = "_self"
            elif type(self.link_url) == tuple:
                button.src = self.link_url[0]
                button.target = self.link_url[1]
        else:
            button = mx.C()
            button.onclick = self.click_f
        button.id = self.id
        text = mx.T()
        text.content = self.text
        button.content = [text]
        button.cl = (' ').join(['button',self.cl])
        if self.inverse:
            button.cl += ' button-inverse'
        if self.underline:
            button.cl += ' button-underline'
        button.var__primary_color = self.primary
        button.var__accent_color = self.accent
        button.var__button_width = self.width
        button.var__button_min_width = self.min_width
        button.var__button_padding = self.padding
        button.var__button_radius = self.radius
        button.var__shadow = 'drop-shadow(0 0.2rem 0.25rem rgba(0, 0, 0, 0.25))' if self.shadow else 'none'
        if self.gradient:
            button.cl += ' button-gradient' if not self.inverse else ' button-gradient-inverse'
            button.var__button_gradient = self.button_gradient
        
        return button.c(inadmissible, dynamic)
