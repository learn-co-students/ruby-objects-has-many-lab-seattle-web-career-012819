class Song

  attr_accessor :artist
  attr_reader :name

  @@all = []

  def initialize(name, artist = nil)
    @name = name
    @artist = artist

    @@all << self
  end

  def self.all
    @@all
  end

  def artist_name
    self.artist.name if self.artist
  end

end #end of Song class
