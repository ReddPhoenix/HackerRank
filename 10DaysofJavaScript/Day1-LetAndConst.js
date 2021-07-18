// Objective

// In this challenge, we practice declaring variables using the let and const keywords. Check out the attached tutorial for more details.

    
// Task

// 1. Declare a constant variable, PI, and assign it the value Math.PI. You will not pass this challenge unless the variable is declared as a constant and named PI (uppercase).
// 2. Read a number, r, denoting the radius of a circle from stdin.
// 3. Use PI and r to calculate the area and perimeter of a circle having radius r.
// 4. Print area as the first line of output and print perimeter as the second line of output.


// Input Format

// A single integer, r, denoting the radius of a circle.


// Constraints

// * 0 < r <= 100
// * r is a floating-point number scaled to at most 3 decimal places.


// Output Format

// Print the following two lines:

// On the first line, print the area of the circle having radius r.
// On the second line, print the perimeter of the circle having radius r.


// Sample Input 0

// 2.6


// Sample Output 0

// 21.237166338267002
// 16.336281798666924


// Explanation 0

// Given the radius r = 2.6, we calculate the following:
// * area = Pi * r ^ 2 = 21.23716633826002
// * perimeter = 2 * Pi * r = 16.33628179866624

// We then print area as our first line of output and perimeter as our second line of output.

'use strict';

process.stdin.resume();
process.stdin.setEncoding('utf-8');

let inputString = '';
let currentLine = 0;

process.stdin.on('data', inputStdin => {
    inputString += inputStdin;
});

process.stdin.on('end', _ => {
    inputString = inputString.trim().split('\n').map(string => {
        return string.trim();
    });
    
    main();    
});

function readLine() {
    return inputString[currentLine++];
}

function main() {
    // Write your code here. Read input using 'readLine()' and print output using 'console.log()'.
    const PI = Math.PI;
    let r = readLine();
     
    // Print the area of the circle:
    let area = PI * r * r;
    console.log(area);
    
    // Print the perimeter of the circle:
    let perimeter = 2 * PI * r;
    console.log(perimeter);
    try {    