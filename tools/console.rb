require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
zayd = Customer.new('Zayd', 'Alawi')
amr = Customer.new('Amr', 'Alawi')
sabri = Restaurant.new('Sabri Nehari')
kabob = Restaurant.new('Kabob House')
zayd.add_review(sabri, 5, 'wonderful spot')
zayd.add_review(kabob, 4, 'this restaurant is good for the most part')
amr.add_review(sabri, 3, 'this place is alright')
amr.add_review(kabob, 3, 'meh')

binding.pry
0 #leave this here to ensure binding.pry isn't the last line