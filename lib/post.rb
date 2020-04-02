class Post
    attr_accessor :title, :author, :name
    @@all = []
    def initialize(title)
        @title = title
        Post.all << self
    end

    def self.all
        @@all
    end

    def author_name
        self.author.name
    end
end