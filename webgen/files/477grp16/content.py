import modules as mx

class Page():
    def __init__(self):
        self.page = mx.C()
        self.content = []
        self.id = 'page'

    def c(self, inadmissible, dynamic):
        self.page.content = self.content
        self.page.id = self.id
        return self.page.c(inadmissible, dynamic)

class slide_obj():
    def __init__(self,height="650px",width="100%",ID="",cl="",position="relative",title_loc=("center","center"),background_color="",background="",content=[[[]]]):
        self.height = height
        self.width = width
        self.id = ID
        self.cl = cl
        self.position = position
        self.background_color = background_color
        self.background = background
        self.content = content
        self.gridcontent = [[] for x in range(len(self.content))]
        self.slide = mx.C()
        
    def c(self, inadmissible, dynamic):
        ### OBJECTS ###
        grid = mx.FlexTable()
        
        ### CONTENT ###
        self.slide.content = [grid]
        for row in range(len(self.content)):
            for cell in range(len(self.content[row])):
                c = mx.C()
                c.content = self.content[row][cell]
                c.cl = "ccslide"
                self.gridcontent[row].append(c)
                
        grid.content = self.gridcontent

        ### PROPERTIES ###
        grid.id = self.id+'sgrid'
        self.slide.var__slide_height = self.height
        self.slide.var__slide_width = self.width
        self.slide.id = self.id
        self.slide.cl = (' ').join(["contentslide",self.cl])
        self.slide.position = self.position
        self.slide.background_color = self.background_color
        self.slide.background_image = self.background
        
        return self.slide.c(inadmissible, dynamic)

class Slide():
    def __init__(self):
        self.height = "650px"
        self.width = "100%"
        self.slide = mx.C(True)
        self.id = ""
        self.cl = ""
        self.position = "relative"
        self.background_color = ""
        self.background = ""
        self.Slide = None
        self.content = [[[]]]

    def build(self):
        self.Slide = slide_obj(height=self.height,width=self.width,ID=self.id,cl=self.cl,position=self.position,background_color=self.background_color,background=self.background,content=self.content)

    def c(self, inadmissible, dynamic):
        return self.Slide.c(inadmissible, dynamic)

class IconListItem:
    def __init__(self):
        self.container = None
        self.image_url = ''
        self.text = ''
        self.type = ''
        self.action = ''

    def c(self, inadmissible, dynamic):
        self.container = mx.Link() if self.type == 'link' else mx.C()
        if self.type == 'link': self.container.src = self.action
        if self.type == 'click_f': self.container.onclick = self.action
        img = mx.Image()
        text = mx.T()
        img.src = self.image_url
        img.cl = 'iconlisticon'
        text.content = self.text
        text.cl = 'iconlisttext'
        self.container.content = [img, text]
        self.container.cl = 'iconlistitem'
        return self.container.c(inadmissible, dynamic)

class IconList:
    def __init__(self):
        self.container = mx.C()
        self.list = mx.C()
        self.content = []
        self.id = ''

    def c(self, inadmissible, dynamic):
        self.container.cl = 'iconlistcontainer'
        self.list.cl = 'iconlistlist'
        if self.id != '': self.list.id = self.id
        for x in self.content:
            item = IconListItem()
            item.image_url = x[0]
            item.text = x[1]
            item.type = x[2]
            item.action = x[3]
            self.list.content.append(item)
        self.container.content = [self.list]   
        return self.container.c(inadmissible, dynamic)
            
