class Meal
  
  attr_accessor :waiter, :customer, :total, :tip
  
  def initialize(waiter, customer, total, tip)
    @waiter = waiter
    @customer = customer
    @total = total
    @tip = tip
    Meal.all << self
  end
  
  def self.all
    @@all = []
  end
  
end
























# class Meal
  
#   attr_accessor :waiter, :customer, :tip
  
#   @@all = []
  
#   def initialize(waiter, customer, total, tip)
#     @waiter = waiter
#     @customer = customer
#     @tip = tip
#     self.class.all << self
#   end
  
#   def self.all
#     @@all
#   end
  
# end

# # class Meal

# #   attr_accessor :waiter, :customer, :total, :tip
  
# #   @@all = []
  
# #   def initialize(waiter, customer, total, tip=0)
# #     @waiter = waiter
# #     @customer = customer
# #     @total = total
# #     @tip = tip
# #     @@all << self
# #   end
  
# #   def self.all
# #     @@all
# #   end
# # end