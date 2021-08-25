# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


50.times do |i|
    Student.create(name: "student #{i}", age:rand(20..50))

end

10.times do |i|
    Lecture.create(topic: "Lecture #{i}", teacher:"student #{i}")
end


30.times do |i|
    StudentLecture.create(student_id:rand(1..50), lecture_id:rand(1..10))
end

puts "#{Student.length()} + #{Lecture.length()} + #{StudentLecture.length()}"