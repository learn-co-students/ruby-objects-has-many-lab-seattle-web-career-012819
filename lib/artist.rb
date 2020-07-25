require 'pry'
class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  # this artist's songs in an array
  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  # takes in song argument, associates that song with the artist by telling the song that it belongs to that artist
  def add_song(song)
    song.artist = self
  end

  # takes in song name argument, creates a new song with it and associates the song and artist
  def add_song_by_name(song_name)
    Song.new(song_name, self)
  end

  # returns the total number of songs associated to all existing artists
  def self.song_count
    Song.all.size
  end
end # end of class
