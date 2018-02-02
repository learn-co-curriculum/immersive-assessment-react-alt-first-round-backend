class Student < ApplicationRecord
  belongs_to :course

  def user
  	return self.course.user
  end
  
end
