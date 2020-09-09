class Admin::DonationsController < ApplicationController
  include AdminHelper
  
  before_action :check_if_admin

  def index
    @donations = Donation.all.order(created_at: :desc)
  end

  def edit
    @donation = Donation.friendly.find_by_slug(params[:id])
  end

  def update
    @donation = Donation.friendly.find_by_slug(params[:id])
    if params[:transfered] == nil
      @donation.update(transfered: true)
    end
    redirect_to admin_donations_path
  end

end
