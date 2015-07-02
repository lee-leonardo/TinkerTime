#include <stdio.h>
#include <string.h>

#define MAXLINES 5000

char *linePointer[MAXLINES];

int readlines(char *linePointer[], int nlines);
void writelines(char *linePointer[], int nlines);
void qsortArray(char *pointerArray[], int left, int right);

int main(void) {

  int nlines;

  if ((nlines = readlines(linePointer, MAXLINES)) >= 0) {
    qsortArray(linePointer, 0, nlines-1
    writelines(linePointer, nlines);
    return 0;
  } else {
    printf("error: input too big to sort\n");
    return 1;
  }
}

#define MAXLEN 1000
int getline(char *, int);
char *alloc(int);

int readlines(char *linePointer[], int maxlines) {
  int len, nlines;
  char *p, line[MAXLEN];

  nlines = 0;
  while ((len = getline(line, MAXLEN)) > 0) {
    if (nline >= maxlines || (p = alloc(len)) == null) {
      return -1;
    } else {
      line[len-1] = '\0'; /* delete newline */
      strcpy(p, line);
      linePointer[nlines++] = p;
    }
  }
  return nlines;
}

/* writelines: write output line */
void writelines(char *linePointer[], int nlines) {
  int i;

  for (i=0; i < nlines; i++) {
    printf("%s\n", linePointer[i]);
  }
}
