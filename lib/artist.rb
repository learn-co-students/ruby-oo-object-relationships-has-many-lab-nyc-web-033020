class Artist
  attr_accessor :name
  def initialize(name)
    @name = name
    @songs = [ ]
  end

  def add_songs(song)
    @songs << song
    #song.artist = self
  end

  def songs
    Song.all.select{|song|song.artist == self}
  end

  def add_song_by_name(song_name)
    @songs[self.name] ||= song_name
  end

  def self.song_count
    @songs.count
  end
end
