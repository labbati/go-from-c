package main

import (
	"C"
)

//export Add
func Add(a, b uint, result *uint) *C.char {
	*result = uint(a + b)
	return nil
}

func main() {}
