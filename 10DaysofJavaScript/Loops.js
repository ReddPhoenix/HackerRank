// Objective

// In this challenge, we practice looping over the characters of string. Check out the attached tutorial for more details.

    
// Task

// *   First, print each vowel in s on a new line. The English vowels are a, e, i, o, and u, and each vowel must be printed in the same order as it appeared in s.
// *   Second, print each consonant (i.e., non-vowel) in s on a new line in the same order as it appeared in s.



// Function Description

// Complete the vowelsAndConsonants function in the editor below.

// vowelsAndConsonants has the following parameters:

// * string s: the string to process


// Prints

// * Print each vowel of s in order on a new line, then print each consonant in order on a new line.Return nothing.


// Input Format

// There is one line of input with the string s.


// Output Format

// First, print each vowel in s on a new line (in the same order as they appeared in s). Second, print each consonant (i.e., non-vowel) in s on a new line (in the same order as they appeared in s).


// Sample Input 0

// javascriptloops



// Sample Output 0

// a
// a
// i
// o
// o
// j
// v
// s
// c
// r
// p
// t
// l
// p
// s


// Explanation 0

// Observe the following:

// Each letter is printed on a new line.
// Then the vowels are printed in the same order as they appeared in s.
// Then the consonants are printed in the same order as they appeared in s.

function vowelsAndConsonants(s) {
    let arr = s.split('');
    // console.log(arr[0]);
    
    for ( let i = 0; i < arr.length; i++) {
        if(arr[i] === 'a' || arr[i] === 'e' || arr[i] === 'i' || arr[i] === 'o' || arr[i] === 'u') {
            console.log(arr[i]);
        }  
    };
    
    for ( let i = 0; i < arr.length; i++){    
        if(arr[i] !== 'a' & arr[i] !== 'e' & arr[i] !== 'i' & arr[i] !== 'o' & arr[i] !== 'u') {
            console.log(arr[i]);
        }
    }
}  
