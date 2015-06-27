package main

import (
  "net"
  "fmt"
)

func main() {

}


func connectToServer() {
  connection, error := net.Dial("tcp", "localhost:8080")
  if error != nil {
    //
  }
  fmt.Println(connection, "GET / HTTP/1.0\r\n\r\n")
  status, error := bufio.NewReader(connection).ReadString('\n')

}

func listenSocket() {
  listener, error := net.Listen("tcp", ":8080")
  if error != nil {
    fmt.Println(error)
  }
  for {
    connection, error := listener.Accept()
    if err != nil {
      fmt.Println(error)
    }
    //This is an example to send the connection to a concurrent function.
    //This is pretty awesome!
    go handleConnection(connection)
  }
}
