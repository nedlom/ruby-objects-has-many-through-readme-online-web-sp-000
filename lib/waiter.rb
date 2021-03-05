class Waiter
  
  @@all = []
  
  attr_accessor :name, :years
  
  def initialize(name, years)
    @name =  name 
    @years = years
    Waiter.all << self
  end
  
  def self.all
    @@all 
  end
  
  def new_meal(customer, total, tip)
    Meal.new(self, customer, total, tip)
  end
  
  def meals
    Meal.all.select {|m| m.waiter == self}
  end
  
  def best_tipper
    meals.max_by {|m| m.tip}.customer
  end
  
end