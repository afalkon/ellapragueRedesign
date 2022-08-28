$(document).ready(function(){
    $('.tours__tabs--button').click(function(){
      var elemid = $(this).attr('id');
      console.log(elemid);
      $('.tours__tabs--button').removeClass('active').eq($(this).index()).addClass('active');
      $('.tours__tab').removeClass('active').eq($(this).index()).addClass('active');
    });

    // Slick carousel settings for "Tours" section
    $('.tours__tabs--slider').slick({
      dots: true,
      arrows: true
    });
    // Slick carousel settings for "Review" section
    $('.reviewBottom__slider').slick({
      dots: true,
      infinite: true,
      speed: 300,
      slidesToShow: 1,
      centerMode: true,
      variableWidth: true
    });
    // jQuery methods go here...
  
  });