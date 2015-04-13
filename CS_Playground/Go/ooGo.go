package main

import "fmt"

type User struct {
  FirstName, LastName string
  Age int
}

// When creating methods for types and structs, it is better to use a pointer as below.
// If you do it without a pointer it will copy the whole value and will not mutate the original.
// If you just need to read a value, not using a pointer is fine.
func (u *User) Over18() bool {
  return (u.Age >= 18)
}

func main() {
  methodDeclaration()
}

func methodDeclaration() {
  leo := User{"Leo", "Lee", 24}
  dukeDaDog := User{"Duke", "Snoop", 6}

  fmt.Println("Leo of Age?", leo.Over18())
  fmt.Println("Duke of Age?", dukeDaDog.Over18())
}
