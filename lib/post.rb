class Post
attr_accessor :author, :title
@@all = []

def initialize(title)
  @title = title
  @@all << self
end

def self.all
  @@all
end

def author_name
  if self.author == nil
    return nil
  else
    self.author.name
  end
end

end #end of post class
