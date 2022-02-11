require 'faker'

Dogsitter.destroy_all
Dog.destroy_all
Stroll.destroy_all
City.destroy_all

10.times do
  city = City.create!(
    c_name: Faker::Address.city
    )
end

10.times do
  dogsitter = Dogsitter.create!(
    ds_name: Faker::Name.first_name,
    city_id: City.all.sample.id
    )
end

10.times do
  dog = Dog.create!(
    d_name: Faker::Creature::Dog.name,
    city_id: City.all.sample.id
    )
end

10.times do
  stroll = Stroll.create!(
    date: Faker::Date.forward(days: 100),
    city_id: City.all.sample.id,
    dog_id: Dog.all.sample.id,
    dogsitter_id: Dogsitter.all.sample.id
    )
end
