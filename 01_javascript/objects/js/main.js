console.log("Let's tango! cha cha cha");

// ## The Recipe Card
//
// Never forget another recipe!
//
// Create an object to hold information on your favorite recipe. It should have properties for title (a string), servings (a number), and ingredients (an array of strings).
//
// On separate lines (one console.log statement for each), log the recipe information so it looks like:
// - Mole
// - Serves: 2
// - Ingredients:
// - cinnamon
// - cumin
// - cocoa

const recipe = function() {
  const recipeCard = {
    title: "'Wobbly' Jelly",
    servings: 2,
    ingredients: ['Aeroplane Jelly powder', 'Hot water', 'Smirnoff Vodka']
  };
  console.log(`- ${recipeCard.title}`);
  console.log(`- Serves: ${recipeCard.servings}`);
  console.log(`- Ingrediants:`);
  console.log(recipeCard.ingredients.join('\n'));
  // for (let i = 0; i < recipeCard.ingredients.length; i++) {
  //   console.log(`- ${recipeCard.ingredients[i]}`);
  // };
}

recipe();

// ## The Reading List
//
// Keep track of which books you read and which books you want to read!
//
// - Create an array of objects, where each object describes a book and has properties for the title (a string), author (a string), and alreadyRead (a boolean indicating if you read it yet).
// - Iterate through the array of books. For each book, log the book title and book author like so: "The Hobbit by J.R.R. Tolkien".
// - Now use an if/else statement to change the output depending on whether you read it yet or not. If you read it, log a string like 'You already read "The Hobbit" by J.R.R. Tolkien', and if not, log a string like 'You still need to read "The Lord of the Rings" by J.R.R. Tolkien.'

const readingList = function() {
  const list = [];
  list.push(addBook("Alice's Adventures in Wonderland",'Lewis Carroll',true));
  list.push(addBook('The Meaning Of Life', 'Monty Python', false));
  for (let i = 0; i < list.length; i++) {
    console.log(`${list[i].title} by ${list[i].author}.`)
    console.log(toRead(list[i]));
  }
}

const addBook = function(titleString, authorString, alreadyReadBoolean) {
  const book = {
    title: titleString,
    author: authorString,
    alreadyRead: alreadyReadBoolean
  };
  return book;
};

const toRead = function(book) {
  if (!book.alreadyRead) {
    return `You still need to read "${book.title}" by ${book.author}.`;
  }
  return `You have already read "${book.title}" by ${book.author}.`
}

readingList();


// ## The Movie Database
//
// It's like IMDB, but much much smaller!
//
// - Create an object to store the following information about your favorite movie: title (a string), duration (a number), and stars (an array of strings).
// - Create a function to print out the movie information like so: "Puff the Magic Dragon lasts for 30 minutes. Stars: Puff, Jackie, Living Sneezes."

const favMovie = function() {
  const movie = {
    title: 'Pulp Fiction',
    duration: 'what feels like 10 hours..',
    stars: ["John Travolta", "Uma Thurman", "Samuel L. Jackson"]
  };
  printMovie(movie);
};

const printMovie = function(movie) {
  console.log(`${movie.title} lasts for ${movie.duration}. Stars: ${movie.stars.join(', ')}.`);
};

favMovie();
