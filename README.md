# TODO

Resources used:
1. Declaring structures datatypes https://www.geeksforgeeks.org/structures-c/ 

2. Double pointers https://www.geeksforgeeks.org/double-pointer-pointer-pointer-c/ |||| https://stackoverflow.com/questions/5580761/why-use-double-indirection-or-why-use-pointers-to-pointers/25110045

3. Dynamic allocation, https://www.learn-c.org/en/Dynamic_allocation
4. Structure pointer operator https://www.dummies.com/programming/c/how-to-allocate-space-for-a-structure-in-c-programming/
5. Calloc vs malloc https://www.geeksforgeeks.org/dynamic-memory-allocation-in-c-using-malloc-calloc-free-and-realloc/
https://www.geeksforgeeks.org/difference-between-malloc-and-calloc-with-examples/

6. Buffer, line read http://www.fundza.com/c4serious/fileIO_reading_all/index.html

7. realloc https://www.geeksforgeeks.org/g-fact-66/

8. comparing strings strcmp() https://www.tutorialspoint.com/c_standard_library/c_function_strcmp.htm

9. strtok() to break up line https://www.tutorialspoint.com/c_standard_library/c_function_strtok.htm

10. strlen() https://www.tutorialspoint.com/c_standard_library/c_function_strlen.htm

11. hashtable research https://www.tutorialspoint.com/data_structures_algorithms/hash_data_structure.htm
    - https://www.hackerearth.com/practice/data-structures/hash-tables/basics-of-hash-tables/tutorial/
    - https://www.youtube.com/watch?v=2Ti5yvumFTU

12. clock function to measure the speed of decryption - https://www.geeksforgeeks.org/how-to-measure-time-taken-by-a-program-in-c/



# Speed test:
Decryption with dictionary array -  2.455147 seconds to execute 
Decryption with hashtable -  0.056472 seconds to execute 

Difference between the two is remarkable

-------------------------------------------------------------------------------------------------------------

Hashtable data structure is efficient beacuse the time complexity of its search and insert is O(1) - best case scenario and 0(n) - worst case. Even in its worst case, the computation is quite fast. In the previous example I used an array which has an access, search, and insertion of O(n) for its best case. 
The hash function iterates through the word char by char and in a forloop, and stores each char in a an interger variable. Once it iterates throught the whole word it returns the hash --> value of word % size of hash. 

use addWordToDictionary() function to store the word into the hashtable. Use hash() function to determine where we're going to store the word. 

In containsWord() function we call the hash() function to determine where the word is stored, iterate through the array and if the current word in the array equals the value if the hash, return 1 --> indicates that it contains the word. 

Call the containsWord() method inside the decryption function. 

# CMAKE

cd build 
cmake ..
make 
/bin/ceaser --> decryption program 
/bin/ceaser_tests --> execute and run tests



# TERMINAL:
Pipe textfile into executable file 
cat encrypted_text.txt | ./ceaser.o

the timing will be printed on the terminal
the correct shift for everyline will be printed on output.txt file 


# Thought process:
        
LIBRARIES
    - stdin.h
    - stdlib.h 
    - string.h

A STRUCTURE THAT STORES KNOWN WORDS TO DICTIONARY 
    - an array of words 
    - current number of words in the dectionary 
    - current capacity of dictionary

METHOD THAT ADDS THE CURRENT WORD TO DICTIONARY
    - increase size of dictionary if dictionary gets filled 
    - increase the capacity 
    - reallocate the memory of the array 
    - update the capacity 
    - add word to array 
    - increment dictionary size 

METHOD THAT FREES MEMORY BEING USED BY THE DICTIONARY 
    - free memory allocated for each word --> for loop 
    - free memory allocated for char* array 
    - free memory in the structure that stores words 

METHOD THAT CHECKS IF THE WORD EXISTS IN THE DICTIONARY 
    - iterate through all the words in the dictionary --> for loop 
    - if current word and given word are equal, return true | 1--> if statement inside for loop 
    - if no match is found, return false | 0

METHOD THAT TRIES TO DECRYPT GIVEN LINE USING GIVEN DICTIONARY 
    - iterate through all the shifts, 26 --> for loop 
    - iterate through all characters in the line --> nested forloop 
    - apply shift to all characters that are lettres, ignore spaces 

MAIN FUNCTION
    - initialize the dictionary structure
    - initialize the file pointers, output file and dictionary
    - allocate memory for dictionary 
    - allocate memory for line read buffer
    - try to open dictionary file 
    - read the stdin 
    - open output dile 
    - initialize array that holds line
    - initialize line counter variable 
    - printout line decrytion shift to output file, call on the decryption method 
    - close output file after it iterates and decrypts entire standard input 
    - free the dictionary 
    - return 0

------------------------------------------------------------------------------------------------














