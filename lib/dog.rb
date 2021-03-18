class Dog
  # code goes here
  attr_accessor :mood, :owner
  attr_reader :name
  @@all = []

  def initialize (name, owner_object)
    @name = name
    @owner = owner_object
    @mood = "nervous"
    @@all << self
  end
#Class methods
def self.all
  @@all
end

def self.clear_owner
  self.delete(@owner)
end
end