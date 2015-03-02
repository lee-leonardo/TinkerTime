package main

import (
  "fmt"
  "math"
  "runtime"
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

//Newton's Square Root formula
func Sqrt(x float64) float64 {
	z := float64(1)
	z = z - ((z * z) - x)/(2 * z)
	return z
}

//Switch
func awesome(name string) {
  fmt.Print("Go is running on: ")

  //Switches break unless a fallthrough is used.
  switch os := runtime.GOOS; os {
    case "darwin":
      fmt.Print("OS X")
    case "linux":
      fmt.Print("Linux")
    case "nofallthrough":
    //There is no automatic fallthrough, will break automatically here.
    case "uhh":
      fallthrough
    default:
      fmt.Printf("%s", os)
  }

  i := 3
  //swith true will evaluate truthy statements.
  switch {
    case i == 0:
    case i <= 1:
    case i >= 0:
    default:
      fmt.Println("ha")
  }
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
