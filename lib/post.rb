class Post
  attr_accessor :author, :title

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def author_name
    author.nil? ? nil : @author.name
  end

def self.all
  @@all
end


end
