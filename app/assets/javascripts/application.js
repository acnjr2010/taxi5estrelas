// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require jquery.easing
//= require scripts
//= require bootstrap-sprockets
//= require contact_me
//= require freelancer
//= require jqBootstrapValidation
//= require jquery.backstretch
//= require placeholder
//= require turbolinks
//= require ckeditor/init
//= require_tree .

$(document).ready(function(){
    // Activate Carousel
    $("#myCarousel").carousel({interval: 2500, pause: "hover"});
    // Enable Carousel Controls
    $(".left").click(function(){
        $("#myCarousel").carousel("prev");
    });
    $(".right").click(function(){
        $("#myCarousel").carousel("next");
    });

    $("#myCarousel_app").carousel({interval: 2500, pause: "hover"});
    // Enable Carousel Controls
    $(".left").click(function(){
        $("#myCarousel_app").carousel("prev");
    });
    $(".right").click(function(){
        $("#myCarousel_app").carousel("next");
    });
});


$(function() {
  $('a[href*="#"]:not(.carousel-control)').click(function() {
    if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
      var target = $(this.hash);
      target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
      if (target.length) {
        $('html, body').animate({
          scrollTop: target.offset().top
        }, 1000);
        return false;
      }
    }
  });
});
