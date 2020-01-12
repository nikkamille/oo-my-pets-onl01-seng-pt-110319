class Dog
  
  attr_accessor :owner
  attr_reader :name, :mood
  @@dogs = []
  
  def mood=(mood)
    @mood = mood
  end
  
  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    @@dogs << self
  end
  
  def self.all
    @@dogs
  end
  
  def self.count
    @@dogs.count
  end
  
end