class Waiter
  @@all = []
  attr_accessor :name, :years_of_experience 
  
  def initialize(name, years_of_experience)
    @name = name 
    @years_of_experience = years_of_experience 
  end
  
  def self.all 
    @@all 
  end
end