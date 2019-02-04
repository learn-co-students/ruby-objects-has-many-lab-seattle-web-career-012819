require "pry"

class Artist
  attr_accessor :name, :songs

  def initialize(name)
    @name = name

    @songs = []
  end


  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    song.artist = self
  end

  def self.song_count
    Song.all.count

  end




end







































# require "pry"
#
# class Artist
#
# attr_accessor :name, :songs
#
#   def initialize(name, songs=[])
#     @name = name
#     @songs = songs
#
#   end
#
#   def add_song(song)
#     @songs << song
#     song.artist = self
#   end
#
#   def add_song_by_name(song_name)
#     self.add_song(Song.new(song_name))
#
#   end
#
#   def song_count
#     return self.artist.songs.count
#   end
#
#
# end
