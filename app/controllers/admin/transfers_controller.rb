class Admin::TransfersController < ApplicationController
  def new
    @donations = Donation.all
    @donations.each do |donation|
      if donation.transfered == nil
        donation.update(transfered: true)
      end
    end
    redirect_to admin_donations_path
  end
end
