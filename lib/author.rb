require "pry"

class Author

  attr_accessor :name, :posts
  @@all = []

  def initialize (name)
    @name = name
    @posts = []

    @@all << self
  end

  def self.all
    @@all
  end

  def posts
    Post.all.select do |post|
      post.author == self
    end
  end

  def add_post (post)
    post.author = self
    @posts << post
  end

  def add_post_by_title (title)
    x = Post.new(title)
    x.author = self
    @posts << x
  end

  def self.post_count
    count = 0
    @@all.each do |author|
      count += author.posts.count
    end
    count
  end

end
