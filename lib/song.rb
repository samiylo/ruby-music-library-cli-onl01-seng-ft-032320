class Song 
  
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name 
    
    @@all << self
  end
  
  def save
    @@all << self
  end
  
  # Class Methods
  
  def self.all 
    @@all 
  end
  
  def self.destroy_all
    @@all.clear
  end
  
  def self.create(name)
    song = self.new(name) 
    song.save
    song
  end
  
end