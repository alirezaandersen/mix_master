require 'rails_helper'

RSpec.feature "User can delete a artist" do
  scenario "User deletes an artist" do
    artist = Artist.create(name: "Justin Bieber", image_path: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0-JJa0llowNhCVU4asxO7sI8e6nqyBTANoUQoN6z1OyFUTUKI")

  visit artist_path(artist)
  click_on "Delete"

  expect(page).to_not have_content artist.name
  expect(page).to_not have_css("img[src=\"#{artist.image_path}\"]")
  end
end
