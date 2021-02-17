'use strict';

const fs = require('fs');

process.stdin.resume();
process.stdin.setEncoding('utf-8');

let inputString = '';
let currentLine = 0;

process.stdin.on('data', inputStdin => {
    inputString += inputStdin;
});

process.stdin.on('end', _ => {
    inputString = inputString.replace(/\s*$/, '')
        .split('\n')
        .map(str => str.replace(/\s*$/, ''));

    main();
});

function readLine() {
    return inputString[currentLine++];
}

// Complete the sockMerchant function below.
function sockMerchant(n, ar) {

    // Obtain the number (n) of socks in pile
    // Obtain the different colors (integers) in pile
    // Sort colors (integers) from smallest to largest
    // Set pairCount to zero
    // Use loop function to compare if colors (integers) match and increase pairCount by 1
    // If numbers do not match then loop goes to next highest color (integer)
    // Return pairCount
    
    // Sort colors (integers from smallest to largest)
    let sortedColors = ar.sort((a,b) => a-b);
    // Set pairCount to zero
    let pairCount = 0; 
    
    // Set i to zero, array length will be the provided integer (n) minus one
    for (let i = 0; i < n-1 ; i++ ) {
        // Compare index [i] to next index [i+1]
        if (sortedColors[i] === sortedColors[i+1]) {
            // If both index [i] and index [i+1] match then increase pairCount by 1
            pairCount++;
            // If match occurs then i++ to jump to the next index
            // This prevents new pairs with already paired colors (integers) 
            i++;
        }    
    }
    // Return pairCount
    return pairCount;
}

// === End function input  ===

function main() {
    const ws = fs.createWriteStream(process.env.OUTPUT_PATH);

    const n = parseInt(readLine(), 10);

    const ar = readLine().split(' ').map(arTemp => parseInt(arTemp, 10));

    let result = sockMerchant(n, ar);

    ws.write(result + "\n");

    ws.end();
}
