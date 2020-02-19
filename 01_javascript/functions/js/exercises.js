console.log("Is this thing on??")
//
// # Exercises: Functions
//
// ## The Fortune Teller
//
// Why pay a fortune teller when you can just program your fortune yourself?
//
// Write a function named tellFortune that:
// - takes 4 arguments: number of children, partner's name, geographic location, job title.
// - outputs your fortune to the screen like so: "You will be a X in Y, and married to Z with N kids."
// - Call that function 3 times with 3 different values for the arguments.

const tellFortune = function(children, partner, location, job) {
  const fortune = `You will be a ${job} in ${location}, and married to ${partner} with ${children} kids.`
  console.log(fortune);
};

tellFortune(3, 'mitch', 'sydney', 'cheese');

// ## The Puppy Age Calculator
//
// You know how old your dog is in human years, but what about dog years? Calculate it!
//
// Write a function named calculateDogAge that:
// - takes 1 argument: your puppy's age.
// - calculates your dog's age based on the conversion rate of 1 human year to 7 dog years.
// - outputs the result to the screen like so: "Your doggie is NN years old in dog years!"
// - Call the function three times with different sets of values.
// - Bonus: Add an additional argument to the function that takes the conversion rate of human to dog years.

const calculateDogAge = function(age, humanToDogYearsRatio=7) {
  const message = `Your doggie is ${ age * humanToDogYearsRatio } years old in dog years!`;
  return message;
};

console.log(calculateDogAge(9));
console.log(calculateDogAge(9, 10.5));
console.log(calculateDogAge(21));

// ## The Lifetime Supply Calculator
//
// Ever wonder how much a "lifetime supply" of your favorite snack is? Wonder no more!
//
// Write a function named calculateSupply that:
// - takes 2 arguments: age, amount per day.
// - calculates the amount consumed for rest of the life (based on a constant max age).
// - outputs the result to the screen like so: "You will need NN to last you until the ripe old age of X"
// - Call that function three times, passing in different values each time.
// - Bonus: Accept floating point values for amount per day, and round the result to a round number.

const calculateSupply = function(age, amountPerDay) {
  const deathAge = 90;
  const daysPerYear = 365.25;
  const amountPerYear = amountPerDay * daysPerYear;
  const yearsRemaining = deathAge - age;
  const amountRequired = amountPerYear * yearsRemaining;
  // Math.round rounds up or down
  // Math.floor rounds down
  // Math.ceil rounds up
  console.log(`You will need ${Math.ceil(amountRequired)} to last you until the ripe old age of ${deathAge}.`);
};

calculateSupply(36, 5);

// ## The Geometrizer
//
// Create 2 functions that calculate properties of a circle.
//
// Create a function called calcCircumfrence:
//
// - Pass the radius to the function.
// - Calculate the circumference based on the radius, and output "The circumference is NN".
//
// Create a function called calcArea:
//
// - Pass the radius to the function.
// - Calculate the area based on the radius, and output "The area is NN".

const calcCircumfrence = function(radius) {
  const circumference = 2 * radius * Math.PI;
  console.log("The circumference is", circumference); // will print to console, and produce a value
  return circumference;
};

calcCircumfrence(1);

const calcArea = function(radius) {
  const area = Math.PI * radius * radius;
  console.log("The area is", area);
  return area;
};

calcArea(1);

// ## The Temperature Converter
//
// It's hot out! Let's make a converter.
//
// Create a function called celsiusToFahrenheit:
// - Store a celsius temperature into a variable.
// - Convert it to fahrenheit and output "NN°C is NN°F".
// - Create a function called fahrenheitToCelsius:
//
// Now store a fahrenheit temperature into a variable.
// - Convert it to celsius and output "NN°F is NN°C."

const celsiusToFahrenheit = function(celsius) {
  const fahrenheit = celsius * 1.8 + 32;
  console.log(`${celsius}°C is ${fahrenheit}°F`);
  return fahrenheit;
};

celsiusToFahrenheit(20);

const fahrenheitToCelsius = function(fahrenheit) {
  const celsius = (fahrenheit - 32) / 1.8;
  console.log(`${fahrenheit}°F is ${celsius}°C`);
  return celsius;
};

fahrenheitToCelsius(68);

console.log(fahrenheitToCelsius( celsiusToFahrenheit(20) ));
