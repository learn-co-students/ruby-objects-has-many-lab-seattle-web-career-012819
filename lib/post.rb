class Post

  attr_accessor :author
  attr_reader :title

  @@all = []

  def initialize(title, author = nil)
    @title = title
    @author = author

    @@all << self
  end

  def self.all
    @@all
  end

  def author_name
    self.author.name if self.author
  end

end #end of
