require 'rails_helper'


RSpec.feature "User can edit a playlist" do
scenario "User can update a playlist" do
  playlist = create(:playlist_with_songs)

  first, second, third = playlist.songs
  new_song = create(:song, title:"Ambitionz az a ridah")

visit playlist_path(playlist)
# _page
click_on "Edit"
assert_equal edit_playlist_path(playlist), current_path
# _page
uncheck("song-#{first.id}")
check("song-#{new_song.id}")
# _page
click_on "Update Playlist"

expect(page).to have_content playlist.name
expect(page).to have_content new_song.title


  end
end
