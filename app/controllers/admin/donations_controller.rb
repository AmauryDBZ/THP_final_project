class Admin::DonationsController < ApplicationController
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

  private


  def check_if_admin
    if current_user == nil
      flash[:danger] = "Vous devez vous connecter à un compte administrateur pour accéder à cette page"
      redirect_to new_user_session_path
    elsif current_user.is_admin == false || current_user.is_admin == nil
      flash[:danger] = "Seul un administrateur peut accéder à cette page"
      redirect_to projects_path
    end
  end
end
