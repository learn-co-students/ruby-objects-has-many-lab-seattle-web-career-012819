class Author
  attr_accessor :name

  @@all = []
  @@post_count = 0

  def initialize(name)
    @name = name
    @posts = []
    @@all << self
  end

  def add_post(post)
    post.author = self
    @@post_count += 1
    @posts << post
  end

  def posts
    @posts
  end

  def add_post_by_title(title)
    newpost = Post.new(title)
    @posts << title
    newpost.author = self
    add_post(newpost)
  end


  def self.post_count
    @@post_count
  end

end
