package main

import "fmt"

func main() {
  mapBasics()
  mapLiterals()
  mapTricks()
}

func mapBasics() {
  jalfrazie := make(map[string]string)
  jalfrazie["From"] = "Leipzig"
  jalfrazie["To"] = "Joule"

  fmt.Println(jalfrazie)

  for key, value := range jalfrazie {
    fmt.Println("Key:", key, "and Value:", value)
  }
}

func mapLiterals() {
  // Types can be omitted in declaration of values.
  var cosmos = map[string]string {
    "jupiter":"jupiter",
    "saturn":"saturn",
  }
  fmt.Println(cosmos)
}

func mapTricks() {
  cosmos := make(map[string]string)

  cosmos["largest"] = "jupiter"
  cosmos["rings"] = "saturn"

  //Reassignment
  cosmos["life"] = "mars"
  cosmos["life"] = "earth"

  //Deleting a value
  delete(cosmos, "rings")

  //Zero val (nil) checking
  value, ok := cosmos["rings"]

  if ok {
    fmt.Println(value)
  }
  fmt.Println(cosmos)
}
