package main

import (
  "fmt"
  )

func main() {
  fAsValue()
  simpleClosure()
}

func fAsValue() {
  hello := func(name string) {
    fmt.Println("Hello", name)
  }
  hello("Bob")
}

func simpleClosure() {
  bachelorParty, wedding := factoryMethod(), factoryMethod()

  bachelorParty("Moe")
  wedding("mother")

  fmt.Println(bachelorParty("Jorge"))
  fmt.Println(wedding("dad"))
}

func factoryMethod() func(string)[]string {
  guestList := []string{}

  return func(name string)[]string {
    guestList = append(guestList, name)
    return guestList
  }
}
