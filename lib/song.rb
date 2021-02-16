class Song 
    attr_accessor :name, :artist
    @@all = []
    def initialize(name)
        @name = name
        Song.all << self
    end

    def artist_name
        self.artist.name if self.artist
    end

    def self.all
        @@all
    end
end 