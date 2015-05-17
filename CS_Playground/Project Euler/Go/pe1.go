package main

import (
  "fmt",
  "math"
)

func main() {
  sum := sumMultiple(1000)

  fmt.Printf("Answer is %i", sum)
}

func sumMultiple( x int ) int {
  sum int = 0;

  for (i := 0; i < int; i++) {
    sum = sum + i;
  }

  return sum
}
