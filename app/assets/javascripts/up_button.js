jQuery(document).ready(function() {
 
var offset = 250;
 
var duration = 300;
 
jQuery(window).scroll(function() {
 
if (jQuery(this).scrollTop() > offset) {
 
jQuery(‘.back_to_top’).fadeIn(duration);
 
} else {
 
jQuery(‘.back_to_top’).fadeOut(duration);
 
}
 
});
 
&nbsp;
 
jQuery(‘.back_to_top’).click(function(event) {
 
event.preventDefault();
 
jQuery(‘html, body’).animate({scrollTop: 0}, duration);
 
return false;
 
})
 
});