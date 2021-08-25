class Lecture < ApplicationRecord
    has_many :students, through: :student_lectures
end
