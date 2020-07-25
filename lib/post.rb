class Post
  attr_accessor :title, :author
  @@all = []

  def initialize(title, author=nil)
    @title = title
    @author = author
    @@all << self
  end

  # belongs to an author

  # knows the name of its author, returns nil if the post does not have an author
  def author_name
    if author
      author.name
    end
  end

  def self.all
    @@all
  end
end
