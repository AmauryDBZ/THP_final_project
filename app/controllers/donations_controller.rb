class DonationsController < ApplicationController
  def update
    @donation = Donation.find(params[:id])
    if params[:transfered] == nil
      @donation.update(transfered: true)
    end
    redirect_to admin_donations_path
  end
end
