require 'rails_helper'


RSpec.feature "user will see title cannot be blank if they did not enter title" do
  scenario "user will see 'title cannot be blank' " do

    artist = Artist.create(name: "Scott Firestone", image_path: "http://cps-static.rovicorp.com/3/JPG_400/MI0003/146/MI0003146038.jpg")

    visit artist_path(artist)

    click_on "New Song"

    click_on "Create Song"

    expect(page).to have_content "Title cannot be blank"
  end
end
