class Donation < ApplicationRecord
  after_create :donation_confirm

  belongs_to :project
  validates :amount, presence: true
  validates :stripe_email, presence: true

  def donation_confirm
    DonationMailer.donation_confirm(self).deliver_now
    DonationMailer.donation_notification(self).deliver_now
  end

end
