class BankDetailsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_bank_detail


  def new
    @bankdetail = BankDetail.new 
  end

  def create
    @bankdetail = BankDetail.new(bank_details_params)
    @bankdetail.user_id = current_user.id
      if @bankdetail.save
        flash[:success] = "Merci d'avoir renseigné vos informations bancaires."
        redirect_to :controller => 'projects', :action => 'index'
      else
        flash[:danger] = "Erreur(s) à rectifier pour valider vos informations bancaires : #{@bankdetail.errors.full_messages.each {|message| message}.join('')}"
        render :action => 'new'
      end
  end

  def edit
  end

  def update
    if @bankdetail.update(bank_details_params)
      flash[:success] = "Merci ! Nous avons bien pris en compte vos nouvelles informations bancaires"
      redirect_to :controller => 'projects', :action => 'index'
    else
      flash[:danger] = "Erreur(s) à rectifier pour valider vos nouvelles informations bancaires : #{@bankdetail.errors.full_messages.each {|message| message}.join('')}"
      render :action => 'edit'
    end
  end

  private

  def bank_details_params
    params.require(:bank_detail).permit(:bank_name, :iban, :pitch, :branch_code, :bank_code, :account_number, :key)
  end

  def set_bank_detail
    @bankdetail = BankDetail.find(params[:id])
  end
end
