class Post
  attr_accessor :author
  attr_reader :title

  @@all = []
  
  def initialize(title)
    @title = title
    Post.all << self
  end

  def self.all
    @@all
  end

  def author_name
    return nil if !self.author
    self.author.name
  end
end