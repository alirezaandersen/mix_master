class ArtistsController < ApplicationController

  def index

  end

  def new

  end

  def create
    @artist = Artist.create(artist_params)
    redirect_to @artist
  end

  def show

  end 


  private

  def artist_params
    params.require(:artist).permit(:name, :image_path)
  end

end
