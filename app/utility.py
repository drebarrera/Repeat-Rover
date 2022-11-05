import json
import filemanager as file
import difflib
import datetime
import re

def j_path(*args):
    return ('\\').join(args)

def r_path(*args):
    return file.realpath(('\\').join(args))

def update_json(filedir, dump_obj, exclude=[]):
    dict_obj = replicate_dict(dump_obj.__dict__)
    dict_obj = {dict_key:dict_obj[dict_key] for dict_key in dict_obj if dict_key not in exclude}
    for dict_key in dict_obj:
        try:
            json.dumps(dict_obj[dict_key])
        except:
            if type(dict_obj[dict_key]) == dict:
                dict_obj[dict_key] = {keyname: None for keyname in dict_obj[dict_key]}
            else:
                dict_obj[dict_key] = None
    serial_obj = json.dumps(dict_obj, indent=4)
    file.write_to_file(filedir, serial_obj)
    return serial_obj

def replicate_dict(dict_obj):
    dict_copy = dict()
    for keyname in dict_obj:
        dict_copy[keyname] = dict_obj[keyname]
    return dict_copy
    
def load_obj(filedir, obj):
    json_data = file.read_json(filedir)
    for key_name in json_data:
        exec("obj." + key_name + " = json_data['" + key_name + "']")
    return obj