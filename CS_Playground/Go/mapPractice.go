package main

import "fmt"

func main() {
  mapBasics()
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
