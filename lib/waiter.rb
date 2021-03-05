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
    meal = meals.max {|m| m.tip}
    binding.pry
  end
  
end






















# require 'pry'
# class Waiter
  
#   @@all = []
  
#   def initialize(name, yrs_exp)
#     self.class.all << self
#   end
  
#   def self.all
#     @@all
#   end
  
#   def new_meal(customer, total, tip)
#     Meal.new(self, customer, total, tip)
#   end
  
#   def meals
#     Meal.all.select {|m| m.waiter == self}
#   end
  
#   def best_tipper
#     meals.sort {|a, b| a.tip <=> b.tip}.last.customer
#   end
# end

# # class Waiter
  
# #   attr_accessor :name, :yrs_experience
  
# #   @@all = []
  
# #   def initialize(name, yrs_experience)
# #     @name = name
# #     @yrs_experience = yrs_experience
# #     @@all << self
# #   end
  
# #   def self.all
# #     @@all
# #   end
  
# #   def new_meal(customer, total, tip=0)
# #     Meal.new(self, customer, total, tip)
# #   end
  
# #   def meals
# #     Meal.all.select do |meal|
# #       meal.waiter == self
# #     end
# #   end
  
# #   def best_tipper
# #     best_tipped_meal = meals.max do |meal_a, meal_b|
# #       meal_a.tip <=> meal_b.tip
# #     end
# #     best_tipped_meal.customer
# #   end
# # end