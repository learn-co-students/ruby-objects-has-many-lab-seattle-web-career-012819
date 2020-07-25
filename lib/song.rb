class Song
    attr_accessor :title, :artist
    @@all = []
    def initialize(title)
        @title = title
        @artist

        @@all << self
    end

    def name
        @title
    end

    def self.all
        @@all
    end

    def artist_name
        if @artist
            @artist.name
        end
    end
end