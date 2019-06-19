


class Generator

	def self.generate_users(num_students)

    begin
      newly_created_users = []

			num_students.times do
				new_user = User.create()

        newly_created_users << new_user

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
				    name: "Rock Climbing",
				    instructor: "Avi Flombaum",
				    semester: "Spring 2017"
				  }, {
				    name: "History of Ireland",
				    instructor: "Johann Kerr",
				    semester: "Fall 2017"
				  }, {
				    name: "Getting Gainz",
				    instructor: "Evans Wang",
				    semester: "Winter 2017"
				  }, {
				    name: "Music Theor",
				    instructor: "Niky Morgan",
				    semester: "Fall 2017"
				  }, {
				    name: "Wilderness Survival",
				    instructor: "Alex Griffith",
				    semester: "Spring 2017"
				  }
				]


				courses = course_list.sample(4).map{|course|
					Course.create(name: course[:name],
								  instructor: course[:instructor],
								  semester: course[:semester],
								  user: new_user)
				}

				100.times do |i|
				    Student.create(
				    name: Faker::Name.name,
				    class_year: [9, 10, 11, 12].sample,
				    percentage: (70..100).to_a.sample,
				    course: courses.sample
				    )
				 end
			end

			return newly_created_users
    rescue
      return false
    end

	end

end
