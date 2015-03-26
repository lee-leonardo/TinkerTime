package main

import "fmt"

func main() {
  slicesBasic()
  usingRanges()
  bitShifting()
}

func printSlice(s string, x []int) {
  fmt.Printf("%s, len=%d cap=%d %v\n", s, len(x), cap(x), x)
}

func slicesBasic() {
  var z []int
  fmt.Println(z, len(z), cap(z))
  if z == nil {
    fmt.Println("nil!")
  }

  //append works on nil slices
  var x []int
  printSlice("x", x)
  //slices grow as needed
  x = append(x, 0)
  printSlice("x", x)
  //Multiple elements in append
  x = append(z, 2, 3, 4)
  printSlice("x", x)
}

func usingRanges() {
  var pow = []int{1,2,3,4,5,6,7,8,9,10}

  for i, v := range pow {
    fmt.Printf("2**%d = %d\n", i, v)
  }
}

func bitShifting() {
  pow := make([]int, 10)
  for i:= range pow {
    pow[i] = 1 << uint(i)
  }
  for _,value := range pow {
    fmt.Printf("%d\n", value)
  }
}
