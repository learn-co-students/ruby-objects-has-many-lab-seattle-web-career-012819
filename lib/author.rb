class Author
  attr_accessor :name, :posts
  def initialize (name)
    @name=name
    @posts =[]
  end

  def add_post(post_name)
    self.posts << post_name
    post_name.author = self
  end

  def add_post_by_title(name)
    new_post = Post.new(name)
    @posts << new_post
    new_post.author = self
  end

  def self.post_count
      Post.all.count
    end
end
