class Artist

    attr_accessor :name
    def initialize(name)
        @name=name

    end

    def songs
        Song.all
    end


    def add_song(song)
        Song.new(song)
        song.artist = self
    end

    def add_song_by_name(name)
        add_song(name)
    end
end
