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

// Complete the hourglassSum function below.
function hourglassSum(arr) {
    
    // i = row, j = column
    // Constraints
    // -9 <= arr[row][column] <= 9
    // 0 <= row, column <= 9
    // Array is 6x6 which is equal to 36 values
    // Return maximum hourglass sum
      
    // Determine how hourglass is defined 
    // Row 1 is determined first 
    // Row 1 & Column 1-3 is determined for top of hourglass
    // Row 2 & Column 2 is determined for middle of hourglass
    // Row 3 & Column 1-3 is determined for bottom of hourglass
    
    // Begin with empty array for Hourglass      
    let hourglassTotal = [];
    
    // let row = 0;
    for (let row = 0; row <= 3; row++) {
        // let column = 0;
        for (let column = 0; column <= 3; column++) {
            
            // Hourglass sum equal to zero
            let sum = 0;
            
            // Sum for top of hourglass
            sum = sum + arr[row][column];
            sum = sum + arr[row][column +1];
            sum = sum + arr[row][column +2];
    
            // Sum for middle of hourglass
            sum = sum + arr[row +1][column+1];
    
            // Sum for bottom of hourglass
            sum = sum + arr[row +2][column];
            sum = sum + arr[row +2][column+1];
            sum = sum + arr[row +2][column+2];
            
            // Add sum to hourglassTotal
            hourglassTotal.push(sum);
        }
    }   
    
    // Return max of hourglassTotal
    return (hourglassTotal.length >0) ? Math.max (...hourglassTotal) : 0;
}

// === End function input  ===

function main() {
    const ws = fs.createWriteStream(process.env.OUTPUT_PATH);

    let arr = Array(6);

    for (let i = 0; i < 6; i++) {
        arr[i] = readLine().split(' ').map(arrTemp => parseInt(arrTemp, 10));
    }

    let result = hourglassSum(arr);

    ws.write(result + "\n");

    ws.end();
}