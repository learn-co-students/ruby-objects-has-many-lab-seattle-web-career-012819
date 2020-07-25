class Author
    attr_accessor :name, :posts
    @@all_posts = []
    def initialize(name)
        @name = name
        @posts = []
    end

    def add_post(post)
        @posts << post
        post.author = self
        @@all_posts << post
    end

    def add_post_by_title(title)
        new_post = Post.new(title)
        new_post.author = self
        self.add_post(new_post)
    end

    def self.post_count
        @@all_posts.length
    end
end