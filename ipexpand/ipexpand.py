import ipcalc

exclusions_list = []

subnets="targets.txt"
exclusions="exclusions.txt"

subnets_file = open(subnets,'r')
subnets_lines = subnets_file.readlines()

exclusions_file = open(exclusions,'r')
exclusions_lines = exclusions_file.readlines()

print(type(exclusions_lines))

for line in exclusions_lines:
    if not line == "\n":
        for ip in ipcalc.Network(line.strip()):
            exclusions_list.append(ip)

for line in subnets_lines:
    if not line == "\n":
        for ip in ipcalc.Network(line.strip()):
            if ip not in exclusions_list:
                print(ip)

