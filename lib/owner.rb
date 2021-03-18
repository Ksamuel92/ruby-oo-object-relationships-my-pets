class Owner
  # code goes here
  
  attr_reader :name, :species
  
  @@all = []
  @@cats = []
  @@dogs = []
  def initialize (name)
    @name = name
    @species = "human"
    @@all << self
  end
#class methods
  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all.clear
  end

  


  #instance methods
  def say_species
    "I am a #{@species}."
  end
  def buy_cat(name_of_instance)
  Cat.new(name_of_instance, self)
  end

  def buy_dog(name_of_instance)
   Dog.new(name_of_instance, self)
  end

  def cats 
    Cat.all.select{|cat| cat.owner == self}
  end

  def dogs
    Dog.all.select{|dog| dog.owner == self}
  end

  def walk_dogs
    Dog.all.map {|dog| dog.mood = "happy"}
  end

  def feed_cats
    Cat.all.map {|cat| cat.mood = "happy"}
  end

  def sell_pets
    pets = self.dogs + self.cats

    pets.each do |pet|
      pet.mood = "nervous"
      pet.owner = nil
    end

    def list_pets
      "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
    end

end
end