class Author

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def add_post(post)
    post.author = self
  end

  def posts
    Post.all.select{|post| post.author == self}
  end

  def add_post_by_title(post_title)
    Post.new(post_title,self)
  end

  def self.post_count
    Post.all.select{|post| @@all.include?(post.author)}.count
  end

end #end of Author class
