class User < ApplicationRecord
	has_many :courses, dependent: :destroy
	has_many :students, through: :courses
end
