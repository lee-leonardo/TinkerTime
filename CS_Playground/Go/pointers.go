package main

import "fmt"

//Har iOS... but this is a struct
type CGPoint struct {
  X float64
  Y float64
}

func main() {
  i, j := 42, 3800

  p := &i
  fmt.Println(*p)
  *p = 21 //i = 21
  fmt.Println(i)

  p = &j
  *p = *p / 37 //j / 37
  fmt.Println(j)
  //No pointer arithmetic.

  point := CGPoint{1.99, 5.4}
  fmt.Println(point)
  fmt.Println(point.X)
  aPoint := &point
  fmt.Println(aPoint.X)

  var (
    x1 = CGPoint{1,0}
    x1again = CGPoint{X: 1}
    x0 = CGPoint{}
    pointCGPoint = &CGPoint{1,1}
    )
    fmt.Println(x1, x1again, x0, pointCGPoint)
}
