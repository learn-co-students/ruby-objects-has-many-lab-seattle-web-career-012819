class Artist
    attr_accessor :name, :songs
    @@all_songs = []
    def initialize(name)
        @name = name
        @songs = []
    end

    def add_song(song)
        @songs << song
        song.artist = self
        @@all_songs << self
    end

    def add_song_by_name(title)
        new_song = Song.new(title)
        new_song.artist = self
        self.add_song(new_song)
    end

    def self.song_count
        @@all_songs.length
    end
end