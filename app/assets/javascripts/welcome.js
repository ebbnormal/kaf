jQuery(document).ready(function(){
    var display= false;
  
    $('.about-link').click(function(e){
       if (display == false){
         $(".about").show();
         display = true;
      }
      else{
         $(".about").hide();
         display = false;
      }
    });

});
