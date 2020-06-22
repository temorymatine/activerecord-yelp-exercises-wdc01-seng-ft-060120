# require 'faker'
require 'pry'

# Dish.destroy_all
# Restaurant.destroy_all
# Tags.destroy_all
# Dishtag.destroy_all




# array_of_names = []
# 20.times.each do 
#    array_of_names << Faker::Restaurant.name     
# end

# array_of_names.each do |restaurant|
#     r = Restaurant.create(name: restaurant)
#     r.each do |restaurant_name|
#         restaurant_name
# end

20.times do
Restaurant.create(name: Faker::Restaurant.unique.name)
end

Restaurant.all.each do |restaurant|
    10.times do
        Dish.create(name: Faker::Food.dish, restaurant_id: restaurant.id)
    end
end

spicy = Tag.create(name: "Spicy")
Tag.create(name: "Mild")
Tag.create(name: "Superhot")
Tag.create(name: "Cold")
Tag.create(name: "Salty")
Tag.create(name: "Plain")
Tag.create(name: "Spanish")
Tag.create(name: "Sugary")
Tag.create(name: "Spicy Hot")
Tag.create(name: "Extra Hot")
Tag.create(name: "Not Spicy")



#binding.pry