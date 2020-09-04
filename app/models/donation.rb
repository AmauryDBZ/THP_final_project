class Donation < ApplicationRecord
  belongs_to :project
  validates :amount, presence: true
  validates :stripe_email, presence: true

end
