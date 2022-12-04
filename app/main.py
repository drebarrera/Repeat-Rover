import sys
import os
from utility import *
from Webgen import comp as c
import re
import webbrowser
import subprocess
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
    #url = "file:///"+r_path(os.getcwd(),"Webgen","files","app","frontend","index.html")
    #webbrowser.get().open(url, new=0)
    server = r_path(os.getcwd(), "server", "index.js")
    subprocess.Popen(['node', server], stdout=subprocess.PIPE)
    webbrowser.get().open('http://localhost:3000/', new=0)

if __name__ == "__main__":
    m = Map()
    print("Provide a filename with a pre-configured map or hit enter to create a new map.")
    filename = input(">> ")
    if filename != "":
        m = load_obj(r_path("maps", filename), m)
    else:
        print("Provide environment bounds as a set of comma-delimeted (x,y) coordinates.")
        m.bounds = parse_coords(input(">> "))
        res = " "
        while res != "":
            print("Provide obstacle bounds for a single obstacle as a set of comma-delimeted (x,y) coordinates or hit enter to skip.")
            res = input(">> ")
            if res != "": m.obstacles.append(parse_coords(res))
        m.grid.append(input("Major grid line spacing in meters >> "))
        m.grid.append(input("Minor grid line spacing in meters >> "))
        print("Provide a saved path as a set of comma-delimeted (x,y) coordinates or hit enter to skip.")
        res = input(">> ")
        if res != "": m.path = (parse_coords(res))
        print("Provide a filename to save this map or hit enter to skip.")
        filename = input(">> ")
        if filename != "": update_json(r_path("maps", filename), m)
    start_frontend(m)