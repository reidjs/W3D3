class User < ApplicationRecord
  has_many :enrollments,
  class_name: :Enrollment,
  primary_key: :id,
  foreign_key: :student_id

  has_many :enrolled_courses,
  # class_name: :Course,
  # primary_key: :id,
  # foreign_key: :course_id,
  through: :enrollments,
  source: :course
end
