require 'rails_helper'


RSpec.feature "User can edit a playlist" do
scenario "User can update a playlist" do
  playlists = create_list(:playlist_with_songs, 3)
  new_song = create(:song, title:"Ambitionz az a ridah")

visit playlist_path(playlists)
save_and_open_page

click_on "Edit"
assert_equal edit_playlist_path(playlists), current_path
save_and_open_page
uncheck("song-#{first.id}")
check("song-#{new_song.id}")
save_and_open_page
click_on "Update Playlist"

expect(page).to have_content playlists.name


  end
end
