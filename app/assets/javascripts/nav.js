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
  $('.materialboxed').materialbox();

 	$('.modal-trigger').leanModal();
 	  // Initialize collapse button
  $(".button-collapse").sideNav();
  // Initialize collapsible (uncomment the line below if you use the dropdown variation)
  //$('.collapsible').collapsible();

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


$(window).load(function() {
    $('.modal-trigger').leanModal();
  });


});