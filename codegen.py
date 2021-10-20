import argparse

parser = argparse.ArgumentParser()
parser.add_argument("n", type=int)
parser.add_argument("p", type=int)
args = parser.parse_args()

n = args.n
p = args.p

print("#!/bin/bash")

print("go build -o pldsbm main.go")
print("chmod +x pldsbm")

for i in range(1, 10):
    for j in range(1, 10):
        print("./pldsbm -n={} -p={} -in={} -out={} -r=0.5 > {}-{}.adjlist".format(n,
              p, i/10, j/10, i/10, j/10))
        print("python3 check.py {} {}".format(i/10, j/10))
        print("mv {}-{}.adjlist graph/".format(i/10, j/10))
        print("mv {}-{}-*.png graph/".format(i/10, j/10))
        print('echo "done pin={} pout={}"'.format(i/10, j/10))

print("rm -f pldsbm")
