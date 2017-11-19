require 'rails_helper'

feature 'manage songs', js: true do
  scenario 'add a new song' do

    visit artist_songs_path(@artist_id, @songs)


    fill_in 'song_name', with: 'kinchacha'


    page.execute_script("$('form').submit()")


    expect(page).to have_content('kinchacha')

end

scenario 'delete one song' do
  visit artist_song_path(@artist, @song)
  fill_in 'song_name', with: 'nice'
  page.execute_script("$('.delete).remove()")



  expect(page.find(artists_path(@artist)).to eq -1)

end
end
