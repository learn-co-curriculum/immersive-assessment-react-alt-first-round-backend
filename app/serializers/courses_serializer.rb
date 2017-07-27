class CoursesSerializer < ActiveModel::Serializer
  attributes :id, :name, :instructor, :semester
end
