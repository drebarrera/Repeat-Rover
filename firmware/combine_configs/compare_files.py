with open('old_sdk_config.h', 'r') as f1:
    f1c = f1.read().split('\n')
with open('sdk_config.h', 'r') as f2:
    f2c = f2.read().split('\n')

print(len(f1c), len(f2c))
c = 0
for x in range(len(f1c)):
    if f1c[x] != f2c[x] and c < 15:
        c += 1
        print(f1c[x], f2c[x])
