class Subject < ApplicationRecord
  has_many :course_subjects, dependent: :destroy
  has_many :courses, through: :course_subjects
  has_many :user_subjects, dependent: :destroy
  has_many :tasks, dependent: :destroy
  scope :newest, ->{order created_at: :desc}
  validates :name, presence: true,
    length: {maximum: Settings.app.models.subject.name_max_length}
  validates :description, presence: true,
    length: {maximum: Settings.app.models.subject.description_max_length}
end
