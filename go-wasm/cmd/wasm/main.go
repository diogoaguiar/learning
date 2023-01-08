// build with: GOOS=js GOARCH=wasm go build -o main.wasm ./cmd/wasm
// ref: https://github.com/golang/go/wiki/WebAssembly#getting-started
package main

import "fmt"

func main() {
	fmt.Println("Hello!")
}
