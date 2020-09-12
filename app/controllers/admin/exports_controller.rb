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
        puts 'export controller csv'
        if table == "donation"
          send_data @donations.to_csv(table), filename: "#{table}-#{Date.today}.csv"
        elsif table == "user"
          send_data @users.to_csv(table), filename: "#{table}-#{Date.today}.csv"
        else
          flash[:warning] = "an error occur during the export process"
        end
      }
    end
  end

end
