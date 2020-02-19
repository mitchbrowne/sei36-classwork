console.log("is this thing on??");

// # Exercises: Variables
//
// ## The Fortune Teller
//
// Why pay a fortune teller when you can just program your fortune yourself?
//
// - Store the following into variables: number of children, partner's name, geographic location, job title.
const numberChildren = 3;
const partnerName = 'Gary';
const geoLocation = 'Long Reef';
const jobTitle = 'Coconut Grower';

//
const fortune = "You will be a", jobTitle, "in", geoLocation, ", and married to", partnerName, "with", numberChildren, "kids.";
console.log(fortune);
// - Output your fortune to the screen like so: "You will be a X in Y, and married to Z with N kids."
console.log("You will be a", jobTitle, "in" + geoLocation + ", and married to "
  + partnerName + " with " + numberChildren + " kids.")
// ## The Age Calculator
//
// Forgot how old someone is? Calculate it!
//
// - Store the current year in a variable.
var date = new Date()
const currentYear = date.getFullYear();
// - Store their birth year in a variable.
const birthYear = prompt("What is your birth year?");
// - Calculate their 2 possible ages based on the stored values.
const ageOne = currentYear - birthYear;
const ageTwo = (currentYear - birthYear) - 1;
// - Output them to the screen like so: "They are either NN or NN", substituting the values.
// using back ticks
console.log(`They are either ${ageOne} or ${ageTwo}.`);
//
// ## The Lifetime Supply Calculator
//
// Ever wonder how much a "lifetime supply" of your favorite snack is? Wonder no more!
//
// - Store your current age into a variable.
const currentAge = ageTwo;
// - Store a maximum age into a variable.
const maxAge = prompt("How old do you think you'll live till...?");
// - Store an estimated amount per day (as a number).
const amountPerDay = prompt("How many chocolate easter eggs do you eat a day? Be honest.");
// - Calculate how many you would eat total for the rest of your life.
const leftToLive = maxAge - currentAge;
const totalLifetime = (leftToLive * 365) * amountPerDay;
// - Output the result to the screen like so: "You will need NN to last you until the ripe old age of X".
console.log(`You will need ${totalLifetime} to last you until the ripe old age of ${maxAge}.`);
//
// ## The Geometrizer
//
// Calculate properties of a circle, using [the definitions here](http://math2.org/math/geometry/circles.htm).
//
// - Store a radius into a variable.
const radius = 23;
// - Calculate the circumference based on the radius, and output "The circumference is NN".
const circumference = Math.round(2 * (Math.PI * radius));
console.log(`The circumference is ${circumference}.`);
// - Calculate the area based on the radius, and output "The area is NN".
const area = Math.round(Math.PI * (radius ** 2)); // PI * r^2
console.log(`The area is ${area}`);
//
// ## The Temperature Converter
//
// It's hot out! Let's make a converter based on [the steps here](http://www.mathsisfun.com/temperature-conversion.html).
//
// - Store a celsius temperature into a variable.
const celsius = 45;
// - Convert it to fahrenheit and output "NN°C is NN°F".
const celsiusToFahrenheit = (((celsius * 9) / 5) + 32);
console.log(`${celsius}°C is ${celsiusToFahrenheit}°F.`)
// - Now store a fahrenheit temperature into a variable.
const fahrenheit = 125;
// - Convert it to celsius and output "NN°F is NN°C."
const fahrenheitToCelsius = (((fahrenheit - 32) * 5) / 9);
console.log()
