#include <stdlib.h>

void titleExample();

int main(void) {
  titleExample();
  return 0;
}

/*
  Double Pointers
    * useful as it adds another layer to removal from actual data.
    * reduces memory duplication
*/
void titleExample() {
  char *titles[] = {
    "A Tale of Two Cities",
    "Wuthering Heights",
    "Don Quixote",
    "Odyssey",
    "Moby Dick",
    "Hamlet",
    "Guilliver's Travels"
  };

  char **bestBooks[3];
  char **englishBooks[4];

  bestBooks[0] = &titles[0];
  bestBooks[1] = &titles[3];
  bestBooks[2] = &titles[5];

  englishBooks[0] = &titles[0];
  englishBooks[1] = &titles[1];
  englishBooks[2] = &titles[5];
  englishBooks[3] = &titles[6];

  // Dereferencing works intuitively.
  printf("%s\n", *englishBooks[1]);
}
