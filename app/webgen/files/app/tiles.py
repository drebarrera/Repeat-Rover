import modules as mx
import math

class Tile_Slide():
    def __init__(self):
        self.dim = '125px'
        self.background_color = 'white'
        self.content = [[]]

    def c(self, inadmissible, dynamic):
        slide = mx.C()
        slide.cl = 'tile_slide'
        dummy = mx.C()
        dummy.cl = 'dummy_tile_stack'
        dummy.var__tile_height = self.dim
        dim_int = int(self.dim.replace('px',''))
        slide.var__slide_height = str(dim_int * len(self.content) * 3 / 5)+'px'
        slide.var__slide_width = str(dim_int * max([len(self.content[x]) for x in range(len(self.content))]) + (len(self.content) - 1) * dim_int * math.tan(math.radians(30)) * 3 / 5) +'px'
        slide.background_color = self.background_color
        ind = 0
        for row in self.content:
            row_offset = ind * dim_int * math.tan(math.radians(30)) * 3 / 5
            row_container = mx.C()
            row_container.content = [stack if stack != None else dummy for stack in row]
            row_container.display = 'flex'
            row_container.flex_direction = 'row'
            row_container.cl = 'tile_row'
            row_container.var__row_offset = str(row_offset)+'px'
            slide.content.append(row_container)
            ind += 1
        return slide.c(inadmissible, dynamic)
        

class Tile():
    def __init__(self):
        self.dim = '125px'
        self.radius = '10px'
        self.color1 = 'black'
        self.color2 = 'blue'
        self.color3 = 'red'
        self.icon = "none"
        self.id = ''
        self.static = True
        self.link = None
        
    def c(self, inadmissible, dynamic):
        tile_stack, tile_bottom, tile_middle, tile_top = mx.C(), mx.C(), mx.C(), mx.C()
        tile_stack.content = [tile_bottom, tile_middle, tile_top]
        tile_stack.id = self.id
        if self.static:
            tile_bottom.cl, tile_middle.cl, tile_top.cl = 'tile', 'tile', 'tile'
        else:
            tile_bottom.cl, tile_middle.cl, tile_top.cl = 'tile tile_bottom', 'tile tile_middle', 'tile tile_top'
        tile_stack.cl = 'tile_stack'
        tile_bottom.background_color = self.color1
        tile_middle.background_color = self.color2
        tile_top.background_color = self.color3
        tile_stack.var__tile_height = self.dim
        tile_stack.var__tile_radius = self.radius
        tile_top.background_image = self.icon
        if self.link != None:
            wrap = mx.Link()
            wrap.src = self.link
            wrap.target = '_blank'
            wrap.content = [tile_stack]
            return wrap.c(inadmissible, dynamic)
        return tile_stack.c(inadmissible, dynamic)
        
