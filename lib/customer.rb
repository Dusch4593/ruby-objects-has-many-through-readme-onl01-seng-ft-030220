class Customer
  @@all = []
  attr_accessor :name, :age 
  
  def initialize(name, age) 
    @name = name 
    @age = age 
    @@all << self
  end
  
  def self.all 
    @@all 
  end
  
  def new_meal(waiter, total, tip)
    meal = Meal.new(waiter, self, total, tip)
    meal
  end
  
  def meals 
    Meal.all.select{|meal|
      meal.customer == self
    }
  end
  
  def waiters 
    Waiter.all.select{|waiter|
      waiter.customer
  end
end