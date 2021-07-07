require 'pry'
require_relative './song.rb'

class Artist
    attr_accessor :name

    @@artists = []

    def initialize(name)
        @name = name
        Artist.all << self
    end

    def self.all
        @@artists
    end

    def songs
        Song.all.filter {|song| song.artist == self}
    end
    
    def add_song(song)
        song.artist = self
    end

    def add_song_by_name(song_name)
        song = Song.new(song_name)
        song.artist = self
    end
    
    def self.song_count
        Song.all.count {|song| song.artist_name }
    end
end

# binding.pry