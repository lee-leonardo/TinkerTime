package main

import "fmt"

// Slices points an array of values and a length.
func main() {
  arrayBasics()
  slicesBasic()
  makingSlices()
  usingRanges()
  bitShifting()
}

func arrayBasics(){
  //Arrays cannot be resized...
  var a [2]string
  a[0] = "Hello"
  a[1] = "World"
  fmt.Println(a[0], a[1])

//Slice syntax
//Slices are pointers that point to an array and a length value.
  p := []int{2,3,5,7,11,13}
  fmt.Println("p ==", p)
  fmt.Println("p[1:4] ==", p[1:4])
  for i:= 0; i< len(p); i++ {
    fmt.Printf("p[%d] == %d\n", i, p[i])
  }

//Creates a new slice that points to the same array.
  fmt.Println("p[:3] ==", p[:3]) //0-X
  fmt.Println("p[2:] ==", p[2:]) //X-End

  //An slice of 5 zeroes
  //I'm not sure why the make isn't working.
  a := make([]int, 5)
  fmt.Println("a", a, cap(a))
  //A slice that has a capacity of 5 and a starting length of 0.
  b := make([]int, 0, 5)

  var z []int //nil slice.

}

func makingSlices() {
  //make() creates slices
  a := make([]int, 5)
  printSlice("a", a)
  b := make([]int, 0, 5)
  printSlice("b", b)
  c := b[:2]
  printSlice("c", c)
  d := c[2:5]
  printSlice("d", d)
}



func printSlice(s string, x []int) {
  fmt.Printf("%s, len=%d cap=%d %v\n", s, len(x), cap(x), x)
}

func slicesBasic() {
  //Nil slices are slices of capacity and length of zero.
  var z []int
  fmt.Println(z, len(z), cap(z))
  if z == nil {
    fmt.Println("nil!")
  }

  //append is a common way to add new elements to slices.
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
