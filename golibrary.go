package main

import (
	"C"
)

//export Add
func Add(a, b uint, result *uint) *C.char {
	*result = uint(a + b)
	return nil
}

//export ReturnsAString
func ReturnsAString() *C.char {
	return C.CString("Hello from the go library")
}

func main() {}
