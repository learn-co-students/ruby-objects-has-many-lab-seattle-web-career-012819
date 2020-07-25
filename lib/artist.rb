class Artist

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def add_song(song)
    song.artist = self
  end

  def songs
    Song.all.select{|song| song.artist == self}
  end

  def add_song_by_name(song_name)
    Song.new(song_name,self)
  end

  def self.song_count
    Song.all.select{|song| @@all.include?(song.artist)}.count
  end

end #end of Artist class
