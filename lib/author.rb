class Author
    attr_accessor :name, :posts

    def initialize(name)
        @name = name
    end

    def posts
        Post.all.select {|title| title.author == self}
    end

    def add_post

    end

    def add_post_by_title

    end

    def post_count
        Post.all.count
    end
end