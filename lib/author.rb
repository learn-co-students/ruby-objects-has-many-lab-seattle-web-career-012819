class Author
  @@all = []
  @@post_count = 0
  attr_accessor :name, :posts
  def initialize(name)
    @name = name
    @posts = []
    @@all << self
  end

  def add_post(post)
    @posts << post
    @posts.last.author = self
    @@post_count += 1
  end

  def add_post_by_title(title)
    @posts << Post.new(title)
    @posts.last.author = self
    @@post_count += 1
  end

  def self.post_count
    @@post_count
  end
end