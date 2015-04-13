package main

import "fmt"

func main() {
  var person = Person
  yhwh := God(true)
  leo := Human{"Leo", true}

  a = yhwh // yhwh implements (fits the requirements for) Person
  a = &leo // the pointer to leo implements Person
  //a = leo // this doesn't work because the method for Humand Think() requires a pointer.

  fmt.Println(a.Think()) //This would print out the version via leo
}

// A Go interface is a set of methods.
// Interfaces specify the behavior of an object.
// Interface: if something can do this, then it can be used here.
type Person interface {
  Think() bool
}

type God bool

func (g God) Think() bool {
  return g
}

type Human struct {
  Name string
  HasBrain bool
}

func (h *Human) Think() bool {
  if h.HasBrain {
    return true
  }
  return false
}
