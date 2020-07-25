class Post
  attr_accessor :title, :author
  @@all=[]
  def initialize(name)
    @title=name
    @@all << self
  end

  def self.all
    @@all
  end

  def author_name
    if !self.author
      nil
    else
      self.author.name
    end

  end
end#end of the class
