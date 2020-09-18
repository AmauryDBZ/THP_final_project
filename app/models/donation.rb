class Donation < ApplicationRecord
  require 'csv'

  after_create :donation_confirm
  after_update :donation_transfer_update

  belongs_to :project
  validates :amount, presence: true
  validates :stripe_email, presence: true

  def donation_confirm
    DonationMailer.donation_confirm(self).deliver_now
    DonationMailer.donation_notification(self).deliver_now
  end

  def donation_transfer_update
    DonationMailer.donation_transfer(self).deliver_now
  end

  def self.to_csv(table_name)
    CSV.generate(headers: true) do |f|
      f << all.first.attributes.map { |a, v| a }
      all.each do |t|
        f << t.attributes.map { |a, v| v }
      end
    end
  end
end
