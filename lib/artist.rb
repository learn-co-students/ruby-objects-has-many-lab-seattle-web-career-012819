class Artist

  attr_accessor :name, :songs

  @@all = []
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def add_songs(song)
    song.artist = self
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_song_by_name(name)
    song = Song.new(name)
    self.add_song(song)
  end

  def self.song_count
    @@all.reduce(0) do |sum, artist|
      sum += artist.songs.length
    end
  end
end