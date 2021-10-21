import argparse

parser = argparse.ArgumentParser()
parser.add_argument("n", type=int)
parser.add_argument("p", type=int)
parser.add_argument("r", type=float)
args = parser.parse_args()

n = args.n
p = args.p
r = args.r

print("#!/bin/bash")

print("go build -o pldsbm main.go")
print("chmod +x pldsbm")

for i in range(1, 10):
    for j in range(1, 10):
        pin = i/10
        pout = j/10
        print("./pldsbm -n={} -p={} -in={} -out={} -r={} > {}-{}.adjlist".format(n,
              p, pin, pout, r, pin, pout))
        print("python3 check.py {} {}".format(pin, pout))
        print("mv {}-{}.adjlist graph/".format(pin, pout))
        print("mv {}-{}-*.png graph/".format(pin, pout))
        print('echo "done pin={} pout={}"'.format(pin, pout))

print("cd graph/")
print("mkdir n{}p{}r{}".format(n, p, r))
print("mv *.adjlist n{}p{}r{}/".format(n, p, r))
print("mv *.png n{}p{}r{}/".format(n, p, r))
print("cd ..")
print("rm -f pldsbm")
