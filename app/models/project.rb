class Project < ApplicationRecord
  has_many :project_categories
  has_many :categories, through: :project_categories
  belongs_to :user
  validates :name, presence: true
  validates :pitch, presence: true, length: { maximum: 140 }
  validates :functionalities, presence: true
  validates :value_of_project, presence: true
  validates :number_of_developers_on_project, presence: true
  validates :daily_time_spent_on_project_per_developer, presence: true
end
