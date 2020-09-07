class ChargesController < ApplicationController
  def new
    @project = Project.friendly.find_by_slug(params[:project_id])
  end

  def create
    @project = Project.friendly.find_by_slug(params[:project_id])
    @amount = 500
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
      redirect_to root_path
    else
      flash[:danger] = "Erreur(s) à rectifier pour valider votre don : #{@donation.errors.full_messages.each {|message| message}.join('')}"
      render :action => 'new'
    end
    

    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to new_charge_path
  end
    
end
