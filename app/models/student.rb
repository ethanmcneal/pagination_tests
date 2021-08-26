class Student < ApplicationRecord
    has_many :lectures, through: :student_lectures
    def self.filter(filter)
        if filter == 'age_desc'
        self.order(age: :desc)
        elsif filter == 'age_asc'
        self.order(age: :asc)
        else
        self.order(id: :asc)
        end
    end
end
