#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h> 


#define MAX_WORD_LENGTH 256

// size of hash table
#define HASH_SIZE 97

// dictionary structure --> going to be used to store known words to the dictionary
struct dictionary{

    //hashable of array of words
    char ***words;

    //array, storing current size of each of table rows
    int *sizes;

    // array, storing current capacity of each of table rows
    int *capacities;
};

// calculating word hash
int hash(const char* word) {
  int hash = 0;
  for (int i = 0; i<strlen(word); i++) {
    hash += word[i];
  }
  return hash % HASH_SIZE;
}

void addWordToDictionary(struct dictionary *dict, char *word){

    // calculating hash function of word
    int h = hash(word);

    // if hashtable row is full: capacity is equal to size, one has to increase capacity
    if (dict->sizes[h] == dict->capacities[h]){

        // increasing capacity 
        int newCapacity = dict->capacities[h] + 5;
        // reallocating word array
        dict->words[h] = (char **)realloc(dict->words[h], sizeof(char *) * newCapacity);
        // update capacity on dictionary structure
        dict->capacities[h] = newCapacity;
    }

    //adding word to new cell of in the words array
    dict->words[h][dict->sizes[h]] = word;
    //incrementing dictionary size
    dict->sizes[h]++;
}

// method for checking if the word exists in the dictionary
// return 1 if exists, 0 - otherwise
int containsWord(struct dictionary* dict, const char* word) {

    //calculate word hash 
    int j = hash(word);

    // iterating over all words in hashtable row
    for (int i = 0; i<dict->sizes[j]; i++) {
        //string compare fuction -- compare current dictionary word and given word
        // return 1 if equal 
        if (strcmp(dict->words[j][i], word) == 0) {
            return 1;
        }
    }
    // no mathces were found - return 0
    return 0;
}


//decryption function
int tryToDecrypt(struct dictionary *dict, const char *line){
    // iterating over all possible caesar cipher letter shift
    for (int i = 0; i < 26; i++){

        // local string, storing letter shifted line
        char tempLine[MAX_WORD_LENGTH];
        // iterating over all chars in line
        for (int j = 0; j < MAX_WORD_LENGTH; j++){
            // if current char is a letter, shifting it to current value i
            if (line[j] >= 'A' && line[j] <= 'Z'){
                //ceasar shift formula to obtain correct letter 
                tempLine[j] = (line[j] - 'A' + i) % 26 + 'A';
            }
            else{
                // otherwise, not shifting
                tempLine[j] = line[j];
                // if current char is 0, break it 
                if (line[j] == '\0'){
                    break;
                }
            }
        }

        // breaking up tempLine with space delimeter
        char *token = strtok(tempLine, " ");

        // variable accepted stays 1 as long as all read words are known
        int accepted = 1;


        while (token != NULL){

            // checking if next token is in dictionary
            if (containsWord(dict, token) == 0){ //containsWord will return 0 in no matches are found
            
                // if word is not in dictionary, set accepted to 0 and break
                accepted = 0;
                break;
            }
            token = strtok(NULL, " ");
        }

        // accepted is 1: all tokens were found in dictionary:
        // returning caesar cipher length, which was used to get given line
        if (accepted == 1){
            return 26 - i;
        }
        
    }
    // returning -1 if no accpetable caesar key was found
    return -1;
}




int main(void){
    clock_t t; //to see how fast the decryption happens
    t = clock(); 

    struct dictionary *dict; //initialize dictionary structure, pointer
    int initCapacity = 5;
    FILE *fDict, *fOutput;   //intialize pointers to dictionary and output file

    //allocating memory for the dictionary
    dict = (struct dictionary *)malloc(sizeof(struct dictionary));
    dict->words = (char***)calloc(sizeof(char**), HASH_SIZE);
    dict->sizes = (int*)calloc(sizeof(int), HASH_SIZE);
    dict->capacities = (int*)calloc(sizeof(int), HASH_SIZE);
    //allocate memory for the hash
     for (int i = 0; i<HASH_SIZE; i++){
        dict->sizes[i] = 0;
        dict->capacities[i] = initCapacity;
        dict->words[i] = (char**)calloc(sizeof(char*), initCapacity);
    }

    //allocate memory for line read buffer w/ max word length of 256
    char *buffer = (char *)calloc(sizeof(char), MAX_WORD_LENGTH);

    //open dictionary textfile for read
    fDict = fopen("dictionary2.txt", "r");
    if (fDict == NULL){
        //print message if file cant be opened
        printf("Cannot open dictionary file\n");
        return 1;
    }

    //reads words from dictionary file and adds the words to the dictionay 
    while(fgets(buffer, MAX_WORD_LENGTH, fDict)){
        buffer[strlen(buffer)-1] = '\0';
        addWordToDictionary(dict, buffer);
        buffer = (char*)calloc(sizeof(char), MAX_WORD_LENGTH);
    }
        //free the buffer
        free(buffer);
        //close dictionary file
        fclose(fDict);

    //open output textfile for wrtie
    fOutput = fopen("output.txt", "w");
    if (fOutput == NULL){
        //print message if file cant be opened
        printf("Can not open output file\n");
        return 1;
    }

    char encryptedLine[MAX_WORD_LENGTH]; //where encrypted input is going to get stored 
    int counter = 0;
    //read line from terminal input and store it in encryptedLine array
    while(fgets(encryptedLine, MAX_WORD_LENGTH, stdin)) {
    encryptedLine[strlen(encryptedLine) - 1] = '\0';
    //attempt decryption, print correct shift on outputfile 
    fprintf(fOutput, "%d\n", tryToDecrypt(dict, encryptedLine));
    counter++;
  }

  fclose(fOutput);
  //freeDict(dict);

    t = clock() - t; 
    double time_taken = ((double)t)/CLOCKS_PER_SEC; // in seconds 
    printf("\nDecryption took %f seconds to execute \n", time_taken); 
    printf("\nDecryption output was printed to output.txt file. Check Directory\n"); 
    
  return 0;

}

/* NEED */
// LIBRARIES //
//stdin.h
//stdlib.h
//string.h

// --------------------------------------------------------------------------------- //

//------------------------------------------------//
//                  Completed                     //
//------------------------------------------------//
// A STRUCTURE THAT STORES KNOWN WORDS TO DICTIONARY
// an array of words
//current number of words in the dectionary
// current capacity of dictionary

//------------------------------------------------//
//                  Completed                     //
//------------------------------------------------//
// METHOD THAT ADDS THE CURRENT WORD TO DICTIONARY
//increase size of dictionary if dictionary gets filled
//increase the capacity
//reallocate the memory of the array
//update the capacity
//add word to array
//increment dictionary size

//------------------------------------------------//
//                  Not completed                 //
//------------------------------------------------//
// METHOD THAT FREES MEMORY BEING USED BY THE DICTIONARY
//free memory allocated for each word --> for loop
//free memory allocated for char* array
//free memory in the structure that stores words

//------------------------------------------------//
//                  Completed                     //
//------------------------------------------------//
// METHOD THAT CHECKS IF THE WORD EXISTS IN THE DICTIONARY
//iterate through all the words in the dictionary --> for loop
//if current word and given word are equal, return true | 1--> if statement inside for loop
//if no match is found, return false | 0

//------------------------------------------------//
//                  Completed                     //
//------------------------------------------------//
// METHOD THAT TRIES TO DECRYPT GIVEN LINE USING GIVEN DICTIONARY
//iterate through all the shifts, 26 --> for loop
//iterate through all characters in the line --> nested forloop
//apply shift to all characters that are lettres, ignore spaces
 
// MAIN FUNCTION
//initialize the dictionary structure
//initialize the file pointers, output file and dictionary
//allocate memory for dictionary
//allocate memory for line read buffer
//try to open dictionary file
//read the stdin
//open output dile
//initialize array that holds line
//initialize line counter variable
//printout line decrytion shift to output file, call on the decryption method
//close output file after it iterates and decrypts entire standard input
//free the dictionary
//return 0

// --------------------------------------------------------------------------------------------------

/*
    unsigned int len_max = 128;
    unsigned int current_size = 0;
    char *pString = malloc(len_max);
    current_size = len_max;

    printf("Enter a string:\n");

    if(pString != NULL){
	int c = EOF;
	unsigned int i = 0;

	while ((c = getchar()) != EOF){ //accept user input until end of file

		pString[i++]=(char)c;
		if(i == current_size){  //if i reached maximize size then realloc size
            current_size = i+len_max;
			pString = realloc(pString, current_size);
		} 
        if( c == '\n'){
            printf("\n Newline: %s \n",pString);
            //free(pStr);
            //pStr = NULL;
        }
	}
	pString[i] = '\0';
    //printf("\nLong String value:%s \n\n",pStr);
	free(pString); //free it 
	pString = NULL;
    }
    return 0;
    */
