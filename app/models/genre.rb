class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.count
  end

  def artist_count
    self.artists.count# return the number of artists associated with the genre
  end

  def all_artist_names
    artist_names = self.artists.first.name
    binding.pry
    artist_names.each do |n|
      n 
    end
  end
end
