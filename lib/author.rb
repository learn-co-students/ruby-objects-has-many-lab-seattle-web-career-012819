class Author
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  # has many posts
  def posts
    Post.all.select do |post|
      post.author == self
    end
  end

  # takes in post argument, associates that post with the author by telling the post that it belongs to that author
  def add_post(post)
    post.author = self
  end

  # takes in a post title argument, creates a new post with it and associates the post and author
  def add_post_by_title(title)
    Post.new(title, self)
  end

  # class method that returns the total number of posts associated to all existing authors
  def self.post_count
    Post.all.size
  end
end # end of class
