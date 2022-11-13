import re
with open('wss_config.h', 'r') as wss:
    wc = wss.read()
    wd = dict()
    wc = re.sub('\s*//.*','',wc)
    matches = re.findall("#ifndef\s+\w+\n#define\s+\w+ \d+\s*#endif", wc)
    for match in matches:
        m = re.split('\s+', match)
        name = m[1]
        val = m[4]
        wd[name] = val
with open('ble_config.h', 'r') as ble:
    bc = ble.read()
    bd = dict()
    bc = re.sub('\s*//.*','',bc)
    matches = re.findall("#ifndef\s+\w+\s+#define\s+\w+ \d+\s+#endif", bc)
    for match in matches:
        m = re.split('\s+', match)
        name = m[1]
        val = m[4]
        bd[name] = val
d = dict()
for x in bd:
    if x in wd:
        d[x] = max(int(bd[x]), int(wd[x]))
    else:
        d[x] = bd[x]
for x in wd:
    if x not in d:
        d[x] = wd[x]
with open('sdk_config.h', 'w') as sdk:
    sdk.write('#ifndef SDK_CONFIG_H\n#define SDK_CONFIG_H\n// <<< Use Configuration Wizard in Context Menu >>>\n#ifdef USE_APP_CONFIG\n#include "app_config.h"\n#endif\n// <h> nRF_Drivers\n\n\n')
    for x in d:
        sdk.write('#ifndef ' + x + '\n#define ' + x + ' ' + str(d[x]) + '\n#endif\n\n')
    sdk.write('\n#endif')