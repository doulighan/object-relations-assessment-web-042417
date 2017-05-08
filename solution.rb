require 'pry'

class Customer
  attr_accessor :first_name, :last_name, :reviews

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @reviews = []
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all 
    @@all
  end

  def self.find_by_name(name)
    self.all.detect { |c| c.full_name == name }
  end

  def self.find_all_by_first_name(name) 
    self.all.select { |c| c.first_name == name }
  end

  def self.all_names
    self.all.map {|c| c.full_name}
  end

  def add_review(restaurant, content)
    review = Review.new(self, restaurant, content)
    restaurant.reviews << review
    @reviews << review
  end
end









class Restaurant
  attr_accessor :name, :reviews

    @@all = []

  def initialize(name)
    @name = name
    @reviews = []
    @@all << self
  end

  def self.all 
    @@all
  end

  def self.find_by_name(name)
    self.all.detect { |r| r.name == name }
  end

  def reviews
    @reviews
  end

  def customers
    self.reviews.map { |r| r.customer }
  end

end










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


