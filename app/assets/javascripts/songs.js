

function createSong(name, duration, release, album) {
  var newSong = { name: name, duration: duration, release: release, album: album};

  $.ajax({
    type: "POST",
    url: "/artists/show",
    data: JSON.stringify({
        song: newSong
    }),
    contentType: "application/json",
    dataType: "json"})

    .done(function(data) {
      console.log(data);



      var label = $('<label></label>')
        .html(name);
        var label = $('<label></label>')
        .html(duration);
        var label = $('<label></label>')
        .html(release);
        var label = $('<label></label>')
        .html(album);


      var tableRow = $('<tr class="songs"></td>')
        .append($('<td>').append(label));

      $("GetSongs").append(tableRow);
    })

    .fail(function(error) {
      console.log(error);

      error_message = error.responseJSON.title[0];
      showError(error_message);
    });
}

function showError(message) {
  $("#Song").addClass("error");
  var errorElement = $("<small></small>")
    .attr("id", "error_message")
    .addClass("error")
    .html(message);
  $(errorElement).appendTo('form .field');
}

function resetErrors() {
  $("#error_message").remove();
  $("#song_name").removeClass("error");
}

function submitSong(event) {
  event.preventDefault();
  resetErrors();
  createSong($("#Song_name").val());
  $("#Song_name").val(null);

}

function deleteAllSongs(event) {
  event.preventDefault();

  $.each($("#Song"), function(index, listItem) {
    $listItem = $(listItem);
    songId = $(listItem).data('id');
    deleteSong(songId);
    $listItem.remove();
  });
}

function deleteSong(songId) {
  $("#row").remove();
  $.ajax({
    type: "DELETE",
    url: "/artists/show" + songId + ".json",
    contentType: "application/json",
    dataType: "json"})

    .done(function(data) {

    });
}

$(document).ready(function() {

  $("form#new_song").bind('click', submitSong);
  $("#delete").bind('click', deleteAllSongs);

});
