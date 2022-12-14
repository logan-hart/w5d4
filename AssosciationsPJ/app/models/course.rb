# == Schema Information
#
# Table name: courses
#
#  id            :bigint           not null, primary key
#  name          :string           not null
#  prereq_id     :bigint
#  instructor_id :bigint           not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
class Course < ApplicationRecord
    has_many :enrollments,
        primary_key: :id,
        foreign_key: :course_id,
        class_name: :Course

    has_many :enrolled_students,
        through: :enrollments,
        source: :users

    belongs_to :instructor,
        primary_key: :id,
        foreign_key: :instructor_id,
        class_name: :User
    
    has_one :prereq,
        # through: :prereq_id,
        # source: :Course
        primary_key: :prereq_id, optional: true,
        foreign_key: :id,
        class_name: :Course
end

