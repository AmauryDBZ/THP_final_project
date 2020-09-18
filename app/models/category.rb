class Category < ApplicationRecord

  extend FriendlyId
  friendly_id :name, use: :slugged

  include SlugUpdate

  has_many :project_categories
  has_many :projects, through: :project_categories
  
  validates :name, presence: true, uniqueness: true
end
