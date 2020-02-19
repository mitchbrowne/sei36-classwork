console.log("HELLO");

let pageNode = document.body;
pageNode.style.fontFamily = "Arial, sans-serif";
pageNode.style.backgroundColor = "pink";

document.querySelector('#nickname').innerHTML = "thickie";
document.querySelector('#favorites').innerHTML = "music, train lines, blurred lines";
document.querySelector('#hometown').textContent = "ibiza";

liNode = document.getElementsByTagName('li');

for (let i = 0; i < liNode.length; i++) {
  liNode[i].className = "listitem";
  // liNode[i].style.color = 'red'
  document.querySelectorAll('.listitem')[i].style.color = 'red';
};

let newImg = document.createElement('img');
newImg.src = "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTioT0b6ai2L2kMK_GPltpYBKrHsLAAChI0NFFG64WI-8CBz6Cj";
pageNode.append(newImg);
