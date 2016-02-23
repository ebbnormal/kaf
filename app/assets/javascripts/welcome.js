jQuery(document).ready(function(){
    var display= false;
  
    $('.about-link').click(function(e){
       //TODO first disable link

       e.preventDefault();

       //Then toggle display of .about
       //$( ".about" ).toggle( display );
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
