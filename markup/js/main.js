$(document).ready(function(){

    // Adding active classes to the first tab and tab button
    $('.tours__tabs--button:first-child').addClass('active');
    $('.tours__tab:first-child').addClass('active');

    // Tabs for "Tours" section
    $('.tours__tabs--button').click(function(){
      var elemid = $(this).attr('id');
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

    // Burger Menu script
    $('.header__burger').click(function(){
      const media500 = window.matchMedia('(min-width: 500px)');
      $(this).toggleClass('active');
      $('.header__menu').toggleClass('active');
      $('body').toggleClass('lock');
      if(media500.matches){
        $('.header__logo').toggleClass('active');
        $('.header').toggleClass('active');
      }
      $('.header__menu--link').click(function(){
        $('.header__burger').removeClass('active');
        $('.header__menu').removeClass('active');
        $('body').removeClass('lock');
        if(media500.matches) {
          $('.header__logo').removeClass('active');
          $('.header').removeClass('active');
        }
      });
    }); 

    // Getting button-tour id for contacts
    $('.tours__tabs--slide__link').click(function(){
      var dataId = $(this).attr("data-id");
      $('#contactsTourSelection').attr('value', dataId);

      var result = $('#contactsTourSelection').attr("value");
      console.log(result);
    });
    // jQuery methods go here...
    
  });