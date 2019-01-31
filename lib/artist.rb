require "pry"

class Artist

  attr_accessor :name, :songs
  @@all = []

  def initialize (name)
    @name = name
    @songs = []

    @@all << self
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def add_song (song)
    @songs << song
    song.artist = self
  end

  def add_song_by_name (song_name)
    x = Song.new(song_name)
    x.artist = self
    @songs << x
  end

  def self.song_count
    count = 0
    @@all.each do |artist|
      count += artist.songs.count
    end
    count
  end

end
