# require 'pry'
# require_relative './artist.rb'

class Song
    attr_accessor :name, :artist

    @@all = []

    def initialize(name)
        @name = name
        Song.all << self
    end

    def self.all
        @@all
    end

    def artist_name
        return nil if !self.artist
        self.artist.name
    end
end

# binding.pry
