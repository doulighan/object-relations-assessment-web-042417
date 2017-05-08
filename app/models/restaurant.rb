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

