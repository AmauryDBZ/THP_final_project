class BankDetailsController < ApplicationController
  include BankDetailsHelper
  before_action :cannot_edit_others_bank_details, only: [:show, :edit]
  before_action :authenticate_user!

  def show
    @bankdetails = BankDetail.where(user_id: params[:user_id]).last.id
    @current_user_has_bankdetail = BankDetail.find_by(user_id: current_user.id)
  end


  def new
    @bankdetail = BankDetail.new 
  end

  def create
    @bankdetail = BankDetail.new(bank_details_params)
    @bankdetail.user_id = current_user.id
      if @bankdetail.save
        flash[:success] = "Merci d'avoir renseigné vos informations bancaires."
        redirect_to user_fr_path(@bankdetail.user_id)
      else
        flash[:danger] = "Erreur(s) à rectifier pour valider vos informations bancaires : #{@bankdetail.errors.full_messages.each {|message| message}.join('')}"
        render :action => 'new'
      end
  end

  def edit
  end

  def update
    @bankdetail = BankDetail.find(params[:id])
    if @bankdetail.update(bank_details_params)
      flash[:success] = "Merci ! Nous avons bien pris en compte vos nouvelles informations bancaires"
      redirect_to user_fr_path(@bankdetail.user_id)
    else
      flash[:danger] = "Erreur(s) à rectifier pour valider vos nouvelles informations bancaires : #{@bankdetail.errors.full_messages.each {|message| message}.join('')}"
      render :action => 'edit'
    end
  end

  private

  def bank_details_params
    params.require(:bank_detail).permit(:bank_name, :iban, :pitch, :branch_code, :bank_code, :account_number, :key)
  end
end
