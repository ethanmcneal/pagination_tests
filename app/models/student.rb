class Student < ApplicationRecord
    has_many :lectures, through: :student_lectures
end
