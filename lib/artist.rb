class Artist

  @@song_count = 0

  attr_accessor :name
  attr_reader :songs
  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song_name)
    @songs << song_name
    @songs.last.artist = self
    @@song_count += 1
  end

  def add_song_by_name(song_name)
    @songs << Song.new(song_name)
    @songs.last.artist = self
    @@song_count += 1
  end

  def self.song_count()
    @@song_count
  end
end