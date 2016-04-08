require 'rails_helper'


RSpec.feature "User can view all artist" do
  scenario "they see the page for all the artist" do
    artists = %w(TuPac Janet_Jackson).map do |artist|
      Artist.create(name: artist, image_path: "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcR85YQiwNht2t7YsksPCRDz7XlAdluiXQhznhtyMTc8hoduoWF8Pw")
    end


    visit artists_path

    artists.each do |artist|
      expect(page).to have_link artist.name, href: artist_path(artist)
    end
  end
end


#notes -
#line 13 represents each artist to show up. expect page for artist.name
#does not work. Don't really know why.

#line 6. to create multiple artist the block create an array for it return 2 artist
#this then ties into line 13 where each artist has to be shown a link. Confusion is why
#have_content artist doesn't work?
