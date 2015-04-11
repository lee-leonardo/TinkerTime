package main

import "fmt"

func main() {
  // sliceAsArray()
  // sliceAsAService()
  sliceAppending()
}

func sliceAsArray() {
  var expArray [2]string
  expArray[0] = "One"
  expArray[1] = "Two"

  fmt.Println(expArray[0], expArray[1])

  var arrayLiteral = []int{1,2,3,4,5}
  fmt.Println(arrayLiteral[0], arrayLiteral[4])
  fmt.Println(arrayLiteral[:3], arrayLiteral[2:], arrayLiteral)
}

func sliceAsAService() {
  var slice []int
  fmt.Println(slice, len(slice), cap(slice))

  withCap := make([]int, 10)
  fmt.Println(withCap, len(withCap), cap(withCap))

  alsoLen := make([]int, 0, 5)
  fmt.Println(alsoLen, len(alsoLen), cap(alsoLen))
}

func sliceAppending() {
  slice := make([]int, 0, 10)
  fmt.Println(slice)
  slice = append(slice, 1,2,3,4,5,6,7,8,9,10)
  fmt.Println(slice)

  //This is interesting, I thought that capacity mattered...
  slice = append(slice, 11)
  fmt.Println(slice)

  for i := range slice {
    fmt.Println(i, slice[i])
  }

  multiDim [][]int
  fmt.Println(multiDim)
}
