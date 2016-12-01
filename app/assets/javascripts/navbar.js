function checkScroll(){
    var startY = $('.navbar-wagon.transparent').height() * 3;

    if($(window).scrollTop() > startY){
        $('.navbar-wagon.transparent').addClass("scrolled");
    }else{
        $('.navbar-wagon.transparent').removeClass("scrolled");
    }
}

$(function () {
  if($('.navbar-wagon.transparent').length > 0){
      $(window).on("scroll load resize", function(){
          checkScroll();
      });
  }
})
