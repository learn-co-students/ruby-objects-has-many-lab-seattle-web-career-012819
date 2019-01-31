require 'pry'

class Artist
    attr_accessor :name, :songs

    @@all = []
    @@total_song_count = 0

    def initialize(name)
        @name = name
        @songs = []
        @@all << self
    end

    def add_song(song)
        song.artist = self
        @songs << song
        @@total_song_count += 1
    end

    def add_song_by_name(name)
        song = Song.new(name)
        self.add_song(song)
    end

    def self.song_count
        @@total_song_count
    end
    
end

#create another class variabls @@count. Each time a new song is created, increment the class counter by 1.