class AdminController < ApplicationController
  before_action :check_if_admin

  def index
    
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
