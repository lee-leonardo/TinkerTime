//Euler 1

#include <stdio.h>

int main(void) {

  //printf("Hello\n");
  int sum = sumMultiples(1000);
  printf("%i",sum);

  return 0;
}

int sumMultiples( int number ) {
  int sum = 0;

  for(int i = 0; i <= number; i++ ){
    if (i % 3 == 0 || i % 5 == 0) {
      sum += i;
    }
  }

  return sum;
}
