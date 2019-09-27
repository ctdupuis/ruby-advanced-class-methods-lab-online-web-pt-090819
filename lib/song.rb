require 'pry'

class Song
  attr_accessor :name, :artist_name
  @@all = []
 

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    song = self.new
    @@all << song
    song
  end
  
  def self.new_by_name(name)
    song = self.new 
    song.name = name
    song
  end
  
  def self.create_by_name(name)
    song = self.new
    song.name = name
    @@all << song
    song
  end
  
  def self.find_by_name(name)
    @@all.each.find{|track| track.name == name}
  end
  
  def self.find_or_create_by_name(track)
    if self.find_by_name(track)
      self.find_by_name(track)
    else
      self.create_by_name(track)
    end
  end
  
  def self.alphabetical
   @@all.sort_by{|track| track.name}
  end
  
  def self.new_from_filename(mp3)
    array = mp3.split(" - ")
    binding.pry
  end
end
