class Artist
  attr_writer :song
  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = [ ]
  end

  def add_songs(song)
    #@songs << song_name
    song.artist = self
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def add_song_by_name(song)
    song = Song.new(song)
    song.artist == self
  end

  def self.song_count
    Song.all.length
  end
end


class Song
end
