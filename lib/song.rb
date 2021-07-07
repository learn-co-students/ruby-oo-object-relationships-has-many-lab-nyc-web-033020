class Song

  attr_reader  :name
  attr_accessor :artist

  @@all = []

  def initialize(name)
    @name = name
    Song.all << self
  end

  def self.all
    @@all
  end

  # def artist= (name)
  #   @artist = nil
  # end

  def artist_name
    artist.name if artist
  end



end