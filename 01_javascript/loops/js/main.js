console.log("Let's tango! cha cha cha");

// ## The even/odd reporter
//
// Write a for loop that will iterate from 0 to 20. For each iteration, it will check if the current number is even or odd, and report that to the screen (e.g. "2 is even").

const evenOdd = function() {
  for (let i = 0; i <= 20; i++) {
    let result = (i % 2 === 0) ? 'even' : 'odd';
    console.log(`${i} is ${result}`);
  }
};

evenOdd();

// ## Multiplication Tables
//
// Write a for loop that will iterate from 0 to 10. For each iteration of the for loop, it will multiply the number by 9 and log the result (e.g. "2 * 9 = 18").
//
// Bonus: Use a nested for loop to show the tables for every multiplier from 1 to 10 (100 results total).

const multiply = function() {
  for (let i = 0; i <= 10; i++) {
    array = [];
    for (let l = 0; l <= 10; l++) {
      array.push(i*l);
    }
    console.log(array);
  }
};

multiply();

// ## The Grade Assigner
//
// Check the results of assignGrade function from the conditionals exercise for every value from 60 to 100 - so your log should show "For 89, you got a B. For 90, you got an A.", etc.

const assignGrade = function(score) {
  let grade;
  if (score > 100 || score < 0) {
    grade = "Not a valid score."
  } else if (score >= 90) {
    grade = "A";
  } else if (score >= 80) {
    grade = "B";
  } else if (score >= 70) {
    grade = "C";
  } else if (score >= 50) {
    grade = "D";
  } else if (score >= 0) {
    grade = "F";
  }
  return grade;
};

const grade = function() {
    for (let i = 60; i <= 100; i++) {
      console.log(`For ${i}, you got a ${assignGrade(i)}`);
    }
};

grade();
