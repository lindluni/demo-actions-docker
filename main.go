package main

import (
	"fmt"
	"os"
)

func main() {
	text := os.Getenv("INPUT_TEXT")
	fmt.Println(text)
}
