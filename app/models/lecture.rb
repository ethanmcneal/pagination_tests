class Lecture < ApplicationRecord
    has_many :students, through: :student_lectures
    has_many :student_lectures, dependent: :destroy

    def self.filter(filter)
        if filter == 'topic_desc'
        self.order(topic: :desc)
        elsif filter == 'topic_asc'
        self.order(topic: :asc)
        else
        self.order(id: :asc)
        end
    end
end
