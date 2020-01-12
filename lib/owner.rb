class Owner
  
  attr_reader :name, :species
  @@owners = []
  
  def initialize
    @species = human
    @@owners << self
  end
  
  def say_species
    puts "I am a #{species}."
  end  
  
  def self.all 
    @@owners
  end
  
  def self.count
    @@owners.count
  end
  
  
end