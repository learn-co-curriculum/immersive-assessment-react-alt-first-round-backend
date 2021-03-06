# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)

puts "seeding"
course_list = [
  {
    name: "Knitting Hats for Cats",
    instructor: "Tim Campbell",
    semester: "Winter 2017"
  }, {
    name: "Having a good time",
    instructor: "Charles Entertainment Cheese",
    semester: "Summer 2017"
  }, {
    name: "Golf 102",
    instructor: "Jeff Hwang",
    semester: "Fall 2017"
  }, {
    name: "Getting Gainz",
    instructor: "Evans Wang",
    semester: "Winter 2017"
  }, {
    name: "The art of bread baking",
    instructor: "Ian Hollander",
    semester: "Fall 2017"
  }, {
    name: "Wilderness Survival",
    instructor: "Alex Griffith",
    semester: "Spring 2017"
  }
]

begin

  course_list.each{|course| Course.create(course)}

  100.times do |i|
    Student.create(name: Faker::Name.name,class_year: [9, 10, 11, 12].sample, percentage: (70..100).to_a.sample,course_id: (1..6).to_a.sample )
  end
end
