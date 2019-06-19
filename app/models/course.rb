class Course < ApplicationRecord
  has_many :students, dependent: :delete_all
  belongs_to :user, optional: true
end
