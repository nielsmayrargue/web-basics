$albums = []

class Album
  
  attr_reader :name, :artist, :year, :list
  
  def self.list
    if $albums.empty? 
      "There are no albums yet"
    else  
      @list = []
      $albums.each do |album|
        list << album
      end
      @list.join(" ")
    end
  end

  def initialize(args = {})
    @name = args[:name]
    @artist = args[:artist]
    @year = args[:year]
  end
  
  def save
    $albums << self
  end
  
  def self.find(id)
    $albums[id]
  end
  
  def update(args = {})
    @name = args[:name]
    @artist = args[:artist]
    @year = args[:year]
    
  end
  
  def self.delete(index)
    $albums.delete_at(index)
  end

  def to_s
    "#{@name} (#{@year}) by #{@artist}\n"
  end
    
end
