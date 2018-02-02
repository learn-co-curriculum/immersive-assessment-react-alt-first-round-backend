class UserSerializer < ActiveModel::Serializer
   attributes :id

  # def courses
  # 	    object.courses.map{|course| CourseSerializer.new(course)}
  # end
end
