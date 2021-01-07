#include <stdio.h>
#include <stdlib.h>
#include <string.h>

extern int hash(const char* word);

extern void addWordToDictionary(struct dictionary *dict, char *word);

extern int containsWord(struct dictionary* dict, const char* word);

extern int tryToDecrypt(struct dictionary *dict, const char *line);