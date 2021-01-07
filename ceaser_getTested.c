#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "ceaser.h"

int hash(const char *word){
  int HASH_SIZE = 97;
  int hash = 0;
  for (int i = 0; i < strlen(word); i++){
    hash += word[i];
  }
  return hash % HASH_SIZE;
}
