class ChargesController < ApplicationController
  def new
    @project = Project.friendly.find_by_slug(params[:slug])
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
    flash[:success] = "Merci pour votre don !"
    redirect_to root_path
    

    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to new_charge_path
  end
    
end
