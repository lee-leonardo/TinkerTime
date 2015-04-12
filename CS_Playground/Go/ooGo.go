package main

import "fmt"

type User struct {
  FirstName, LastName string
  Age int
}

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
