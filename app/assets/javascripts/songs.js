$(function(){
  $("form").submit(function(event){
    event.preventDefault();
  var action = $(this).attr('action');
  var method = $(this).attr('method');

  var name = $(this).find('#song_name').val();
  var duration =$(this).find('#song_duration').val();
  var release =$(this).find('#song_release').val();
  var album = $(this).find('#song_album').val();

  var data = $(this).serializeArray();
  $.ajax({
      method: method,
      url: action,
      data: data
      dataType: 'script'
    });
    
  });
});
