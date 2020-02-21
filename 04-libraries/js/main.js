console.log("Let's tango! cha cha cha");

const links = document.querySelectorAll('li a');
console.log(links)

for (let i = 0; i < links.length; i++) {
  const url = links[i].getAttribute('href'); //links[i].href
  const thumbnailUrl = youtube.generateThumbnailUrl(url);
  links[i].setAttribute('src', thumbnailUrl);
  
  const embedUrl = youtube.generateEmbedUrl(url);
  const img = document.createElement('img');
  img.setAttribute('src', thumbnailUrl);
  links[i].appendChild(img);
  const embed = document.createElement('embed');
  embed.setAttribute('src', embedUrl);
  links[i].appendChild(embed);
}
