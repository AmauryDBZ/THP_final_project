class ChargesController < ApplicationController
  include ChargesHelper
  before_action :it_is_validated?, only: [:new, :create]
  before_action :set_project

  def index
  end


  def new
    @amount = params[:amount]
    respond_to do |format|
      format.html {}
      format.js {}
    end
  end

  def create
    @amount = params[:amount]
    @amount = @amount.to_i * 100
    customer = Stripe::Customer.create({
      email: params[:stripeEmail],
      source: params[:stripeToken],
    })

    charge = Stripe::Charge.create({
      customer: customer.id,
      amount: @amount,
      description: 'Rails Stripe customer',
      currency: 'eur',
    })
    @project.update(money_earned: @project.money_earned += (@amount/100))
    @donation = Donation.new(
      project_id: @project.id,
      stripe_customer_id: customer.id,
      stripe_email: params[:stripeEmail],
      amount: (@amount/100)
    )
    if @donation.save
      flash[:success] = "Merci pour votre don !"
      redirect_to project_path(@project)
    else
      flash[:danger] = "Erreur(s) à rectifier pour valider votre don : #{@donation.errors.full_messages.each {|message| message}.join('')}"
      render :action => 'new'
    end


    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to project_charges_path
  end

  private

  def set_project
    @project = Project.friendly.find_by_slug(params[:project_id])
  end

end
