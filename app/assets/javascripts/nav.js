$(document).ready(function() {

  // $('li.nav').on('click', 'li', function(){
  //   $('nav active').removeClass('active');
  //   console.log(this);
  //   $(this).addClass('active');
  // });

 	$('.parallax').parallax();
  $('#ilm_description').val();
  $('#ilm_description').trigger('autoresize');
  // $('.tooltipped').tooltip({postiton:right});

 	$('.modal-trigger').leanModal();
 	  // Initialize collapse button
  $(".button-collapse").sideNav();
  // Initialize collapsible (uncomment the line below if you use the dropdown variation)
  //$('.collapsible').collapsible();
  $('.carousel.carousel-slider').carousel({full_width: true});
  $('select').material_select();
  $('select').material_select('destroy');

  $("#nav-mobile").html($("#nav-main").html());
        $("#nav-trigger span").click(function(){
            if ($("nav#nav-mobile ul").hasClass("expanded")) {
                $("nav#nav-mobile ul.expanded").removeClass("expanded").slideUp(250);
                $(this).removeClass("open");
            } else {
                $("nav#nav-mobile ul").addClass("expanded").slideDown(250);
                $(this).addClass("open");
            }
        });
});