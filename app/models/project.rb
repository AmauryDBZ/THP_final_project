class Project < ApplicationRecord
  after_create :admin_new_project
  after_update :project_validated
  extend FriendlyId
  friendly_id :name, use: :slugged

  include SlugUpdate

  has_many :project_categories
  has_many :categories, through: :project_categories

  belongs_to :user

  validates :name, presence: true, uniqueness: true
  validates :pitch, presence: true, length: { maximum: 400 }
  validates :functionalities, presence: true
  validates :value_of_project, presence: true
  validates :number_of_developers_on_project, presence: true
  validates :daily_time_spent_on_project_per_developer, presence: true

  has_one_attached :cover, dependent: :destroy

  def admin_new_project
    ProjectMailer.admin_new_project(self).deliver_now
  end

  def project_validated
    puts self.validated_changed?
    if self.validated_changed?
      ProjectMailer.project_validated(self).deliver_now
    end
  end
end
