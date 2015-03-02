package main

import (
  "fmt"
  "math"
  )

func sqrt(x float64) string {
  if x <  0 {
    return sqrt(-x) + "i"
  }
  return fmt.Sprint(math.Sqrt(x))
}

func pow(x, n, lim float64) float64 {
  //if treated like a for loop. Scopes to the if statement only.
  if v := math.Pow(x, n); v < lim {
    return v
  } else {
    fmt.Printf("%g >= %g\n", v, lim)
  }
  return lim
}

func main() {

  //Basic loop
  sum := 0
  for i:= 0; i < 10; i++ {
    sum += i
  }
  // fmt.Println(sum)

//Omitting pre and post
  for ; sum < 1000; {
    sum += sum
  }
  // fmt.Println(sum)

  sum = 10
//While
  for sum < 2000 {
    sum += sum
    // fmt.Println(sum)
  }

  //Infinite loop.
  // for {}

  //If
  if sum == 2000 {
    // fmt.Println("Sum is equal to 2000")
  }

  fmt.Println(sqrt(4), sqrt(-4))
  fmt.Println(
    pow(3,2,10),
    pow(3,3,10),
    )
}
