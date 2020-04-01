class Post
  @@all = []
  attr_accessor :title, :author

  def initialize(title)
    @title = title
    save
  end

  def self.all
    @@all
  end

  def save 
    @@all << self
  end
  
  def author_name
    return nil if @author == nil
    @author.name
  end
end
