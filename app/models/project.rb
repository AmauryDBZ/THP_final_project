class Project < ApplicationRecord
  after_create :admin_new_project
  before_update :project_validated
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

  # The cover picture is displayed on the cards and as a cover on the project page (project/show).
  has_one_attached :cover, dependent: :destroy
  validates :cover,
    content_type: [:png, :jpg, :jpeg],
    size: { less_than: 2.megabytes, message: "le fichier est trop lourd : 2Mo maximum." },
    aspect_ratio: :landscape

  def admin_new_project
    ProjectMailer.admin_new_project(self).deliver_now
  end

  def project_validated
    if self.validated_changed?
      if self.validated == true
        ProjectMailer.project_validated(self).deliver_now
      elsif self.validated == false
        ProjectMailer.project_refused(self).deliver_now
      end
    end
  end
end
