import re
il = list()
for fname in ['ble_wss_includes.txt', 'sd_includes.txt', 'pwm_includes.txt', 'mag_includes.txt']:
    with open(fname, 'r') as fi:
        includes = fi.read()
        for l in includes.split('\n'):
            if l != '' and l != ' ' and l not in il:
                il.append(l)
with open('includes.txt', 'w') as fi:
    fi.write(('\n').join(il))