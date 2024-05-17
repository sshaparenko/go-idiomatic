package main

import "fmt"

func main() {
	//6030.000000
	fltPos := 6.03e+3
	//0.006030
	fltNeg := 6.03e-3
	fmt.Printf("Hello World\n")
	fmt.Printf("%f\n", fltPos)
	fmt.Printf("%f\n", fltNeg)
}

func Add(a int, b int) int {
	return a + b
}
