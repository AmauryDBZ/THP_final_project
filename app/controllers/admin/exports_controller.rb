class Admin::ExportsController < ApplicationController

  def new
    @users = User.all
    @donations = Donation.all
    table = params[:table]
    respond_to do |format|
      format.html {
        redirect_to admin_users_fr_path
      }
      format.csv {
        if table == "donation"
          send_data @donations.to_csv(table), filename: "#{table}-#{Date.today}.csv"
        elsif table == "user"
          send_data @users.to_csv(table), filename: "#{table}-#{Date.today}.csv"
        else
          flash[:danger] = "une erreur est survenue lors de l'export du fichier .csv"
        end
      }
    end
  end

end
