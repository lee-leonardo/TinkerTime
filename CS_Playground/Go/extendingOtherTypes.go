package main
import (
  "fmt"
  )

//This shows a method being associated with a named type.
type CustomFloats float64

func (f CustomFloat) Abs() float64 {
  if f < 0 {
    return float64(-f)
  }
  return float64(f)
}

func main() {
  custFloat := CustomFloat(5.5)
  fmt.Println(f.Abs())
}
