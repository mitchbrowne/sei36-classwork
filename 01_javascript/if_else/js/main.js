console.log("Let's tango! cha cha cha");
//
//
// ## What number's bigger?
//
// Write a function named greaterNum that:
// - takes 2 arguments, both numbers.
// - returns whichever number is the greater (higher) number.
// - Call that function 2 times with different number pairs, and log the output to make sure it works (e.g. "The greater number of 5 and 10 is 10.").

const greaterNum = function(num1, num2) {
  return (num1 > num2) ? num1 : num2;
};

console.log(greaterNum(5, 10));

// ## The World Translator
//
// Write a function named helloWorld that:
// - takes 1 argument, a language code (e.g. "es", "de", "en")
// - returns "Hello, World" for the given language, for atleast 3 languages. It should default to returning English.
// - Call that function for each of the supported languages and log the result to make sure it works.

const helloWorld = function(code) {
  if (code === 'es') {
    return "Hola Mundo!!!";
  } else if (code === 'de') {
    return "Dutch Hello";
  }
  return "Hello World";
};

console.log(helloWorld('es'));
console.log(helloWorld('de'));
console.log(helloWorld('en'));

// ## The Grade Assigner
//
// Write a function named assignGrade that:
// - takes 1 argument, a number score.
// - returns a grade for the score, either "A", "B", "C", "D", or "F".
// - Call that function for a few different scores and log the result to make sure it works.

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

console.log(assignGrade(78));
console.log(assignGrade(101));

// ## The Pluralizer
//
// Write a function named pluralize that:
// - takes 2 arguments, a noun and a number.
// - returns the number and pluralized form, like "5 cats" or "1 dog".
// - Call that function for a few different scores and log the result to make sure it works.
// - Bonus: Make it handle a few collective nouns like "sheep" and "geese".

const pluralize = function(noun, number) {
  const word = (number > 1) ? (noun + 's') : noun;
  return number +" "+word;
};

console.log(pluralize('cat', 5));
console.log(pluralize('dog', 1));
