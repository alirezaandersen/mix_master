class Song < ActiveRecord::Base
  validates :title, presence: true
  belongs_to :artist
  has_many :playlists 
end
