# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Animal.destroy_all
# Comment.destroy_all

animals = [
    {category: "test 1" ,description: "have a description", location:"Ryiadh", adapted: true, user_id:1 },
    {category: "test 1" ,description: "have another description", location:"Dammam", adapted: true, user_id:2 }
]

animals.each do |animal|
   a = Animal.create(animal)
   Comment.create({body:"this is a test comment", user_id: 1, animal_id: a.id  })
end 


