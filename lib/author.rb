require 'pry'
require_relative './post'

class Author
  attr_accessor :name, :posts

  @@all = []

  def initialize(name = nil)
    @name = name
    @posts = []
  end

  def add_post(post)
    @posts << post
    post.author = self
    @@all << self
  end

  def add_post_by_title(title)
    post = Post.new(title)
    add_post(post)
  end

  def self.post_count
    @@all.count
  end
end
# binding.pry
