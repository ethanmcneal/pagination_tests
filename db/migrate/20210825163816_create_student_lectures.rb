class CreateStudentLectures < ActiveRecord::Migration[6.1]
  def change
    create_table :student_lectures do |t|
      t.belongs_to :student, null: false, foreign_key: true
      t.belongs_to :lecture, null: false, foreign_key: true

      t.timestamps
    end
  end
end
