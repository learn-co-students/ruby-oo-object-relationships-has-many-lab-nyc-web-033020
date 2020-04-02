class Artist

    attr_accessor :name, :artist
    def initialize(name)
        @name=name

    end

    def songs
        Song.all
    end


    def add_song(song)
        song.artist = self
    end

    def add_song_by_name(song)
        add_song(Song.new(song))
    end

    def self.song_count
        Song.all.count
    end

end
