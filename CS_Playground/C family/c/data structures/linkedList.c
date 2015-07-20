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

void findValueInTree(struct head *head, int value) {

}

void addNode(struct node *current, int value) {
  struct node node;
  node.last = current;
  node.value = value;
  current->next = &node; //struct->member is the same as (*struct).member

}

void removeNode(struct node *current, int value) {

}

void addValueToList(struct head *head, int value) {

}

void removeValueFromList(struct node *current, int value) {

}

struct head mockNodes() {
  struct head start;


  return start;
}

/*
  Sorting Functions
*/
void highLow() {

}
void lowHigh() {

}
