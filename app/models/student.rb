class Student < ApplicationRecord
    has_many :lectures, through: :student_lectures
    # def SetFilter(filter)
        scope :age_ascending, -> {order(age: :desc)}
    # end
    # scope :age_ascending, -> {order(age: :asc)}
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
