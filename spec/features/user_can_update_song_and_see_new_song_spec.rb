require 'rails_helper'

RSpec.feature "user_can_update_song_with_new_title" do
  scenario " user_can_update_song_title" do

    current_song_title = Song.create(title: "California Love")
    updated_song_title = "Thug Passion"

    visit song_path(current_song_title)

    click_on "Edit"

    fill_in "song_title", with: updated_song_title

    click_on "Update"
    save_and_open_page
    expect(page).to have_conent updated_song_title
    # expect(page).to have_link artist.name, href: artist_path(artist)
  end
end
