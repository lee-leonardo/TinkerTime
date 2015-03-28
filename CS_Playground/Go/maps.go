package main

import "fmt"

type Vertex struct {
  Lat, Long float64
}

//Maps are key-value pairs.
func main() {
  map1()
  map2()
  mapLiterals()
}

//Like slices they are created with make.
func map1() {
  //Nil maps are empty and unassignable.
  m = make(map[string]Vertex)
}

func map2() {
  m = make(map[string]Vertex)
  m["Bell Labs"]Vertex{
    40.68433, -74.39967
  }
  fmt.Println(m["Bell Labs"])
}

func mapLiterals() {
  //Explicit
  m = map[string]Vertex {
    "Bell Labs": Vertex{
      40.68433, -74.39967,
    },
    "Google": Vertex{
      37.42202, -122.08408,
    },
  }

  //Infers when the top level type is a type name.
  n = map[string]Vertex {
    "Bell Labs": {40.68433, -74.39967},
    "Google": {37.42202, -122.08408}
  }
}

func mapMutation() {
  m := make(map[string]int)
  m["Answer"] = 48
  m["Answer"] = 40
  delete(m, "Answer")

  //This tests to see if the key exists, v receiving the value, ok getting t/f
  v, ok := m["Answer"]
}
