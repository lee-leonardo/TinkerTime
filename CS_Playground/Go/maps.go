package main

import "fmt"

type Vertex struct {
  Lat, Long float64
}

var m map[string]Vertex

func main() {
  map1()
}

func map1() {
  m = make(map[string]Vertex)
}

func map2() {
  
}
