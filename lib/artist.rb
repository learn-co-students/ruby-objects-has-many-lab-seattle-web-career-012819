class Artist
  attr_accessor :name, :songs

  def initialize(name)
    @name =name
    @songs=[]

  end

  def add_song(song_name)
    self.songs << song_name
    song_name.artist = self

  end

  def add_song_by_name(name)
    song = Song.new(name)
    self.songs << song
    song.artist = self
  end

  def self.song_count
    Song.all.count
  end

end

# hello = Song.new("Hello")
# adele.add_song(hello)
