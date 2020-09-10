module BankDetailsHelper

  def cannot_edit_others_bank_details
    @bankdetail = BankDetail.find(params[:id])
    if current_user
      if current_user != @bankdetail.user && !current_user.is_admin
        redirection()
      end
    else
      redirection()
    end  
  end

  def redirection
    flash[:danger] = "Vous ne pouvez pas accéder à cette page"
    redirect_to root_path
  end
end
