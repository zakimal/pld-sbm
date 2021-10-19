package main

import (
	"flag"
	"fmt"
	"math"
	"os"
	"strings"
	"sync"

	"gonum.org/v1/gonum/stat/distuv"
)

const PARALLEL = 35

var (
	numberOfNodes      int
	numberOfPartitions int
	pIn                float64
	pOut               float64
	r                  float64
)

func init() {
	flag.IntVar(&numberOfNodes, "n", 0, "Number of nodes")                                      // -n=100
	flag.IntVar(&numberOfPartitions, "p", 0, "Number of partitions")                            // -p=10
	flag.Float64Var(&pIn, "in", 0.0, "Probability to span edge within a partition")             // -in=0.5
	flag.Float64Var(&pOut, "out", 0.0, "Probability to span edge between different partitions") // -out=0.5
	flag.Float64Var(&r, "r", 0.0, "rate parameter")                                             // -r=2
}

func main() {
	flag.Parse()

	if numberOfNodes == 0 || numberOfPartitions == 0 || pIn == 0.0 || pOut == 0.0 || r == 0.0 {
		fmt.Println("invalid arguments")
		fmt.Println("eg: go run main.go -n=100 -p=10 -in=0.1 -out=0.5")
		os.Exit(1)
	}

	if numberOfNodes%numberOfPartitions != 0 {
		fmt.Println("#partition % #nodes != 0")
		os.Exit(1)
	}

	// B := make([][]float64, numberOfPartitions)
	// for i := 0; i < numberOfPartitions; i++ {
	// 	B[i] = make([]float64, numberOfPartitions)
	// }
	// for i := 0; i < numberOfPartitions; i++ {
	// 	for j := 0; j < numberOfPartitions; j++ {
	// 		if i == j {
	// 			B[i][j] = pIn
	// 		} else {
	// 			B[i][j] = pOut
	// 		}
	// 	}
	// }

	// z[i] = j -> 頂点iはパーティションjに属している
	// 均等割り
	z := make([]int, numberOfNodes)
	for i := 0; i < numberOfNodes; i++ {
		z[i] = int(i / int(numberOfNodes/numberOfPartitions))
	}

	expo := distuv.Exponential{Rate: r} // 期待値は1/r

	delta := make([]float64, numberOfNodes)
	for i := 0; i < numberOfNodes; i++ {
		delta[i] = expo.Rand()
	}

	// A := make([][]int, numberOfNodes)
	// for i := 0; i < numberOfNodes; i++ {
	// 	A[i] = make([]int, numberOfNodes)
	// 	for j := 0; j < numberOfNodes; j++ {
	// 		A[i][j] = 0
	// 	}
	// }

	// A := sparse.NewDOK(numberOfNodes, numberOfNodes)

	// O(N^2)
	// for i := 0; i < numberOfNodes; i++ {
	// 	for j := 0; j < numberOfNodes; j++ {
	// 		p := math.Pow(B[z[i]][z[j]], 1.0+delta[i]+delta[j])
	// 		bern := distuv.Bernoulli{P: p}
	// 		ele := bern.Rand()
	// 		if ele == 1 {
	// 			A.Set(i, j, 1)
	// 		}
	// 	}
	// }

	// // 並列版
	// var mu sync.Mutex
	// calc := func(A *sparse.DOK, B *[][]float64, z *[]int, delta *[]float64, i int, ch chan int) {
	// 	for j := 0; j < numberOfNodes; j++ {
	// 		p := math.Pow((*B)[(*z)[i]][(*z)[j]], 1.0+(*delta)[i]+(*delta)[j])
	// 		bern := distuv.Bernoulli{P: p}
	// 		ele := bern.Rand()
	// 		if ele == 1 {
	// 			mu.Lock()
	// 			(*A).Set(i, j, 1)
	// 			mu.Unlock()
	// 		}
	// 	}
	// 	ch <- 1
	// }
	// ch := make(chan int)

	// for i := 0; i < numberOfNodes; i++ {
	// 	go calc(A, &B, &z, &delta, i, ch)
	// }
	// for i := 0; i < numberOfNodes; i++ {
	// 	<-ch // wait goroutines
	// }

	edges := make(map[int][]int)

	// // edges O(N^2)
	// for i := 0; i < numberOfNodes; i++ {
	// 	for j := 0; j < numberOfNodes; j++ {
	// 		if j == i {
	// 			continue // self loop
	// 		}
	// 		p := math.Pow(B[z[i]][z[j]], 1.0+delta[i]+delta[j])
	// 		bern := distuv.Bernoulli{P: p}
	// 		ele := bern.Rand()
	// 		if ele == 1 {
	// 			if len(edges[i]) == 0 {
	// 				edges[i] = []int{j}
	// 			} else {
	// 				edges[i] = append(edges[i], j)
	// 			}
	// 		}
	// 	}
	// }

	// edges 並行版 w/ lock
	var mu sync.Mutex
	calc := func(edges *map[int][]int, z *[]int, delta *[]float64, i, from, to int, pIn, pOut float64, ch chan int) {
		mu.Lock()
		defer mu.Unlock()
		for j := from; j < to; j++ {
			if j == i {
				continue // self loop
			}
			var p float64
			if (*z)[i] == (*z)[j] {
				p = math.Pow(pIn, 1.0+(*delta)[i]+(*delta)[j])
			} else {
				p = math.Pow(pOut, 1.0+(*delta)[i]+(*delta)[j])
			}
			bern := distuv.Bernoulli{P: p}
			ele := bern.Rand()
			if ele == 1 {
				// mu.Lock()
				if len((*edges)[i]) == 0 {
					(*edges)[i] = []int{j}
				} else {
					(*edges)[i] = append((*edges)[i], j)
				}
				// mu.Unlock()
			}
		}
		ch <- 1
	}
	ch := make(chan int)
	for i := 0; i < numberOfNodes; i++ {
		last := numberOfNodes % PARALLEL
		width := (numberOfNodes - last) / PARALLEL
		for j := 0; j < PARALLEL; j++ {
			var from, to int
			if j != PARALLEL-1 {
				from = j * width
				to = (j + 1) * width
			} else {
				from = j * width
				to = j + last
			}
			go calc(&edges, &z, &delta, i, from, to, pIn, pOut, ch)
		}
	}
	for i := 0; i < numberOfNodes; i++ {
		<-ch // wait goroutines
	}

	for u := 0; u < numberOfNodes; u++ {
		neighbors := edges[u]
		if len(neighbors) == 0 {
			fmt.Printf("%d\n", u)
		} else {
			fmt.Printf("%d %s\n", u, strings.Trim(fmt.Sprint(neighbors), "[]"))
		}
	}

	// for i := 0; i < numberOfNodes; i++ {
	// 	for j := 0; j < numberOfNodes; j++ {
	// 		if j == numberOfNodes-1 {
	// 			fmt.Println(int(A.At(i, j)))
	// 		} else {
	// 			fmt.Printf("%d ", int(A.At(i, j)))
	// 		}
	// 	}
	// }

	// strA := make([][]string, numberOfNodes)
	// for i := 0; i < numberOfNodes; i++ {
	// 	strA[i] = make([]string, numberOfNodes)
	// 	for j := 0; j < numberOfNodes; j++ {
	// 		strA[i][j] = strconv.Itoa(int(A.At(i, j)))
	// 	}
	// }
	// w := csv.NewWriter(os.Stdout)
	// w.WriteAll(strA)
	// if err := w.Error(); err != nil {
	// 	panic(err)
	// }

}
