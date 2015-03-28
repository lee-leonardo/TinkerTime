package main

import (
  "fmt"
  "math"
)

func main() {
  fValue1()
}

func fValue1() {
  hypot := func(x, y float64) float64 {
    return math.Sqrt(x*x + y*y)
  }

  fmt.Println(hypot(3,4))
}

func closure() {
  
}
