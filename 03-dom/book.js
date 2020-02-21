console.log("HEY");

var books = [
  {title: 'The Design of EveryDay Things',
   author: 'Don Norman',
   alreadyRead: false
  },
  {title: 'The Most Human Human',
  author: 'Brian Christian',
  alreadyRead: true
  }];

const ul = document.createElement('ul');


for (let i = 0; i < books.length; i++) {
  const book = books[i];
  const bookInfo = `${book.title} by ${book.author}.`

  const li = document.createElement('li');
  li.innerHTML = bookInfo;

  if (book.alreadyRead) {
    li.className = 'read';
  }

  ul.appendChild(li);

};

document.body.appendChild(ul); // perform afterwards to minimise amount of DOM manipulation
console.log(ul);
