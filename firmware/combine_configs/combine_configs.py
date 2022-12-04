import re
d = dict()
for config_file in ['wss_config.h', 'ble_config.h', 'sdcard_config.h', 'pwm_config.h']:
    with open(config_file, 'r') as cf:
        cfc = cf.read()
        cfd = dict()
        cfc = re.sub('\s*//.*','',cfc)
        matches = re.findall("#ifndef\s+\w+\n#define\s+\w+ \d+\s*#endif", cfc)
        for match in matches:
            m = re.split('\s+', match)
            name = m[1]
            val = m[4]
            cfd[name] = val
    for x in cfd:
        if x in d:
            d[x] = max(d[x], int(cfd[x]))
        else:
            d[x] = int(cfd[x])
with open('sdk_config.h', 'w') as sdk:
    sdk.write('#ifndef SDK_CONFIG_H\n#define SDK_CONFIG_H\n// <<< Use Configuration Wizard in Context Menu >>>\n#ifdef USE_APP_CONFIG\n#include "app_config.h"\n#endif\n// <h> nRF_Drivers\n\n\n')
    for x in d:
        sdk.write('#ifndef ' + x + '\n#define ' + x + ' ' + str(d[x]) + '\n#endif\n\n')
    sdk.write('\n#endif')