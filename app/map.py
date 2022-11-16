class Map:
    def __init__(self):
        self.bounds = list()
        self.obstacles = list()
        self.grid = list()
        self.path = list()
        self.speed = {
            0: 1
        }