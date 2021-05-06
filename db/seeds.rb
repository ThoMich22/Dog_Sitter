# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'

City.create!(city_name: "Lyon")
City.create!(city_name: "Paris")
City.create!(city_name: "Marseille")
City.create(city_name: "Bordeaux")
City.create(city_name: "Lille")
cities_list = City.all

20.times do
  dogsitter = Dogsitter.create!(name: Faker::Name.first_name, city: cities_list.sample)
end

20.times do
  dog = Dog.create!(name: Faker::Creature::Dog.name, city: cities_list.sample)
end


20.times do
  dogsitters_list = Dogsitter.all
  dogs_list = Dog.all
  cities_list = City.all
  
  stroll = Stroll.create!(date: Faker::Date.between(from: '2021-04-23', to: '2021-11-25'), dogsitter: dogsitters_list.sample, dog: dogs_list.sample, city: cities_list.sample)
end
