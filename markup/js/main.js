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
    // jQuery methods go here...
  
  });