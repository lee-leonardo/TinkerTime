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
  struct node node;
  node.last = current;
  *current->next = node;

}

void removeNode(struct node *current, int value) {

}

void removeLastNode(struct node *current, int valueToRemove) {

}

struct head mockNodes() {
  struct head start;


  return start;
}
