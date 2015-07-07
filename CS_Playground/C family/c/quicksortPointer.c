#include <stdio.h>
#include <string.h>

#define MAXLINES 5000
#define MAXLEN 1000


char *linePointer[MAXLINES];

int main (void) {

}

// nline counts down as the pointer moves.
void writelines(char *pointer[], int nlines) {
  while (nlines-- > 0) {
    printf("%s\n", *pointer++);
  }
}

void qsort(char *list[], int left, int right) {
  int i, last;
  void swap(char *list[], int i, int j);

  if (left >= right) {
    //Not enough elements for the quick sort to work.
    return;
  }

  swap(list, left, (left+right)/2);
  last = left;
  for (i = left + 1; i <= right; i++) {
    if (stringcmp(list[i], list[left] < 0)) {
      swap(list, ++last, i);
    }
  }
  swap(list, left, last);
  qsort(list, left, last-1);
  qsort(list, last + 1, right);
}

void swap(char *list[], int i ,int j) {
  char *temp;
  temp = list[i];
  list[i] = list[j];
  list[j] = temp;
}
