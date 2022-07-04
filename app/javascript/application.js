// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "./controllers"

import "jquery"
import "jquery_ujs"
import "popper"
import "bootstrap"

$(document).ready(function(){
  $("#error").click(function(){
    $(this).slideUp();
  });
});

$(document).ready(function(){
  $("#errors").click(function(){
    $(this).slideDown();
  });
});
