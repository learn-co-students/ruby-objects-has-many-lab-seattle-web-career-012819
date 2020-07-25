require "pry"

class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end

  def artist_name
    if self.artist
      self.artist.name
    else
      nil
    end 
  end


end

















































#
#   attr_accessor :name, :artist
#
#   def initialize(name)
#     @name = name
#   end
# end
