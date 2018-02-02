class UserSerializer < ActiveModel::Serializer
   attributes :id, :courses

  def courses
  	    object.courses.map{|course| CourseSerializer.new(course)}
  end
end
