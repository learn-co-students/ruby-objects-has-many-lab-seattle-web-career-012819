class Song
    @@all = []
    attr_accessor :name, :artist
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def artist_name
        @artist.nil? ? nil : @artist.name
        #why is this using @artist?
    end

end