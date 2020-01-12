class Owner
  
  attr_reader :name, :species
  @@owners = []
  
  def initialize(name)
    @name = name
    @species = "human"
    @@owners << self
  end
  
  def say_species
    "I am a human."
  end  
  
  def self.all 
    @@owners
  end
  
  def self.count
    @@owners.count
  end
  
  def self.reset_all
    @@owners.clear
  end
  
  def cats
    Cat.all.select{|cat| cat.owner == self}
  end
  
  def dogs
    Dog.all.select{|dog| dog.owner == self}
  end
  
  def buy_cat(name)
    Cat.new(name, self)
  end
  
  def buy_dog(name)
    Dog.new(name, self)
  end
  
  def walk_dogs
    self.
  end
  
  def feed_cats
    Cat.mood = "happy"
  end
  
  def sell_pets
    Cat.mood = "nervous"
    Dog.mood = "nervous"
    self.reset_all
  end

  
end