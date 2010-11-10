// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
jQuery(function($) {
  // when the #country field changes
  $("#profile_country_id").change(function() {
    // make a POST call and replace the content
    var country = $('select#profile_country_id :selected').val();
    if(country == "") country="0";
    jQuery.get('/profiles/update_state_select/' + country, function(data){
        $("#addressStates").html(data);
    })
    return false;
  });

})
