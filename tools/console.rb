require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

a = Customer.new("a", "a")
b = Customer.new("a", "b")
c = Customer.new("c", "b")

r = Restaurant.new("r")
s = Restaurant.new("g")
t = Restaurant.new("l")

a.add_review(r, "contents")
a.add_review(s, "cjda")

c.add_review(r, "sjfksss")


Pry.start
