//Packages are obviously packages...
package main

//Imports allow Go to compile and execute quickly.
import (
  "fmt"
  "math"
  "math/rand"
  )

  /*
  Same as
  import "fmt"
  import "math/rand"
  but good style to use import ().
  */

/*
func add(x int, y int) int {
  return x + y
}
*/
//Same as above, but with a shortened declaration syntax.
func add(x, y int) int {
  return x + y
}
//Returning a Tuple
func swap(x, y string) (string, string) {
  return y, x
}
//Can treat returns as variables, 'naked' returns will return the current value of the results (variables?)
func split(sum int) (x, y int) {
  x = sum * 4 / 9
  y = sum - x
  return
}

func main() {
  fmt.Println("My favorite number is", rand.Intn(10))
  fmt.Println("Now you have %g problems", math.Nextafter(2, 3))
  fmt.Println(math.Pi) //Exported names have a capital first letter (other letters can also be capital).
  fmt.Println(add(2, 3)) //Declaration Syntax

  a, b := swap("world", "hello")
  fmy.Println(a,b)

  //Variable declared first in a list of variables, type is last.
  //Variables have scope.
  var c, python, java bool
  //initializers, this requires one per variable.
  var i, j int = 1, 2
  //Type can be omitted and implied.
  var k, l = 7, "string"
  //Shorthand for a variable with implicit type. Only available in functional scope.
  m := true
  //Types for Go: https://tour.golang.org/basics/11
  //Falsey: 0, false, ""
  //Type conversion, needs to be explicit in Go.
  var n = Float(k)
  o := Float(k)

  //No := syntax for constants.
  const p = 5
}
