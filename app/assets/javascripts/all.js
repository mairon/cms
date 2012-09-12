//botao sobe topo

$(function() {
  $(window).scroll(function() {
    if($(this).scrollTop() != 0) {
      $('#toTop').fadeIn(); 
    } else {
      $('#toTop').fadeOut();
    }
  });
 
  $('#toTop').click(function() {
    $('body,html').animate({scrollTop:0},800);
  }); 
});

//botao sobe on page
jQuery(document).ready(function() {
  
  var scrollWin = function (selector) {
      jQuery('html, body').animate({
      scrollTop: jQuery(selector).offset().top - 90
      }, 1500);
    }
    
    jQuery("[href^=#]").click(function(e) {
      scrollWin (jQuery(this).attr("href"));
      return false;
    });

});

//sobe home
$(function() {
 
  $('#about').click(function() {
    $('body,html').animate({scrollTop:0},1500);
  }); 
});

//slide
 $(function(){
    });
    $(window).load(function(){
      $('.flexslider').flexslider({
        animation: "slide",
        start: function(slider){
          $('body').removeClass('loading');
        }
      });
    });