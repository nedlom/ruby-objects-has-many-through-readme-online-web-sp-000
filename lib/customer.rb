class Customer
  
  attr_accessor :name, :age
  
  def initialize(name, age)
    @name = name
    @age = age
  end
  
  def self.all
    @@all = []
  end
  
  def new_meal
    
  end
  
  def meal
  end
  
  def waiters
  end
  
end























# class Customer
  
#   @@all = []
  
#   def initialize(name, age)
#     self.class.all << self
#   end
  
#   def self.all
#     @@all
#   end
  
#   def new_meal(waiter, total, tip)
#     Meal.new(waiter, self, total, tip)
#   end
  
#   def meals
#     Meal.all.select {|m| m.customer == self}
#   end
  
#   def waiters
#     meals.collect {|m| m.waiter}
#   end
# end

# # class Customer
# #   attr_accessor :name, :age
  
# #   @@all = []
  
# #   def initialize(name, age)
# #     @name = name
# #     @age = age
# #     @@all << self
# #   end
  
# #   def self.all
# #     @@all
# #   end
  
# #   def new_meal(waiter, total, tip=0)
# #     Meal.new(waiter, self, total, tip)
# #   end
  
# #   def meals
# #     Meal.all.select do |meal|
# #       meal.customer == self
# #     end
# #   end

# #   def waiters
# #     meals.map do |meal|
# #       meal.waiter
# #     end
# #   end
  
# # end