class Post
  attr_reader :title, :author
  @@all = [ ]
  def initialize(title, author)
    @title = title
    @author = author 
    @@all << self
  end
end
