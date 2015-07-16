/*
  As practice for data structures I'm making a doubly linked list and the methods to go along with it.
*/

// #include <stdio.h>
#include <stdlib.h>

struct head;
struct node;

int main(void) {

}

struct head {
  int count;
  struct node *first;
};

struct node {
  struct node *last;
  struct node *next;
  int value;
};

void findValueInTree(struct node *current, int value) {

}

void addNode(struct node *current, int value) {

}

void removeNode(struct node *current, int value) {

}

struct head mockNdes() {
  struct head start;
  

  return start;
}
