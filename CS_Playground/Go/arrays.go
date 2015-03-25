package main
import "fmt"
func main (){
  //Arrays cannot be resized...
  var a [2]string
  a[0] = "Hello"
  a[1] = "World"
  fmt.Println(a[0], a[1])

//Slice syntax
  p := []int{2,3,5,7,11,13}
  fmt.Println("p ==", p)
  fmt.Println("p[1:4] ==", p[1:4])
  for i:= 0; i< len(p); i++ {
    fmt.Printf("p[%d] == %d\n", i, p[i])
  }

  fmt.Println("p[:3] ==", p[:3]) //0-X
  fmt.Println("p[2:] ==", p[2:]) //X-End

  //An slice of 5 zeroes
  //I'm not sure why the make isn't working.
  a := make([]int, 5)
  fmt.Println("a", a, cap(a))
  //A slice that has a capacity of 5 and a starting length of 0.
  b := make([]int, 0, 5)

  var z []int //nil slice.

  moreArray()
}

func moreArray() {
  a := make([]int, 5)
  printSlice("a", a)
  b := make([]int, 0, 5)
  printSlice("b", b)
  c := b[:2]
  printSlice("c", c)
  d := c[2:5]
  printSlice("d", d)
}
