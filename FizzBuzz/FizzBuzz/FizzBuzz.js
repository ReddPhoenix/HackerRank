'use strict';

process.stdin.resume();
process.stdin.setEncoding('utf-8');

let inputString = '';
let currentLine = 0;

process.stdin.on('data', function(inputStdin) {
    inputString += inputStdin;
});

process.stdin.on('end', function() {
    inputString = inputString.split('\n');

    main();
});

function readLine() {
    return inputString[currentLine++];
}



/*
 * Complete the 'fizzBuzz' function below.
 *
 * The function accepts INTEGER n as parameter.
 */

function fizzBuzz(n) {
    // n is the upper limit of numbers
    // Whole numbers 
    // Compare [i] to 3
    // If [i] can be divided by 3, output Fizz
    // Compare [i] to 5
    // If [i] can be divided by 5, output Buzz
    // Compare [i] to 3 & 5
    // If [i] can be divided by 3 & 5, output FizzBuzz
    // If [i] can not be divided by 3 & 5, output i
    // Displayed in ascending order
            
        for ( var i = 1; i <= n; i++ ) {
            // Highest number that can be divided by 3 & 5 is 15
            if (i % 15 === 0) {
                console.log('FizzBuzz');
            }
            // Divided by 3
            else if (i % 3 === 0) {
                console.log('Fizz');
            }
            // Divided by 5
            else if (i % 5 === 0) {
                console.log('Buzz');
            }
            // Return n if not divisible by 3 or 5
            else {
                console.log(i);
            }
        }
    }
    


function main() {
    const n = parseInt(readLine().trim(), 10);

    fizzBuzz(n);
}