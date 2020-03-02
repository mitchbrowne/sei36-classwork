$(document).ready(function() {

  $('#name').on('focus', function() {
    $('header').addClass('active');
  }).on('blur', function() {
    $('header').removeClass('active');
  }).on('keyup', function() {
    const input = $(this).val();
    $('header h1').text(`Welcome ${input}`);
  });

  const $bill = $('img'); // Cacheing
  $(window).on('mousemove', function(event) {
    const opacity = event.clientY / window.innerHeight;
    $bill.css('opacity', opacity);
  });

  const randomColor = function(color) {
    return color * 255;
  }

  const $body = $('body');
  $(window).on('mousemove', function() {
    const color = event.clientY / window.innerHeight;
    const colorTwo = event.clientX / window.innerWidth;
    const bgColor = `rgb(${randomColor(color)}, ${randomColor(colorTwo)}, 255)`;
    $body.css('background-color', bgColor);
  });


$(document).ready(function() {
  console.log("HEY");
  let $w = $(window);
  let $b = $('#bill');

  let lastScrollTop = $w.scrollTop();

  let _x = 0;
  let _y = 0;

  $(window).scroll(function(event) {
    let st = $w.scrollTop();
    console.log(st);
    _x = st;
    _y = 2*st;

    lastScrollTop = st;

    $b.css('bottom', _y);
  })

});



});
