class Author
  attr_accessor :name, :posts

  @@all = []

  def initialize(name)
    @name = name
    @posts = []
    @@all << self
  end

  def add_post(post)
    @posts << post
    post.author = self
  end

  def add_post_by_title(title)
    post = Post.new(title)
    @posts << post
    post.author = self
  end

  def self.post_count
    total = 0

    @@all.each do |element|
      total += element.posts.size
    end
    total
  end
end
