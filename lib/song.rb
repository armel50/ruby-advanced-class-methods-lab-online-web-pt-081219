class Song
  attr_accessor :name, :artist_name
  @@all = []
  
  def initialize(name = nil)
    @name = name
  end
  
  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def self.create  
    new_song = self.new
    new_song.save
    new_song
  end
  
  def self.new_by_name(name)
    new_song = self.new(name)
    new_song.save
    new_song
  end
  
  def self.create_by_name(name) 
    self.new_by_name(name)
  end
  
  def self.find_by_name(name)
    self.all.find{|el|  el if name == el.name}
  end
  
  def self.find_or_create_by_name(name)
    result = find_by_name(name)
    result == nil ? self.create_by_name(name) : result
  end
  
  def self.alphabetical
    self.all.sort_by{|song| song.name}
  end
  
  def self.new_from_filename(file_name)
    seperate = file_name.split("-")
    artist_name = seperate[0]
    second_seperation = seperate[1].split(".")
    song_name = second_seperation[0]
    
    p song_name
    p artist_name
    
    
    
    
    
  end
  
end
