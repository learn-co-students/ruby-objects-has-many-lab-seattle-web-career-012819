class Artist
  attr_accessor :name, :songs

def initialize(name)
  @name = name
  @songs = []
end

def add_song(song)
  song.artist = self
  self.songs << song
end

def add_song_by_name(song_name)
  s1 = Song.new(song_name)
  s1.artist = self
  self.songs << s1
end

def self.song_count
  Song.all.count
end


end   #class end
