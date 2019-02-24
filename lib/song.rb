class Song
  attr_accessor :name, :artist

  # @@all is a class variable set to an array
  @@all = []

  def initialize(name, artist=nil)
    @name = name
    @artist = artist
    @@all << self
  end

  # knows the name of the artist, returns nil if the song doesn't have an artist
  def artist_name
    if artist
      artist.name
    end
  end

  # returns an array of all song instances
  def self.all
    @@all
  end
end # end of class
