class Admin::ExportsController < ApplicationController
  include Admin::ExportsHelper

  def new
    csv_user('users_GOS')
    respond_to do |format|
      format.html {
        redirect_to admin_users_fr_path
      }
      format.js { }
    end
  end

end
