# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

tasks = [{title: "Learn Backbone!", description: "Backbone is a cool JavaScript library.", completed: false}, {title: "Study Ruby on Rails", description: "Rails is a great way to learn to develop web APIs.", completed: true}, {title: "Buy more Dr. Pepper", description: "Nectar of the Gods", completed: false}]


tasks.each do |task|
  Task.create(task)
end
