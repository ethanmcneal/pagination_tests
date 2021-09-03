class StudentLecture < ApplicationRecord
  belongs_to :student
  belongs_to :lecture, dependent: :destroy
  
end
