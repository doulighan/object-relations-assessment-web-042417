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