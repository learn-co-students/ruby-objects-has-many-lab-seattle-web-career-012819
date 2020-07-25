require "pry"

class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all
  end

  def add_song(song)
    song.artist=(self)
  end

  def add_song_by_name(name)
    self.add_song(Song.new(name))
  end

  def self.song_count
    #binding.pry
    Song.all.length
  end

  def artist_name
    #binding.pry
    if self.artist
      self.artist.name
    end
  end

end
