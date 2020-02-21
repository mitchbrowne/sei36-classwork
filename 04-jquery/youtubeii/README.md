# Exercise 1

## Making a Video Player with the DOM API

In this exercise, you'll be turning the below list of linked titles into a list of linked thumbnails, using JavaScript DOM manipulation and the functions from the youtube.JS library [read documentation](https://www.teaching-materials.org/_deprecated/jquery/youtube_doc.html).

```html
<!doctype html>
<html>
  <head>
    <meta charset="utf-8">
   <title>Video Watcher</title>
  </head>
  <body>

    <div class="container">
      <h2 class="page-header">Best Videos Ever ❤</h1>
      <ul>
        <li><a href="https://www.youtube.com/watch?v=TddFnTB_7IM">Trip through the 80s</a></li>
        <li><a href="https://www.youtube.com/watch?v=epUk3T2Kfno">Otters Holding Hands</a></li>
        <li><a href="https://www.youtube.com/watch?v=il2IrgFHfsg">The Ooooh Cat</a></li>
      </ul>
    </div>

    <script type="text/javascript" src="http://www.teaching-materials.org/common/youtube.js"></script>
  </body>
</html>
```

### Step by Step:
- Create an array of every link on the page using document.querySelectorAll(cssSelector)
- Iterate through the array. In each iteration of the loop:

    - Find the current href using [element.getAttribute(name)](https://developer.mozilla.org/en-US/docs/DOM/element.getAttribute), and store into a variable
    - Generate a thumbnail URL using [youtube.generateThumbnailUrl(videoUrl)](http://www.teaching-materials.org/jquery/youtube_doc.html)
    - Create an IMG element using [document.createElement(tagName)](https://developer.mozilla.org/en-US/docs/DOM/document.createElement)
    - Set the "src" of the IMG element using [element.setAttribute(name, value)](https://developer.mozilla.org/en-US/docs/DOM/element.setAttribute)
    - Append the IMG to the link using [element.appendChild(element)](https://developer.mozilla.org/en-US/docs/DOM/Node.appendChild)

Quick Tip: If you need a refresher on the DOM API, check out slides 1-12 from the [DOM Review here](http://www.teaching-materials.org/jsdom/)


# Exercise: jQuery Events & Animation

In this exercise, you'll add code to the so that you can actually watch the videos on the page.

Start with your code from the jQuery workshop.

- In the body of your HTML, create a ```<div>``` to hold the video player, either below or to the side of the list, and give it an id.
- In the script tag that you were working in before, create a thumbnailify() function that takes a single argument.
- Move the code that is currently inside your for loop into that thumbnailify() function.
- Change the contents of your function so that it uses a single argument, which is a jQuery object that represents an `<a>`, rather than an array of elements.
- Move the for loop so that it occurs after you define thumbnailify()
- Call thumbnailify() from inside your for loop.
- Make sure your player first works like it did before. Hint: you should only reference an array index from inside of the for loop.
- Now, in the thumbnailify() function, add a click listener to the link. We recommend using an anonymous function for the callback (not a named function). Put a console.log inside the callback to make sure it works.
- In the click listener callback, you will be using the "create and store, manipulate, inject" pattern to display an embedded video in the DIV you created.
- To find out what the code for an embedded Youtube video looks like, go to Youtube.com and find any embed code for a video.
- You can use youtube.generateEmbedUrl() from the youtube.js library to generate an embed URL.
- Use string concatenation, .html(), or other jQuery method of your choice to assemble and insert the embedded video element.
- Check your work! Try all your video links. Is there anything you need to change?
- As a bonus, try to make the video watcher ```<div>``` fade in using jQuery.
- Make sure that you use your browser developer tools to make debugging easier while working on this. Check for errors, and use console.log() to figure out how far your code makes it, and what the values of your variables are along the way.
