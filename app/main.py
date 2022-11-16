import sys
import os
from utility import *
from Webgen import comp as c
import re
import webbrowser
from map import Map
os.chdir(os.path.dirname(os.path.realpath(__file__)))
sys.path.insert(1, r_path(os.getcwd(), 'Webgen','files','app'))
sys.path.insert(1, r_path(os.getcwd(), 'Webgen'))

def parse_coords(coords):
    coord_list = list()
    for coord in re.split(',\s*(?!\d)', coords):
        x,y = coord.replace('(','').replace(')','').split(',')
        coord_list.append([float(x), float(y)])
    return coord_list

def start_frontend(m: Map):
    c.main(m)
    url = "file:///"+r_path(os.getcwd(),"Webgen","files","app","frontend","index.html")
    webbrowser.get().open(url, new=0)

if __name__ == "__main__":
    if len(sys.argv) == 1:
        #print('Too few arguments. Please supply a filename and an -n flag.')
        m = Map()
        #m.bounds = parse_coords('(0,0),(8,0),(8,8),(0,8)')
        m.bounds = parse_coords('(0,0),(8,0),(8,8),(5,5),(0,5)')
        m.obstacles = [parse_coords('(1,1),(2,1),(2,2),(1,2)'), parse_coords('(3,3),(4,3),(4,4),(3,4)')]
        m.grid = [1, 0.25]
        m.path = parse_coords('(5,0.5),(5,4.5),(0.5,4.5),(0.5,0.5)')
        #m.speed[2] = 5
        start_frontend(m)
    if len(sys.argv) == 2:
        pass
    if len(sys.argv) == 3:
        filename = sys.argv[1]
        flag = sys.argv[2]

        if flag == '-n':
            print('Type comma-delimeted bound coordinates in the form of (x,y):')
            bounds = parse_coords(input('>> '))
            print("Type comma-delimeted obstacle coordinates in the form of (x,y). Write 'quit' to end.")
            obstacles = list()
            while True:
                res = input('New obstacle >> ')
                if res == 'quit' or res == '': break          
                obstacles.append(parse_coords(res))
            update_json(filename, map)
