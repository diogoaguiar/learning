package main

import (
	"fmt"
	"sync"
	"time"
)

func main() {
	start := time.Now()

	var wg sync.WaitGroup
	count := 1_000_000
	wg.Add(count)

	for i := 0; i < count; i++ {
		go func() {
			time.Sleep(1 * time.Second)
			wg.Done()
		}()
	}

	wg.Wait()

	elapsed := time.Since(start)
	fmt.Printf("Execution time: %v", elapsed)
}
