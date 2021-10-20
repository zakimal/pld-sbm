#!/bin/bash
go build -o pldsbm main.go
chmod +x pldsbm
./pldsbm -n=10000 -p=100 -in=0.1 -out=0.1 -r=0.5 > 0.1-0.1.adjlist
python3 check.py 0.1 0.1
mv 0.1-0.1.adjlist graph/
mv 0.1-0.1-*.png graph/
echo "done pin=0.1 pout=0.1"
./pldsbm -n=10000 -p=100 -in=0.1 -out=0.2 -r=0.5 > 0.1-0.2.adjlist
python3 check.py 0.1 0.2
mv 0.1-0.2.adjlist graph/
mv 0.1-0.2-*.png graph/
echo "done pin=0.1 pout=0.2"
./pldsbm -n=10000 -p=100 -in=0.1 -out=0.3 -r=0.5 > 0.1-0.3.adjlist
python3 check.py 0.1 0.3
mv 0.1-0.3.adjlist graph/
mv 0.1-0.3-*.png graph/
echo "done pin=0.1 pout=0.3"
./pldsbm -n=10000 -p=100 -in=0.1 -out=0.4 -r=0.5 > 0.1-0.4.adjlist
python3 check.py 0.1 0.4
mv 0.1-0.4.adjlist graph/
mv 0.1-0.4-*.png graph/
echo "done pin=0.1 pout=0.4"
./pldsbm -n=10000 -p=100 -in=0.1 -out=0.5 -r=0.5 > 0.1-0.5.adjlist
python3 check.py 0.1 0.5
mv 0.1-0.5.adjlist graph/
mv 0.1-0.5-*.png graph/
echo "done pin=0.1 pout=0.5"
./pldsbm -n=10000 -p=100 -in=0.1 -out=0.6 -r=0.5 > 0.1-0.6.adjlist
python3 check.py 0.1 0.6
mv 0.1-0.6.adjlist graph/
mv 0.1-0.6-*.png graph/
echo "done pin=0.1 pout=0.6"
./pldsbm -n=10000 -p=100 -in=0.1 -out=0.7 -r=0.5 > 0.1-0.7.adjlist
python3 check.py 0.1 0.7
mv 0.1-0.7.adjlist graph/
mv 0.1-0.7-*.png graph/
echo "done pin=0.1 pout=0.7"
./pldsbm -n=10000 -p=100 -in=0.1 -out=0.8 -r=0.5 > 0.1-0.8.adjlist
python3 check.py 0.1 0.8
mv 0.1-0.8.adjlist graph/
mv 0.1-0.8-*.png graph/
echo "done pin=0.1 pout=0.8"
./pldsbm -n=10000 -p=100 -in=0.1 -out=0.9 -r=0.5 > 0.1-0.9.adjlist
python3 check.py 0.1 0.9
mv 0.1-0.9.adjlist graph/
mv 0.1-0.9-*.png graph/
echo "done pin=0.1 pout=0.9"
./pldsbm -n=10000 -p=100 -in=0.2 -out=0.1 -r=0.5 > 0.2-0.1.adjlist
python3 check.py 0.2 0.1
mv 0.2-0.1.adjlist graph/
mv 0.2-0.1-*.png graph/
echo "done pin=0.2 pout=0.1"
./pldsbm -n=10000 -p=100 -in=0.2 -out=0.2 -r=0.5 > 0.2-0.2.adjlist
python3 check.py 0.2 0.2
mv 0.2-0.2.adjlist graph/
mv 0.2-0.2-*.png graph/
echo "done pin=0.2 pout=0.2"
./pldsbm -n=10000 -p=100 -in=0.2 -out=0.3 -r=0.5 > 0.2-0.3.adjlist
python3 check.py 0.2 0.3
mv 0.2-0.3.adjlist graph/
mv 0.2-0.3-*.png graph/
echo "done pin=0.2 pout=0.3"
./pldsbm -n=10000 -p=100 -in=0.2 -out=0.4 -r=0.5 > 0.2-0.4.adjlist
python3 check.py 0.2 0.4
mv 0.2-0.4.adjlist graph/
mv 0.2-0.4-*.png graph/
echo "done pin=0.2 pout=0.4"
./pldsbm -n=10000 -p=100 -in=0.2 -out=0.5 -r=0.5 > 0.2-0.5.adjlist
python3 check.py 0.2 0.5
mv 0.2-0.5.adjlist graph/
mv 0.2-0.5-*.png graph/
echo "done pin=0.2 pout=0.5"
./pldsbm -n=10000 -p=100 -in=0.2 -out=0.6 -r=0.5 > 0.2-0.6.adjlist
python3 check.py 0.2 0.6
mv 0.2-0.6.adjlist graph/
mv 0.2-0.6-*.png graph/
echo "done pin=0.2 pout=0.6"
./pldsbm -n=10000 -p=100 -in=0.2 -out=0.7 -r=0.5 > 0.2-0.7.adjlist
python3 check.py 0.2 0.7
mv 0.2-0.7.adjlist graph/
mv 0.2-0.7-*.png graph/
echo "done pin=0.2 pout=0.7"
./pldsbm -n=10000 -p=100 -in=0.2 -out=0.8 -r=0.5 > 0.2-0.8.adjlist
python3 check.py 0.2 0.8
mv 0.2-0.8.adjlist graph/
mv 0.2-0.8-*.png graph/
echo "done pin=0.2 pout=0.8"
./pldsbm -n=10000 -p=100 -in=0.2 -out=0.9 -r=0.5 > 0.2-0.9.adjlist
python3 check.py 0.2 0.9
mv 0.2-0.9.adjlist graph/
mv 0.2-0.9-*.png graph/
echo "done pin=0.2 pout=0.9"
./pldsbm -n=10000 -p=100 -in=0.3 -out=0.1 -r=0.5 > 0.3-0.1.adjlist
python3 check.py 0.3 0.1
mv 0.3-0.1.adjlist graph/
mv 0.3-0.1-*.png graph/
echo "done pin=0.3 pout=0.1"
./pldsbm -n=10000 -p=100 -in=0.3 -out=0.2 -r=0.5 > 0.3-0.2.adjlist
python3 check.py 0.3 0.2
mv 0.3-0.2.adjlist graph/
mv 0.3-0.2-*.png graph/
echo "done pin=0.3 pout=0.2"
./pldsbm -n=10000 -p=100 -in=0.3 -out=0.3 -r=0.5 > 0.3-0.3.adjlist
python3 check.py 0.3 0.3
mv 0.3-0.3.adjlist graph/
mv 0.3-0.3-*.png graph/
echo "done pin=0.3 pout=0.3"
./pldsbm -n=10000 -p=100 -in=0.3 -out=0.4 -r=0.5 > 0.3-0.4.adjlist
python3 check.py 0.3 0.4
mv 0.3-0.4.adjlist graph/
mv 0.3-0.4-*.png graph/
echo "done pin=0.3 pout=0.4"
./pldsbm -n=10000 -p=100 -in=0.3 -out=0.5 -r=0.5 > 0.3-0.5.adjlist
python3 check.py 0.3 0.5
mv 0.3-0.5.adjlist graph/
mv 0.3-0.5-*.png graph/
echo "done pin=0.3 pout=0.5"
./pldsbm -n=10000 -p=100 -in=0.3 -out=0.6 -r=0.5 > 0.3-0.6.adjlist
python3 check.py 0.3 0.6
mv 0.3-0.6.adjlist graph/
mv 0.3-0.6-*.png graph/
echo "done pin=0.3 pout=0.6"
./pldsbm -n=10000 -p=100 -in=0.3 -out=0.7 -r=0.5 > 0.3-0.7.adjlist
python3 check.py 0.3 0.7
mv 0.3-0.7.adjlist graph/
mv 0.3-0.7-*.png graph/
echo "done pin=0.3 pout=0.7"
./pldsbm -n=10000 -p=100 -in=0.3 -out=0.8 -r=0.5 > 0.3-0.8.adjlist
python3 check.py 0.3 0.8
mv 0.3-0.8.adjlist graph/
mv 0.3-0.8-*.png graph/
echo "done pin=0.3 pout=0.8"
./pldsbm -n=10000 -p=100 -in=0.3 -out=0.9 -r=0.5 > 0.3-0.9.adjlist
python3 check.py 0.3 0.9
mv 0.3-0.9.adjlist graph/
mv 0.3-0.9-*.png graph/
echo "done pin=0.3 pout=0.9"
./pldsbm -n=10000 -p=100 -in=0.4 -out=0.1 -r=0.5 > 0.4-0.1.adjlist
python3 check.py 0.4 0.1
mv 0.4-0.1.adjlist graph/
mv 0.4-0.1-*.png graph/
echo "done pin=0.4 pout=0.1"
./pldsbm -n=10000 -p=100 -in=0.4 -out=0.2 -r=0.5 > 0.4-0.2.adjlist
python3 check.py 0.4 0.2
mv 0.4-0.2.adjlist graph/
mv 0.4-0.2-*.png graph/
echo "done pin=0.4 pout=0.2"
./pldsbm -n=10000 -p=100 -in=0.4 -out=0.3 -r=0.5 > 0.4-0.3.adjlist
python3 check.py 0.4 0.3
mv 0.4-0.3.adjlist graph/
mv 0.4-0.3-*.png graph/
echo "done pin=0.4 pout=0.3"
./pldsbm -n=10000 -p=100 -in=0.4 -out=0.4 -r=0.5 > 0.4-0.4.adjlist
python3 check.py 0.4 0.4
mv 0.4-0.4.adjlist graph/
mv 0.4-0.4-*.png graph/
echo "done pin=0.4 pout=0.4"
./pldsbm -n=10000 -p=100 -in=0.4 -out=0.5 -r=0.5 > 0.4-0.5.adjlist
python3 check.py 0.4 0.5
mv 0.4-0.5.adjlist graph/
mv 0.4-0.5-*.png graph/
echo "done pin=0.4 pout=0.5"
./pldsbm -n=10000 -p=100 -in=0.4 -out=0.6 -r=0.5 > 0.4-0.6.adjlist
python3 check.py 0.4 0.6
mv 0.4-0.6.adjlist graph/
mv 0.4-0.6-*.png graph/
echo "done pin=0.4 pout=0.6"
./pldsbm -n=10000 -p=100 -in=0.4 -out=0.7 -r=0.5 > 0.4-0.7.adjlist
python3 check.py 0.4 0.7
mv 0.4-0.7.adjlist graph/
mv 0.4-0.7-*.png graph/
echo "done pin=0.4 pout=0.7"
./pldsbm -n=10000 -p=100 -in=0.4 -out=0.8 -r=0.5 > 0.4-0.8.adjlist
python3 check.py 0.4 0.8
mv 0.4-0.8.adjlist graph/
mv 0.4-0.8-*.png graph/
echo "done pin=0.4 pout=0.8"
./pldsbm -n=10000 -p=100 -in=0.4 -out=0.9 -r=0.5 > 0.4-0.9.adjlist
python3 check.py 0.4 0.9
mv 0.4-0.9.adjlist graph/
mv 0.4-0.9-*.png graph/
echo "done pin=0.4 pout=0.9"
./pldsbm -n=10000 -p=100 -in=0.5 -out=0.1 -r=0.5 > 0.5-0.1.adjlist
python3 check.py 0.5 0.1
mv 0.5-0.1.adjlist graph/
mv 0.5-0.1-*.png graph/
echo "done pin=0.5 pout=0.1"
./pldsbm -n=10000 -p=100 -in=0.5 -out=0.2 -r=0.5 > 0.5-0.2.adjlist
python3 check.py 0.5 0.2
mv 0.5-0.2.adjlist graph/
mv 0.5-0.2-*.png graph/
echo "done pin=0.5 pout=0.2"
./pldsbm -n=10000 -p=100 -in=0.5 -out=0.3 -r=0.5 > 0.5-0.3.adjlist
python3 check.py 0.5 0.3
mv 0.5-0.3.adjlist graph/
mv 0.5-0.3-*.png graph/
echo "done pin=0.5 pout=0.3"
./pldsbm -n=10000 -p=100 -in=0.5 -out=0.4 -r=0.5 > 0.5-0.4.adjlist
python3 check.py 0.5 0.4
mv 0.5-0.4.adjlist graph/
mv 0.5-0.4-*.png graph/
echo "done pin=0.5 pout=0.4"
./pldsbm -n=10000 -p=100 -in=0.5 -out=0.5 -r=0.5 > 0.5-0.5.adjlist
python3 check.py 0.5 0.5
mv 0.5-0.5.adjlist graph/
mv 0.5-0.5-*.png graph/
echo "done pin=0.5 pout=0.5"
./pldsbm -n=10000 -p=100 -in=0.5 -out=0.6 -r=0.5 > 0.5-0.6.adjlist
python3 check.py 0.5 0.6
mv 0.5-0.6.adjlist graph/
mv 0.5-0.6-*.png graph/
echo "done pin=0.5 pout=0.6"
./pldsbm -n=10000 -p=100 -in=0.5 -out=0.7 -r=0.5 > 0.5-0.7.adjlist
python3 check.py 0.5 0.7
mv 0.5-0.7.adjlist graph/
mv 0.5-0.7-*.png graph/
echo "done pin=0.5 pout=0.7"
./pldsbm -n=10000 -p=100 -in=0.5 -out=0.8 -r=0.5 > 0.5-0.8.adjlist
python3 check.py 0.5 0.8
mv 0.5-0.8.adjlist graph/
mv 0.5-0.8-*.png graph/
echo "done pin=0.5 pout=0.8"
./pldsbm -n=10000 -p=100 -in=0.5 -out=0.9 -r=0.5 > 0.5-0.9.adjlist
python3 check.py 0.5 0.9
mv 0.5-0.9.adjlist graph/
mv 0.5-0.9-*.png graph/
echo "done pin=0.5 pout=0.9"
./pldsbm -n=10000 -p=100 -in=0.6 -out=0.1 -r=0.5 > 0.6-0.1.adjlist
python3 check.py 0.6 0.1
mv 0.6-0.1.adjlist graph/
mv 0.6-0.1-*.png graph/
echo "done pin=0.6 pout=0.1"
./pldsbm -n=10000 -p=100 -in=0.6 -out=0.2 -r=0.5 > 0.6-0.2.adjlist
python3 check.py 0.6 0.2
mv 0.6-0.2.adjlist graph/
mv 0.6-0.2-*.png graph/
echo "done pin=0.6 pout=0.2"
./pldsbm -n=10000 -p=100 -in=0.6 -out=0.3 -r=0.5 > 0.6-0.3.adjlist
python3 check.py 0.6 0.3
mv 0.6-0.3.adjlist graph/
mv 0.6-0.3-*.png graph/
echo "done pin=0.6 pout=0.3"
./pldsbm -n=10000 -p=100 -in=0.6 -out=0.4 -r=0.5 > 0.6-0.4.adjlist
python3 check.py 0.6 0.4
mv 0.6-0.4.adjlist graph/
mv 0.6-0.4-*.png graph/
echo "done pin=0.6 pout=0.4"
./pldsbm -n=10000 -p=100 -in=0.6 -out=0.5 -r=0.5 > 0.6-0.5.adjlist
python3 check.py 0.6 0.5
mv 0.6-0.5.adjlist graph/
mv 0.6-0.5-*.png graph/
echo "done pin=0.6 pout=0.5"
./pldsbm -n=10000 -p=100 -in=0.6 -out=0.6 -r=0.5 > 0.6-0.6.adjlist
python3 check.py 0.6 0.6
mv 0.6-0.6.adjlist graph/
mv 0.6-0.6-*.png graph/
echo "done pin=0.6 pout=0.6"
./pldsbm -n=10000 -p=100 -in=0.6 -out=0.7 -r=0.5 > 0.6-0.7.adjlist
python3 check.py 0.6 0.7
mv 0.6-0.7.adjlist graph/
mv 0.6-0.7-*.png graph/
echo "done pin=0.6 pout=0.7"
./pldsbm -n=10000 -p=100 -in=0.6 -out=0.8 -r=0.5 > 0.6-0.8.adjlist
python3 check.py 0.6 0.8
mv 0.6-0.8.adjlist graph/
mv 0.6-0.8-*.png graph/
echo "done pin=0.6 pout=0.8"
./pldsbm -n=10000 -p=100 -in=0.6 -out=0.9 -r=0.5 > 0.6-0.9.adjlist
python3 check.py 0.6 0.9
mv 0.6-0.9.adjlist graph/
mv 0.6-0.9-*.png graph/
echo "done pin=0.6 pout=0.9"
./pldsbm -n=10000 -p=100 -in=0.7 -out=0.1 -r=0.5 > 0.7-0.1.adjlist
python3 check.py 0.7 0.1
mv 0.7-0.1.adjlist graph/
mv 0.7-0.1-*.png graph/
echo "done pin=0.7 pout=0.1"
./pldsbm -n=10000 -p=100 -in=0.7 -out=0.2 -r=0.5 > 0.7-0.2.adjlist
python3 check.py 0.7 0.2
mv 0.7-0.2.adjlist graph/
mv 0.7-0.2-*.png graph/
echo "done pin=0.7 pout=0.2"
./pldsbm -n=10000 -p=100 -in=0.7 -out=0.3 -r=0.5 > 0.7-0.3.adjlist
python3 check.py 0.7 0.3
mv 0.7-0.3.adjlist graph/
mv 0.7-0.3-*.png graph/
echo "done pin=0.7 pout=0.3"
./pldsbm -n=10000 -p=100 -in=0.7 -out=0.4 -r=0.5 > 0.7-0.4.adjlist
python3 check.py 0.7 0.4
mv 0.7-0.4.adjlist graph/
mv 0.7-0.4-*.png graph/
echo "done pin=0.7 pout=0.4"
./pldsbm -n=10000 -p=100 -in=0.7 -out=0.5 -r=0.5 > 0.7-0.5.adjlist
python3 check.py 0.7 0.5
mv 0.7-0.5.adjlist graph/
mv 0.7-0.5-*.png graph/
echo "done pin=0.7 pout=0.5"
./pldsbm -n=10000 -p=100 -in=0.7 -out=0.6 -r=0.5 > 0.7-0.6.adjlist
python3 check.py 0.7 0.6
mv 0.7-0.6.adjlist graph/
mv 0.7-0.6-*.png graph/
echo "done pin=0.7 pout=0.6"
./pldsbm -n=10000 -p=100 -in=0.7 -out=0.7 -r=0.5 > 0.7-0.7.adjlist
python3 check.py 0.7 0.7
mv 0.7-0.7.adjlist graph/
mv 0.7-0.7-*.png graph/
echo "done pin=0.7 pout=0.7"
./pldsbm -n=10000 -p=100 -in=0.7 -out=0.8 -r=0.5 > 0.7-0.8.adjlist
python3 check.py 0.7 0.8
mv 0.7-0.8.adjlist graph/
mv 0.7-0.8-*.png graph/
echo "done pin=0.7 pout=0.8"
./pldsbm -n=10000 -p=100 -in=0.7 -out=0.9 -r=0.5 > 0.7-0.9.adjlist
python3 check.py 0.7 0.9
mv 0.7-0.9.adjlist graph/
mv 0.7-0.9-*.png graph/
echo "done pin=0.7 pout=0.9"
./pldsbm -n=10000 -p=100 -in=0.8 -out=0.1 -r=0.5 > 0.8-0.1.adjlist
python3 check.py 0.8 0.1
mv 0.8-0.1.adjlist graph/
mv 0.8-0.1-*.png graph/
echo "done pin=0.8 pout=0.1"
./pldsbm -n=10000 -p=100 -in=0.8 -out=0.2 -r=0.5 > 0.8-0.2.adjlist
python3 check.py 0.8 0.2
mv 0.8-0.2.adjlist graph/
mv 0.8-0.2-*.png graph/
echo "done pin=0.8 pout=0.2"
./pldsbm -n=10000 -p=100 -in=0.8 -out=0.3 -r=0.5 > 0.8-0.3.adjlist
python3 check.py 0.8 0.3
mv 0.8-0.3.adjlist graph/
mv 0.8-0.3-*.png graph/
echo "done pin=0.8 pout=0.3"
./pldsbm -n=10000 -p=100 -in=0.8 -out=0.4 -r=0.5 > 0.8-0.4.adjlist
python3 check.py 0.8 0.4
mv 0.8-0.4.adjlist graph/
mv 0.8-0.4-*.png graph/
echo "done pin=0.8 pout=0.4"
./pldsbm -n=10000 -p=100 -in=0.8 -out=0.5 -r=0.5 > 0.8-0.5.adjlist
python3 check.py 0.8 0.5
mv 0.8-0.5.adjlist graph/
mv 0.8-0.5-*.png graph/
echo "done pin=0.8 pout=0.5"
./pldsbm -n=10000 -p=100 -in=0.8 -out=0.6 -r=0.5 > 0.8-0.6.adjlist
python3 check.py 0.8 0.6
mv 0.8-0.6.adjlist graph/
mv 0.8-0.6-*.png graph/
echo "done pin=0.8 pout=0.6"
./pldsbm -n=10000 -p=100 -in=0.8 -out=0.7 -r=0.5 > 0.8-0.7.adjlist
python3 check.py 0.8 0.7
mv 0.8-0.7.adjlist graph/
mv 0.8-0.7-*.png graph/
echo "done pin=0.8 pout=0.7"
./pldsbm -n=10000 -p=100 -in=0.8 -out=0.8 -r=0.5 > 0.8-0.8.adjlist
python3 check.py 0.8 0.8
mv 0.8-0.8.adjlist graph/
mv 0.8-0.8-*.png graph/
echo "done pin=0.8 pout=0.8"
./pldsbm -n=10000 -p=100 -in=0.8 -out=0.9 -r=0.5 > 0.8-0.9.adjlist
python3 check.py 0.8 0.9
mv 0.8-0.9.adjlist graph/
mv 0.8-0.9-*.png graph/
echo "done pin=0.8 pout=0.9"
./pldsbm -n=10000 -p=100 -in=0.9 -out=0.1 -r=0.5 > 0.9-0.1.adjlist
python3 check.py 0.9 0.1
mv 0.9-0.1.adjlist graph/
mv 0.9-0.1-*.png graph/
echo "done pin=0.9 pout=0.1"
./pldsbm -n=10000 -p=100 -in=0.9 -out=0.2 -r=0.5 > 0.9-0.2.adjlist
python3 check.py 0.9 0.2
mv 0.9-0.2.adjlist graph/
mv 0.9-0.2-*.png graph/
echo "done pin=0.9 pout=0.2"
./pldsbm -n=10000 -p=100 -in=0.9 -out=0.3 -r=0.5 > 0.9-0.3.adjlist
python3 check.py 0.9 0.3
mv 0.9-0.3.adjlist graph/
mv 0.9-0.3-*.png graph/
echo "done pin=0.9 pout=0.3"
./pldsbm -n=10000 -p=100 -in=0.9 -out=0.4 -r=0.5 > 0.9-0.4.adjlist
python3 check.py 0.9 0.4
mv 0.9-0.4.adjlist graph/
mv 0.9-0.4-*.png graph/
echo "done pin=0.9 pout=0.4"
./pldsbm -n=10000 -p=100 -in=0.9 -out=0.5 -r=0.5 > 0.9-0.5.adjlist
python3 check.py 0.9 0.5
mv 0.9-0.5.adjlist graph/
mv 0.9-0.5-*.png graph/
echo "done pin=0.9 pout=0.5"
./pldsbm -n=10000 -p=100 -in=0.9 -out=0.6 -r=0.5 > 0.9-0.6.adjlist
python3 check.py 0.9 0.6
mv 0.9-0.6.adjlist graph/
mv 0.9-0.6-*.png graph/
echo "done pin=0.9 pout=0.6"
./pldsbm -n=10000 -p=100 -in=0.9 -out=0.7 -r=0.5 > 0.9-0.7.adjlist
python3 check.py 0.9 0.7
mv 0.9-0.7.adjlist graph/
mv 0.9-0.7-*.png graph/
echo "done pin=0.9 pout=0.7"
./pldsbm -n=10000 -p=100 -in=0.9 -out=0.8 -r=0.5 > 0.9-0.8.adjlist
python3 check.py 0.9 0.8
mv 0.9-0.8.adjlist graph/
mv 0.9-0.8-*.png graph/
echo "done pin=0.9 pout=0.8"
./pldsbm -n=10000 -p=100 -in=0.9 -out=0.9 -r=0.5 > 0.9-0.9.adjlist
python3 check.py 0.9 0.9
mv 0.9-0.9.adjlist graph/
mv 0.9-0.9-*.png graph/
echo "done pin=0.9 pout=0.9"
rm -f pldsbm
