class Review

  attr_accessor :customer, :restaurant, :content
  
  @@all = []

  def initialize(customer, restaurant, content)
    @customer = customer
    @restaurant = restaurant
    @content = content
    @@all << self
  end

  def self.all
    @@all
  end

  def restaurant
    @restaurant
  end

  def customer
    @customer
  end

end



