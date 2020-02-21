// console.log("Let's tango! cha cha cha");
//
// const $links = $('li a');
// console.log($links);
//
// $('body').css({'background-color':'#E6D791'});
//
// for (let i = 0; i < $links.length; i++) {
//   const $link = $links.eq(i);
//   const url = $link.attr('href'); // url is not a jQuery element, so no $ needed on variable
//   const thumbnailUrl = youtube.generateThumbnailUrl(url);
//   const $image = $('<img>');
//   $image.attr('src', thumbnailUrl);
//   $link.prepend( $image );
// }



const thumbnailify = function ($link) {
    const url = $link.attr('href'); // url is not a jQuery element, so no $ needed on variable
    const thumbnailUrl = youtube.generateThumbnailUrl(url);
    const $image = $('<img>');
    $image.attr('src', thumbnailUrl);
    $link.prepend( $image );

    $link.on('click', function(event) {
      $('div#player').find('embed').remove();
      event.preventDefault();
      const $embed = $('<embed>');
      $embed.attr('src', youtube.generateEmbedUrl($(this).attr('href') ));
      console.log($embed);
      $('div#player').hide().append($embed).fadeIn(4000);
      console.log("WHAT UPP");
    })
}

const $links = $('li a');

for (let i = 0; i < $links.length; i++) {
  const $link = $links.eq(i);
  thumbnailify($link);
}

// $('li a').each(function () {
//   $(this).prepend(
//     $('<img>').attr('src', youtube.generateThumbnailUrl( $(this).attr('href') ));
//   );
// });
