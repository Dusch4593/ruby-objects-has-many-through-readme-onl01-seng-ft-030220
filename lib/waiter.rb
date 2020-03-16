require 'pry'
class Waiter
  @@all = []
  attr_accessor :name, :years_of_experience 
  
  def initialize(name, years_of_experience)
    @name = name 
    @years_of_experience = years_of_experience 
    @@all << self
  end
  
  def self.all 
    @@all 
  end
  
  def new_meal(customer, total, tip)
    meal = Meal.new(self, customer, total, tip)
  end
  
  def meals 
    Meal.all.select{|meal|
      meal.waiter == self 
    }
  end
  
  def best_tipper 
    binding.pry
  end
end