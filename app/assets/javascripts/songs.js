$(function(){
  $("form").submit(function(event){
    event.preventDefault();
    debugger;
  });
});
  var action = $(this).attr('action');
  var method = $(this).attr('method');

  var name = $(this).find('#song_name').val();
  var duration =$(this).find('#song_duration').val();
  var release =$(this).find('#song_release').val();
  var album = $(this).find('#song_album').val();

  var data = $(this).serializeArray();
  $.ajax({
      method: method,
      url: action + ".json",
      data: JSON.stringify( data),
      contentType: "application/json",
      dataType: "json"
    });

    $('#list').append(data)
  });
});

  $(document).on('click','.deletesong', function() {
debugger;
  var songId = $(this).attr('data-song-id');
  var action = $(this).attr('action');
  var method = $(this).attr('method');


$.ajax({
    type: 'DELETE',
    url: "/artists/artist" + songId+ ".json",
    data: JSON.stringify(songId),
    contentType: "application/json",
    dataType: "json",
    success: function(){
           $('#list' + songId).fadeOut;
       }
       });
      });

 $(document).bind('click',"#delete",deleteSong);
   $(document).bind('submit',"form"), submitSong);
