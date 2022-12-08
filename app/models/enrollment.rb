class Enrollment < ApplicationRecord
    has_many :students,
        primary_key: :id,
        foreign_key: :student_id,
        class_name: :User
   
    has_many :classes,
        primary_key: :id,
        foreign_key: :course_id,
        class_name: :Course
end